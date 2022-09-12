app.controller("GroupsController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,GroupsService) {

        //create by Navid
        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.groups = {};
        $scope.groups.isDefault = true;
        function init() {
        }

        init();

        $scope.saveForm = function(isValid,groups){
            if(isValid)
            {
                GroupsService.save(groups,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                        $scope.groups = {};
                        $scope.GroupsGridDataSource.read();
                    }
                    else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                })
            }
        }

        $scope.cancel = function(){
            $scope.groups = {};
            $scope.GroupsGridDataSource.read();
        }

        $scope.editForm = function (ev) {
            var id = ev.sender.dataItem(ev.sender.select()).id;
            GroupsService.getGroupById(id,TokenService.getAccessToken()).then(function (resp) {
                $scope.groups = resp;
            });
        }

        $scope.GroupsGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/groups/findAllGroups?access_token='+TokenService.getAccessToken();
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
                        groupName: { type: "string" }
                    }
                }
            }
        });

        $scope.CompanyGroupOptions = {
            dataSource: $scope.GroupsGridDataSource,
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
                    field: "groupName",
                    title: "Groups Name",
                    width: "180px"
                },
                {
                    field: "groupCode",
                    title: "Code",
                    width: "150px"
                },
                {
                    field: "sequence",
                    title: "Sequence",
                    width: "120px"
                },
                {
                    field: "notes",
                    title: "Notes",
                    width: "150px"
                }
            ]
        };
    });


