app.controller("EmployeeGridManageController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter,BaseApiUrlService,TokenService,Flash,FloorService,BuildingService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl()+'employees';
        function init(){
        }

        init();

        $scope.EmployeeGridDataSource = new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/info/getAll?access_token='+TokenService.getAccessToken();
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
                        Id: { type: "number", editable: false },
                        fname: { type: "string" },
                        floorName: { type: "string" }
                    }
                }
            }
        });

        $scope.EmployeeAllDataOptions = {
            dataSource: $scope.EmployeeGridDataSource,
            sortable: true,
            pageable: true,
            scrollable: true,
            toolbar: kendo.template($("#template").html()),
            pageable: {
                refresh: true,
                pageSizes: [20, 50, 100, 200],
                //pageSizes: [20, 50, 100, 200, "all"],
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
                {selectable: true, width: "30px"},
                {
                    field: "employeeCode",
                    title: "Employee Code",
                    width: "120px"
                },
                {
                    field: "fname",
                    title: "Employee Name",
                    width: "150px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.fname==null?"":dataItem.fname)}}</span>'
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                },
                {
                    field: "punchCardNo",
                    title: "Punch card no",
                    width: "120px"
                }
            ]
        };
    });


