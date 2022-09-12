app.controller("AttendanceUploadController",
    function($rootScope, $scope, $http, $location, $timeout, BaseApiUrlService, TokenService, Flash, FileServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        var sessionId = null;
        $scope.file= null;
        $scope.files= [];
        $scope.attnFileUploadTab="stepOne";
        $scope.isAttendanceStepOneShow = true;
        $scope.isAttendanceStepTwoShow = false;
        $scope.fileList=[];

        function init(){
        }

        init();

        $scope.openAttendanceUploadTab = function (pageName) {
            $scope.attnFileUploadTab = pageName;

            if(pageName == "stepOne"){
                $scope.isAttendanceStepOneShow = true;
                $scope.isAttendanceStepTwoShow = false;
            }
            else if(pageName == "stepTwo"){
                $scope.isAttendanceStepOneShow = false;
                $scope.isAttendanceStepTwoShow = true;
            }
        }

        $scope.fileUpload = function(event){
            var files = event.target.files;
            $scope.fileList.splice(0,$scope.fileList.length)
            angular.forEach(files,function(file, index){
                $scope.file = file;
                $scope.files[index] = file;
                var fileDetails = {
                    fileName : file.name,
                    fileSize : file.size,
                    uploadedRowCount : '',
                    uploadStatus : 'Pending'
                }
                $scope.fileList.push(fileDetails);
            });
            $scope.SelectedFileGridDataSource.read();
        }

        $scope.saveFile = function (isValid) {
            var token =  TokenService.getAccessToken();
            if($scope.files.length > 0) {
                var config = {
                    headers: {'enctype': 'multipart/form-data', 'Content-Type': undefined},
                    transformResponse: angular.identity
                };

                var count = 0;
                angular.forEach($scope.files, function(file, key) {
                    var fd = new FormData();
                    fd.append('files',file);
                    fd.append('token', token);

                    $http.post("/fileupload/filelist", fd, config)
                        .then(function (success){
                            count = count + 1;
                            if($scope.files.length == count){
                                angular.element("#AttnFileUploadForm").get(0).reset();
                                $scope.fileList.push({});
                                $scope.SelectedFileGridDataSource.data([]);
                                $scope.UploadFileGridDataSource.read();
                            }
                        },
                        function (error){
                        });
                });
            }
            else{
                Flash.create('danger', "No file selected", 'custom-class');
            }
        };

        $scope.resetForm = function(){
            $scope.fileList.push({});
            $scope.SelectedFileGridDataSource.data([]);
            angular.element("#AttnFileUploadForm").get(0).reset();
        }

        $scope.SelectedFileGridDataSource =  new kendo.data.DataSource({
            data:$scope.fileList,
            pageSize: 20,
            schema: {
                model: {
                    fields: {
                        fileName: { type: "string" },
                        fileSize: { type: "number" }
                    }
                }
            }
        });

        $scope.SelectedFileOptions = {
            dataSource: $scope.SelectedFileGridDataSource,
            sortable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "fileName",
                    title: "File Name",
                    width: "150px"
                },
                {
                    field: "fileSize",
                    title: "File Size",
                    width: "100px"
                }
            ]
        };

        $scope.uploadAllInitialAttendanceFile = function(){
            FileServices.uploadAllInitialAttendanceFile(TokenService.getAccessToken()).then(function(resp){
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    $scope.UploadFileGridDataSource.read();
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            });
        }

        $scope.uploadAttendanceFile = function(pFileId){
            FileServices.uploadAttendanceFile(pFileId,TokenService.getAccessToken()).then(function(resp){
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    $scope.UploadFileGridDataSource.read();
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            });
        }

        $scope.savedAllPendingFile = function(){
            FileServices.savedAllPendingFile(TokenService.getAccessToken()).then(function(resp){
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    $scope.UploadFileGridDataSource.read();
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            });
        }

        $scope.uploadFileConfirmation = function(pFileId){
            FileServices.uploadFileConfirmation(pFileId,TokenService.getAccessToken()).then(function(resp){
                alert(JSON.stringify(resp));
                if(resp.isSuccess == true){
                    Flash.create('success', resp.data.successMessage, 'custom-class');
                    $scope.UploadFileGridDataSource.read();
                }else{
                    Flash.create('danger', resp.data.errorMessage, 'custom-class');
                }
            });
        }

        $scope.deleteUploadedFile = function(pFileId){
            FileServices.deleteAttendanceFile(pFileId,TokenService.getAccessToken()).then(function(resp){
                if(resp.isSuccess == true){
                    Flash.create('success', resp.successMessage, 'custom-class');
                    $scope.UploadFileGridDataSource.read();
                }else{
                    Flash.create('danger', resp.errorMessage, 'custom-class');
                }
            });
        }

        $scope.UploadFileGridDataSource =  new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'file/getAllUploadFiles?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                    type: "GET"
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        fileName: { type: "string" },
                        fileType: { type: "string" },
                        fileSize: { type: "number" },
                        uploadedStatus: { type: "string" }
                    }
                }
            }
        });

        $scope.UploadFileOptions = {
            dataSource: $scope.UploadFileGridDataSource,
            sortable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 2,
                messages: {
                    itemsPerPage: "",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "fileName",
                    title: "File Name",
                    width: "140px"
                },
                {
                    field: "fileType",
                    title: "File Type",
                    width: "90px"
                },
                {
                    field: "fileSize",
                    title: "File Size",
                    width: "90px"
                },
                {
                    field: "uploadedStatus",
                    title: "Status",
                    width: "90px"
                },
                {
                    field: "",
                    title: "Action",
                    width: "150px",
                    template: '<button class="btn inline-grid-btn btn-primary" ng-if=\'showUploadButton(dataItem.uploadedStatus)\' ng-click=\'uploadAttendanceFile(dataItem.id)\'>Upload</button>'+
                            '<button class="btn inline-grid-btn btn-danger" ng-if=\'showDeleteButton(dataItem.uploadedStatus)\' ng-click=\'deleteUploadedFile(dataItem.id)\'>Delete</button>'
                }
            ]
        };

        $scope.showUploadButton = function(uploadedStatus){
            if(uploadedStatus=="initial")
                return true;
            else
                return false;
        }

        $scope.showConfirmButton = function(uploadedStatus){
            if(uploadedStatus=="pending")
                return true;
            else
                return false;
        }

        $scope.showDeleteButton = function(uploadedStatus){
            if(uploadedStatus=="success")
                return false;
            else
                return true;
        }


    });