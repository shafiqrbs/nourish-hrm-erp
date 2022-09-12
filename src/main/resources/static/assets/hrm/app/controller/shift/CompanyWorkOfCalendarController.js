app.controller("CompanyWorkOfCalendarController",
    function ($rootScope, $scope, $http, $location, $timeout, $filter, Flash, BaseApiUrlService, TokenService,
              DateServices,Flash,WorkOffCalendarService,
        ShiftPlanServices,EmployeeService) {

        //Initialization
        $scope.baseUrl = BaseApiUrlService.getBaseUrl();
        var urlObject = $location.absUrl().split( '/' );
        $scope.ShiftRosterTab = "stepOneCalendar";
        $scope.HolidayDateRangeObj = [];
        $scope.isShowShiftSelectGrid = false;
        $scope.shiftNature = "Fixed";
        $scope.isStepOneShow = true;
        $scope.isStepTwoShow = false;
        $scope.isStepThreeShow = false;
        $scope.pSearchCriteria = "";


        // Start Region
        $scope.fromDate = new Date();
        $scope.toDate = new Date();

        $scope.isSelectAllEmployee=false;
        $scope.remarks="";
        $scope.dayType ="W";

        $scope.selectedDatesArray=[];
        $scope.selectedDates="";
        $scope.selectedShiftIds="";
        $scope.selectedEmployeeCodes="";

        $scope.calendarHoliday={};


        $scope.isChangedshiftNature = "";
        $scope.isChangeSelectedShiftIds="";

        $scope.isChangeSelectedEmployeeCodes="";
        $scope.isChangedSelectAllEmployee = false;

        $scope.isChangeShowShiftSelectGrid = true;

        $scope.isSaved = false;
        $scope.isChanged = false;

        // End Region


        function init() {
            // getHolidayGridDataByDateRange();
        }

        init();

        function flashMessage(resp){
            if(resp.data.isSuccess == true){
                Flash.create('success', resp.data.successMessage, 'custom-class');
            }else{
                Flash.create('danger', resp.data.errorMessage, 'custom-class');
            }
        }

        $scope.cancel = function(){
            alert("Canceled");
        }


        $scope.saveWorkOffCalender = function (isValid){
            if(isValid){

                if($scope.selectedDates == ""){
                    alert("Select Holiday dates in Step One");
                    return ;
                }
                if(! $scope.isShowShiftSelectGrid) {
                    $scope.calendarHoliday.shiftIds = "All";
                }else if($scope.selectedShiftIds != "") {
                    $scope.calendarHoliday.shiftIds =  $scope.selectedShiftIds ;
                }else{
                    alert("Select all Shift or select at least one Shift in Step one");
                    return ;
                }
                if( $scope.isSelectAllEmployee) {
                    $scope.calendarHoliday.employeeCodes = "All";
                }
                else if($scope.selectedEmployeeCodes != ""){
                    $scope.calendarHoliday.employeeCodes = $scope.selectedEmployeeCodes ;
                }else{
                    alert("Select all Employee or select at least one Employee in Step Tow");
                    return ;
                }

                $scope.calendarHoliday.shiftNature = $scope.shiftNature;
                $scope.calendarHoliday.dayOffDates = $scope.selectedDates;
                $scope.calendarHoliday.dayType = $scope.dayType;
                $scope.calendarHoliday.remarks = $scope.remarks;
                console.log($scope.calendarHoliday);

                WorkOffCalendarService.save($scope.calendarHoliday, TokenService.getAccessToken())
                    .then(function (resp) {
                     //   flashMessage(resp);
                    }, function (error) {
                        console.log(error);
                    });

            }
        }
        $scope.pushWorkOffCalender = function (isValid){
            if(isValid){

                if($scope.selectedDates == ""){
                    alert("Select Holiday dates in Step One");
                    return ;
                }
                if(! $scope.isShowShiftSelectGrid) {
                }else if($scope.selectedShiftIds != "") {
                }else{
                    alert("Select all Shift or select at least one Shift in Step one");
                    return ;
                }
                if( $scope.isSelectAllEmployee) {
                }
                else if($scope.selectedEmployeeCodes != ""){
                }else{
                    alert("Select all Employee or select at least one Employee in Step Tow");
                    return ;
                }


                WorkOffCalendarService.pushFromTemp($scope.calendarHoliday, TokenService.getAccessToken())
                    .then(function (resp) {
                           flashMessage(resp);
                    }, function (error) {
                        console.log(error);
                    });

            }
        }


        $scope.setHolidayGridData = function(){
            getHolidayGridDataByDateRange();
        }

        $scope.openShiftRosterTab = function (pageName) {
            $scope.ShiftRosterTab = pageName;
            if($scope.isSaved && $scope.isChanged){
                WorkOffCalendarService.deleteTemp( TokenService.getAccessToken())
                    .then(function (resp) {
                    }, function (error) {
                        console.log(error);
                    });
                $scope.isSaved = false;
            }


            if(pageName == "stepOneCalendar"){
                $scope.isStepOneShow = true;
                $scope.isStepTwoShow = false;
                $scope.isStepThreeShow = false;
            }
            else if(pageName == "stepTwoCalendar"){
                $scope.isStepOneShow = false;
                $scope.isStepTwoShow = true;
                $scope.isStepThreeShow = false;
                if($scope.isChangedshiftNature != $scope.shiftNature || $scope.isChangeSelectedShiftIds != $scope.selectedShiftIds || $scope.isChangeShowShiftSelectGrid != $scope.isShowShiftSelectGrid ){
                    $scope.isChangedshiftNature = $scope.shiftNature;
                    $scope.isChangeSelectedShiftIds = $scope.selectedShiftIds;
                    $scope.isChangeShowShiftSelectGrid = $scope.isShowShiftSelectGrid;
                    $scope.isChanged = true;
                    $scope.EmployeeGridDataSource.read();
                }
            }
            else if(pageName == "stepThreeCalendar"){
                $scope.isStepOneShow = false
                $scope.isStepTwoShow = false;
                $scope.isStepThreeShow = true;

                if($scope.isChangeSelectedEmployeeCodes != $scope.selectedEmployeeCodes
                    || $scope.isChangedSelectAllEmployee != $scope.isSelectAllEmployee ){
                    $scope.isChangeSelectedEmployeeCodes = $scope.selectedEmployeeCodes;
                    $scope.isChangedSelectAllEmployee = $scope.isSelectAllEmployee;
                    $scope.isChanged = true;
                }
                if($scope.isChanged) {
                    $scope.saveWorkOffCalender(true);
                    $scope.isChanged = false;
                    $scope.isSaved = true;
                }
                $scope.ProcessedEmployeeGridDataSource.read();

            }
        }

        $scope.setShiftNature = function(pShiftNature){
            $scope.shiftNature = pShiftNature;
            $scope.shiftPlanDataSource.read();
        }

        $scope.openShiftSelection = function(pSelector){
            if(pSelector == "All Shift")
                $scope.isShowShiftSelectGrid = false;
            else
                $scope.isShowShiftSelectGrid = true;
        }


        $scope.HolidayDateSelect = function (e){
            var grid = e.sender;
            var rows = e.sender.select();
            $scope.selectedDatesArray.splice(0,$scope.selectedDatesArray.length);
            $scope.selectedDates="";
            rows.each(function(event) {
                var dataItem = grid.dataItem(this);
                $scope.selectedDatesArray.push(new Date(dataItem.holidayDate));
                $scope.selectedDates =  $scope.selectedDates  + dataItem.holidayDate + ",";
            })
            $scope.selectedDates =  $scope.selectedDates.substring(0,  $scope.selectedDates.length - 1);

        }

        $scope.ShiftIdsSelect = function (e){
            var grid = e.sender;
            var rows = e.sender.select();
            $scope.selectedShiftIds="";
            rows.each(function(event) {
                var dataItem = grid.dataItem(this);
                $scope.selectedShiftIds =  $scope.selectedShiftIds  + dataItem.shiftID + ",";
            })
            $scope.selectedShiftIds =  $scope.selectedShiftIds.substring(0,  $scope.selectedShiftIds.length - 1);

        }

        $scope.EmployeeCodesSelect = function (e){
            var grid = e.sender;
            var rows = e.sender.select();
            $scope.selectedEmployeeCodes="";
            rows.each(function(event) {
                var dataItem = grid.dataItem(this);
                $scope.selectedEmployeeCodes =  $scope.selectedEmployeeCodes  + dataItem.employeeCode + ",";
            })
            $scope.selectedEmployeeCodes =  $scope.selectedEmployeeCodes.substring(0,  $scope.selectedEmployeeCodes.length - 1);

        }


        $scope.shiftPlanDataSource =  new kendo.data.DataSource({
            type: "json",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shift/plan/getAllShiftPlanByShiftNature?access_token='+TokenService.getAccessToken()+'&pShiftNature='+$scope.shiftNature;
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
            pageSize: 50,
            schema: {
                model: {
                    id: "id",
                    fields: {
                        id: { type: "number", editable: false },
                        shiftID: { type: "string" },
                        shiftType: { type: "string" },
                        alias: { type: "string" },
                        descriptions: { type: "string" }
                    }
                }
            }
        });


        $scope.shiftPlanGridOptions = {
            dataSource: $scope.shiftPlanDataSource,
            sortable: true,
            pageable: false,
            scrollable: true,
            change: $scope.ShiftIdsSelect,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
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
                    field: "descriptions",
                    title: "Descriptions",
                    width: "110px"
                }
            ]
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



        function getHolidayGridDataByDateRange(){
            var start = new Date( $scope.fromDate);
            var end = new Date($scope.toDate);
            if(start == undefined)
                start = end;
            $scope.HolidayDateRangeObj.splice(0,$scope.HolidayDateRangeObj.length);
            var loop = start;
            $scope.HolidayDateRangeObj.push({holidayDate : $filter('date')(loop, "yyyy-MM-dd")});
            while(loop < end){
                var newDate = loop.setDate(loop.getDate() + 1);
                $scope.HolidayDateRangeObj.push({holidayDate : $filter('date')(newDate, "yyyy-MM-dd")});
                loop = new Date(newDate);
            }
            $scope.HolidayDateRangeObjDataSource.read();
        }


        $scope.HolidayDateRangeObjDataSource = new kendo.data.DataSource({
            data: $scope.HolidayDateRangeObj
        });


        $scope.HolidayDateSelectionGridOptions = {
            dataSource: $scope.HolidayDateRangeObjDataSource,
            sortable: false,
            pageable: false,
            scrollable: true,
            change: $scope.HolidayDateSelect,
            dataBound: function () {
                this.expandRow(this.tbody.find("tr.k-master-row").first());
            },
            columns: [
                {selectable: true, width: "50px"},
                {
                    field: "holidayDate",
                    title: "Date",
                    width: "150px"
                }
            ]
        };

        $scope.searchEmployeeInfo = function(pSearchCriteria){
           $scope.EmployeeGridDataSource.query({
               page:1,
               pageSize:50,
               filter:{
                   filters:[
                       {field:"advanceSearchFiled", operator:"contains",value:pSearchCriteria}
                   ]
               }
           });
        }

        $scope.EmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        if($scope.isShowShiftSelectGrid == true)
                            return $scope.baseUrl+'/employees/info/getAllByShift?access_token=' + TokenService.getAccessToken() +
                                '&pShiftNature=' + $scope.shiftNature+'&pShiftIds=' + $scope.selectedShiftIds;
                        else
                            return $scope.baseUrl+'/employees/info/getAllByShift?access_token=' + TokenService.getAccessToken() +
                                '&pShiftNature=' + $scope.shiftNature+'&pShiftIds=All';
                    },
                    dataType: "json",
                    type: "GET"
                },
                parameterMap: function (data) {
                     // Mapping between Spring data pagination and kendo UI pagination parameters
                     // Pagination
                     var serverUrlParams = {
                        // pagination
                        size: data.pageSize,
                        page: data.page = data.page - 1,// as Spring page starts from 0
                        filters:""
                     };

                     // Sorting
                     if (data.sort && data.sort.length > 0){
                        serverUrlParams.sortBy = data.sort[0].field;
                        serverUrlParams.sortOn = (data.sort[0].dir).toUpperCase();
                     }else{
                        serverUrlParams.sortBy = 'employeeCode';
                        serverUrlParams.sortOn = 'ASC';
                     }

                    //Filter Information
                    if (data.filter && data.filter.filters.length > 0) {
                        var elt = data.filter.filters[0];
                        var field = elt['field'];

                        if(elt['value'] == undefined){
                            elt['value'] = "";
                            $scope.pSearchCriteria = "";
                        }

                        var value = (elt['value'].replace("~", "")).replace("_", "");
                        var operator = elt['operator'];
                        serverUrlParams.filters = field + '_' + value + '_' + operator;

                        for(var index = 1; index < data.filter.filters.length; index++) {
                            elt = data.filter.filters[index];
                            field = elt['field'];
                            value = (elt['value'].replace("~", "")).replace("_", "");
                            operator = elt['operator'];
                            serverUrlParams.filters = serverUrlParams.filters + '~' + field + '_' + value + '_' + operator;
                        }
                        //alert(JSON.stringify(serverUrlParams));
                    }
                    return serverUrlParams;
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            serverSorting: true,
            serverFiltering: true,
            serverPaging: true,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       Id: { type: "number", editable: false },
                       employeeCode: { type: "string" },
                       firstName: { type: "string" },
                       punchCardNo: { type: "string" }
                    }
                },
                data:"data",
                total:"total"
            }
        });

        $scope.EmployeeAllDataOptions = {
            dataSource: $scope.EmployeeGridDataSource,
            sortable: true,
            pageable: true,
            filterable: {
                mode: "row",
                extra: false, //do not show extra filters
                operators: { // redefine the string operators
                    string: {
                        eq: "Is Equal To",
                        neq: "Is Not Equal To",
                        contains: "Contains",
                        startswith: "Starts With",
                        endswith: "Ends With"
                    }
                }
            },
            scrollable: true,
            change:$scope.EmployeeCodesSelect,
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
                {selectable: true, width: "40px"},
                {
                    field: "employeeCode",
                    title: "Code",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "120px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>',
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "unit",
                    title: "Unit",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "department",
                    title: "Department",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "designation",
                    title: "Designation",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "staffCategory",
                    title: "Staff Category",
                    width: "120px",
                    filterable: {
                        cell: {
                            operator: "startswith",
                            suggestionOperator: "startswith"
                        }
                    }
                },
                {
                    field: "doj",
                    title: "DOJ",
                    width: "100px",
                    template: '<span>{{dataItem.doj | date:"dd/MM/yyyy"}}</span>',
                    filterable: false
                },
                {
                    field: "doc",
                    title: "DOC",
                    width: "100px",
                    template: '<span>{{dataItem.doc | date:"dd/MM/yyyy"}}</span>',
                    filterable: false
                }
            ]
        };

        $scope.searchProcessedEmployeeInfo = function(pEmployeeCode){
           if(pEmployeeCode !=""){
               $scope.ProcessedEmployeeGridDataSource.query({
                    page:1,
                    pageSize:200,
                    filter:{
                        logic:"or",
                        filters:[
                            {field:"employeeCode", operator:"contains",value:pEmployeeCode}
                        ]
                    }
                });
           }
           else{
               $scope.ProcessedEmployeeGridDataSource.read();
           }
        }

        $scope.ProcessedEmployeeGridDataSource = new kendo.data.DataSource({
            type: "jsonp",
            transport: {
                read: {
                    url: function(){
                        return $scope.baseUrl+'/shift/workOffCalendar/getTempList?access_token='+TokenService.getAccessToken();
                    },
                    dataType: "json",
                    type: "GET"
                },
                parameterMap: function (data) {
                    // Mapping between Spring data pagination and kendo UI pagination parameters
                    // Pagination
                    var serverUrlParams = {
                      // pagination
                      size: data.pageSize,
                      page: data.page = data.page - 1// as Spring page starts from 0
                    };
                    // Sorting
                    if (data.sort && data.sort.length > 0)
                      serverUrlParams.sort = data.sort[0].field + ',' + data.sort[0].dir;

                    return serverUrlParams;
                }
            },
            error: function (e) {
                if (e.errorThrown.toString() === 'Unauthorized') {
                    alert('Unauthorized Access!');
                    window.location = '/account/login';
                }
            },
            pageSize: 50,
            serverPaging: true,
            serverSorting: true,
            schema: {
                model: {
                    id: "Id",
                    fields: {
                       Id: { type: "number", editable: false },
                       employeeCode: { type: "string" },
                       firstName: { type: "string" },
                       punchCardNo: { type: "string" }
                    }
                },
                data:"data",
                total:"total"
            }
        });

        $scope.ProcessedEmployeeAllDataOptions = {
            dataSource: $scope.ProcessedEmployeeGridDataSource,
            sortable: true,
            pageable: true,
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
                    field: "employeeCode",
                    title: "Code",
                    width: "150px"
                },
                {
                    field: "firstName",
                    title: "Name",
                    width: "150px",
                    template: '<span>{{(dataItem.salutation==null?"":dataItem.salutation) +" "+(dataItem.firstName==null?"":dataItem.firstName)}}</span>'
                },
                {
                    field: "punchCardNo",
                    title: "Punch Card",
                    width: "250px"
                }
            ]
        };

    });