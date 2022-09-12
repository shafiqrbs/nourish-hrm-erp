app.controller("PunchMachineController",
    function($rootScope, $scope, $uibModal, $http, $location, $timeout, $filter, Flash,BaseApiUrlService,
             TokenService) {

         //Initialization
         $scope.baseUrl = BaseApiUrlService.getBaseUrl();

        function init(){
        }

        $scope.PunchMachineGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/punchMachine/getAllPunchMachineInfo?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                },
                serverPaging: true,
                serverSorting: true
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
                    id: "Id",
                    fields: {
                       id: { type: "number", editable: false },
                       machineCode: { type: "string" }
                    }
                }
            }
        });

        $scope.PunchMachineDataOptions = {
            dataSource: $scope.PunchMachineGridDataSource,
            sortable: true,
            selectable:"row",
            pageable: true,
            scrollable: true,
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
                buttonCount: 5,
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
                    field: "machineCode",
                    title: "Machine Code",
                    width: "150px"
                },
                {
                    field: "machineCompanyName",
                    title: "Machine Company Name",
                    width: "200px"
                },
                {
                    field: "modelNo",
                    title: "Model No",
                    width: "120px"
                },
                {
                    field: "documentType",
                    title: "Document Type",
                    width: "150px"
                },
                {
                    field: "sampleData",
                    title: "Sample Data"
                }
            ]
        };

        init();

    });