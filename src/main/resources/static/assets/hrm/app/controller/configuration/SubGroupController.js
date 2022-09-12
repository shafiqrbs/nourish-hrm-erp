app.controller("SubGroupController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,SubGroupService,GroupsService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'subGroup';
        $scope.subGroup = {};
        $scope.subGroup.isDefault = true;

        function init() {
            //Get all sub group for dropdown
            GroupsService.getAllGroups(TokenService.getAccessToken()).then(function(response){
                $scope.groups = response;
            });
        }

        init();

        $scope.saveForm = function(isValid,subGroup){
            if(isValid)
            {
                SubGroupService.save(subGroup,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.subGroup = {};
                        $scope.SubGroupGridDataSource.read();
                    }
                    else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.subGroup = {};
            $scope.SubGroupGridDataSource.read();
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            alert(id);
            SubGroupService.getSubGroupById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.subGroup = resp;
            });
        }

        $scope.SubGroupGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/findAllSubGroup?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 5,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        Id: { type: "number", editable: false },
                        subGroupName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanySubGroupOptions = {
            dataSource: $scope.SubGroupGridDataSource,
            sortable: true,
            scrollable: true,
            selectable:"row",
            change: $scope.editForm,
            pageable: {
                refresh: true,
                pageSizes: [5, 10, 20],
                buttonCount: 5,
                messages: {
                    itemsPerPage: "Records Show",
                    display: "{0} - {1} of {2} Records"
                }
            },
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "subGroupName",
                    title: "Sub Group Name",
                    width: "180px"
                },
                {
                    field: "subGroupCode",
                    title: "Sub Group Code",
                    width: "150px"
                },
                {
                    field: "groupName",
                    title: "Group Name",
                    width: "180px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "200px"
                }
            ]
        };
    });


