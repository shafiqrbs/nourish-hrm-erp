app.controller("ShiftRuleController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService, ShiftRuleServices) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        $scope.shiftRule = {};
        $scope.shiftRuleCode = '';
        $scope.default = true;
        $scope.IsAddNewShiftRule = false;
        $scope.shiftRuleDDL = {};

        function init() {
            getAllShiftRuleForDDL();
        }

        init();

        $scope.cancel = function(){
            $scope.shiftRule = {};
            $scope.shiftRuleCode = "";
            $scope.shiftRosterDetailData.read();
        }

        $scope.newShiftRuleToggleBtn = function(pButton){
            if(pButton == "New"){
                $scope.IsAddNewShiftRule = false;
            }
            else{
                $scope.IsAddNewShiftRule = true;
            }
        }

        function getAllShiftRuleForDDL(){
            ShiftRuleServices.getAllShiftRuleCode(TokenService.getAccessToken()).then(function (resp) {
                $scope.shiftRuleDDL = resp;
                console.log(resp);
            });
        }

        $scope.shiftRuleChange = function(shiftRuleCode){
            if(shiftRuleCode !== undefined && shiftRuleCode !== null && shiftRuleCode !== "" ) {
                ShiftRuleServices.getShiftRuleByCode(shiftRuleCode, TokenService.getAccessToken()).then(function (resp) {
                    $scope.shiftRule = resp;
                    $scope.shiftRuleCode = resp.shiftRuleCode;
                    $scope.shiftRosterDetailData.read();
                });
            }else{
                $scope.shiftRule = {};
                $scope.shiftRuleCode = "";
                $scope.shiftRosterDetailData.read();
            }
        }

        function getShiftRuleDeyailsByRuleCode(shiftRuleCode){
            ShiftRuleServices.getShiftRosteringDetails(shiftRuleCode,TokenService.getAccessToken()).then(function (resp) {
                $scope.shiftRule = resp;

            });
        }


        $scope.saveForm = function(isValid,shiftRule){
            if(isValid){
                ShiftRuleServices.save(shiftRule,TokenService.getAccessToken()).then(function(resp) {
                    if(resp.data.isSuccess == true){
                        Flash.create('success', resp.data.successMessage, 'custom-class');
                    }else{
                        Flash.create('danger', resp.data.errorMessage, 'custom-class');
                    }
                });
            }
        }

        $scope.shiftRosterDetailData =  new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shiftRules/getAllShiftRuleRosteringByCode?access_token='+TokenService.getAccessToken()+'&pShiftRuleCode='+$scope.shiftRuleCode;
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
            pageSize: 20,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        shiftID: { type: "string" },
                        shiftType: { type: "string" },
                        alias: { type: "string" },
                        days: { type: "string" }
                    }
                }
            }
        });


        $scope.shiftRuleRosterDetailGridOptions = {
            dataSource: $scope.shiftRosterDetailData,
            sortable: true,
            pageable: true,
            scrollable: false,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "shiftID",
                    title: "Shift ID",
                    width: "120px"
                },
                {
                    field: "shiftType",
                    title: "Shift Type",
                    width: "150px"
                },
                {
                    field: "alias",
                    title: "Alias",
                    width: "110px"
                },
                {
                    field: "days",
                    title: "Days",
                    width: "110px"
                }
            ]
        };
        $scope.sortableOptions = {
            filter: ".k-grid tr[data-uid]",
            hint: $.noop,
            cursor: "move",
            placeholder: function(element) {
                return element
                    .clone()
                    .removeAttr("uid")
                    .addClass("k-state-hover")
                    .css("opacity", 0.65);
            },
            container: ".k-grid tbody",
            change: function(e) {
                var grid = $scope.shiftRuleRosterDetailGridOptions,
                    dataItem = grid.dataSource.getByUid(e.item.data("uid"));

                grid.dataSource.remove(dataItem);
                grid.dataSource.insert(e.newIndex, dataItem);
            }
        };



        $scope.shiftRuleDetailData =  new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shiftRules/getAll?access_token='+TokenService.getAccessToken();
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
                        id: { type: "number", editable: false },
                        shiftRuleCode: { type: "string" },
                        descriptions: { type: "string" }
                    }
                }
            }
        });


        $scope.shiftRuleDetailGridOptions = {
            dataSource: $scope.shiftRuleDetailData,
            sortable: true,
            pageable: true,
            scrollable: true,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {
                    field: "shiftRuleCode",
                    title: "Shift Rule Code",
                    width: "200px"
                },
                {
                    field: "descriptions",
                    title: "Descriptions",
                    width: "250px"
                }
            ]
        };

    });