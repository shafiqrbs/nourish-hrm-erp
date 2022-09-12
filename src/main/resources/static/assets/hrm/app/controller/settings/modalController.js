app.controller("modalController",
    function($modalInstance) {
        this.modalText = 'Modal Text'
          this.cancel = function() {
            $modalInstance.dismiss();
          }
});