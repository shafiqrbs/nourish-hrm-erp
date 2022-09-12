'use strict';

app.factory('DateServices', [ "$filter", function ($filter) {
    var DataOp = {};
    DataOp.getCurrentDate = function(format){
        var dateOut = $filter('date')(new Date(), (format== null || format == undefined) ? "dd/MM/yyyy" : format);
        return dateOut;
    };
    DataOp.getCurrentDateFrom = function(dateString){
        return new Date(dateString);
    };
    DataOp.getToDateInMilliSecond = function(date){
        var dateOut = new Date(date);
        return dateOut;
    };
    DataOp.getDateString = function(date){
        var dateOut =$filter('date')(date, "dd/MM/yyyy");
        return dateOut;
    };
    DataOp.getDateStringWithFormat = function(date, format){
        var dateOut =$filter('date')(date, format);
        return dateOut;
    };

    return DataOp;
}]);
