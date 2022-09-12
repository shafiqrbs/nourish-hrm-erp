'use strict';

app.factory('FloorServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/floors";
    var DataOp = {};

    DataOp.getAllFloor = function () {
        return $http.get(ApiUrl);
    };

    DataOp.getFloorById = function (id) {
        return $http.get(ApiUrl+'/{id}?id='+id);
    };

    DataOp.getFloorListBySectionId = function (id) {
        try {
            return $http.get(ApiUrl+'/findAllBySectionId?sectionId='+id);
        }
        catch(err){
            return {};
        }
    };

     DataOp.deleteFloorById = function (id) {
            return $http.delete(ApiUrl+'/{id}?id='+id);
        };

    DataOp.saveFloor = function (data) {
        return $http.post(ApiUrl, data);
    };

    return DataOp;
}]);
