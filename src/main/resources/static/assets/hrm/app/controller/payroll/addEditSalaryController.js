app.controller("addEditSalaryController",
    function($rootScope, $scope, $http, $location, $timeout, SalaryServices, EmployeeService, SalaryItemServices, CommonServices) {

   //Initialization
  $scope.employees = {};
  $scope.salary = {};
  $scope.salary.isNeededApproval = '1';
  $scope.InvalidSubmit = false;

    function init(){
         EmployeeService.getAllUsersBasicInfo().then(function(resp){
            $scope.employees = resp.data;
            console.log(resp.data);
        });

         SalaryItemServices.getAllSalaryItem().then(function(resp){
            $scope.salaryItems = resp.data.content;
            console.log(resp.data.content);
        });

         CommonServices.getAllSalaryType().then(function(resp){
            $scope.salaryTypes = resp.data.content;
            console.log(resp.data.content);
        });
    }

    $scope.searchBy = [
        {id: '1', name: 'ID'},
        {id: '2', name: 'Name'},
        {id: '3', name: 'Department'},
        {id: '4', name: 'Designation'},
        {id: '5', name: 'Role'}
    ];

    init();
    var id = getQueryVariable();

    function editForm(id) {
        SalaryServices.getSalaryById(id).then(function(resp){
            $scope.salary = resp.data;
            console.log(JSON.stringify(resp.data));
            if(resp.data.isNeededApproval == true)
                $scope.salary.isNeededApproval = '1';
            else
                $scope.salary.isNeededApproval = '0';
        })
    }

    if (id != 0){
        editForm(id);
    }

    // Save Deduction
    $scope.saveForm = function(isValid,salary){
        if(isValid){
            if(salary.isStatus==null)
                salary.isStatus=true;

            if(salary.isNeededApproval=="0"){
                salary.isNeededApproval=false;
            }
            else {
                salary.isNeededApproval=true;
            }


            console.log(salary);

            SalaryServices.saveSalary(salary).then(function(resp){
                //console.log(resp);
                window.location.href = "/#!/payroll/salary";
            })
        }
        else{
            $scope.InvalidSubmit = true;
        }
    }


    $scope.exitForm = function(){
        window.location.href = "/#!/payroll/salary";
    }

    // Add Row for Salary Breakdown
        var salaryItemIndex = -1;
        $scope.addBtnSalaryItemText = "(+) Add";
        $scope.tempSalaryOtherDetailsData = {};
        $scope.salary.salaryOtherDetails = [];
        $scope.AddSalaryItem = function(tempSalaryOtherDetailsData){
            console.log(tempSalaryOtherDetailsData);
            //alert(salaryItemIndex);
            if(salaryItemIndex == -1)
            {
                $scope.salary.salaryOtherDetails.push({
                    salaryItem: tempSalaryOtherDetailsData.salaryItem,
                    salaryItemType: tempSalaryOtherDetailsData.itemType,
                    amount: tempSalaryOtherDetailsData.amount
                });
            }
            else
            {
                $scope.salary.salaryOtherDetails[salaryItemIndex] = {
                    salaryItem: tempSalaryOtherDetailsData.salaryItem,
                    salaryItemType: tempSalaryOtherDetailsData.itemType,
                    amount: tempSalaryOtherDetailsData.amount
                };

                var newDataList = [];
                angular.forEach($scope.salary.salaryOtherDetails,function(v){
                    newDataList.push(v);
                });

                $scope.salary.salaryOtherDetails=newDataList;

                console.log(JSON.stringify($scope.salary.salaryOtherDetails));

                salaryItemIndex = -1;
            }

            $scope.tempSalaryOtherDetailsData.salaryItem = {};
            $scope.tempSalaryOtherDetailsData.itemType = "";
            $scope.tempSalaryOtherDetailsData.amount = "";

            $scope.addBtnSalaryItemText = "(+) Add";

            //console.log(JSON.stringify($scope.tempEducationData));
        }

        $scope.deleteSalaryOtherDetail = function(index){
            delete $scope.salary.salaryOtherDetails[index];
            var newDataList = [];
            angular.forEach($scope.salary.salaryOtherDetails,function(v){
                newDataList.push(v);
            });

           $scope.salary.salaryOtherDetails=newDataList;
        }

        $scope.editSalaryOtherDetail = function(index){
            $scope.tempSalaryOtherDetailsData.salaryItem = $scope.salary.salaryOtherDetails[index].salaryItem;
            $scope.tempSalaryOtherDetailsData.itemType = $scope.salary.salaryOtherDetails[index].salaryItemType;
            $scope.tempSalaryOtherDetailsData.amount = $scope.salary.salaryOtherDetails[index].amount;

            $scope.addBtnSalaryItemText = "Update";
            salaryItemIndex = index;

            console.log(JSON.stringify($scope.tempSalaryOtherDetailsData));
        }
        // End

    function getQueryVariable() {
        var query = $location.absUrl();
        if(query.indexOf('?') != -1)
        {
            var vars = query.split('?');
            var pair = vars[1].split('=');
            return pair[1];
        }
        return 0;
    }
});