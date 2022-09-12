'use strict';

app.factory('PrintServices', ['$http', function ($http) {
    var DataOp = {};

    DataOp.printPreview = function (printPreviewContainerId){
        var innerContents = document.getElementById(printPreviewContainerId).innerHTML;
        var popupWinindow = window.open('', '_blank', 'width=1024,height=786,scrollbars=no,menubar=no,toolbar=no,location=no,status=no,titlebar=no');
        popupWinindow.document.open();
        popupWinindow.document.write('<html><head><link rel="stylesheet" type="text/css" href="/assets/global/css/printPreview.css" /></head><body onload="window.print()">' + innerContents + '</html>');
        popupWinindow.document.close();
    };

    return DataOp;
}]);

