'use strict';

app.service('BaseApiUrlService', function ($http) {
    this.getBaseUrl = function () {
        return "/hrm/api/v1/";
    }
});




