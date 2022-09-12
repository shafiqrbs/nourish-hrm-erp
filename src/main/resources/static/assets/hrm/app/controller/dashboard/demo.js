(function() {

  var widgets = [
    {
      title:'Cats ',
      class: 'full-width',
      type : "emplye-status"
    },
    {
      title:'Socks ',
      class: 'tree-half',
      type : ""
    },
    {
      title:'Mocks',
      class: 'tree-half',
        type : ""
    },
    {
      title:'Pops',
      class: 'tree-half',
      type : ""
    },

    {
          title:'Pops1',
          class: 'four-half',
            type : ""
        },
     {
           title:'Pops2',
           class: 'four-half',
           type : ""
     },
     {
           title:'Pops3',
           class: 'four-half',
            type : ""
     },
     {
           title:'Pops4',
           class: 'four-half',
           type : ""
     },

     {
                title:'Pops6',
                class: 'half-width',
                type : ""
    },
          {
                title:'Pops7',
                class: 'half-width',
                  type : ""
          },


  ];


    app.controller('dragController', function($scope) {
      $scope.widgets = widgets;
      $scope.moveWidget = function(drag) {
        console.log(drag);
      }
      $scope.close = function(event){
      var d = $(event.target).eq(0).parent().eq(0).parent().eq(0).parent().eq(0).parent().eq(0).parent();
       var tempUrl = d.hide();
      }
    });


    app.directive('myCustomer', function() {
      return {
        link: function(scope, elem, attrs){
             elem.bind('click', function() {
                    console.log(elem);
                });
             }
          }
        });


    app.directive('divClose', function() {
      return {
        link: function(scope, elem, attrs){
             elem.bind('click', function() {
                    console.log(elem);
                    elem.css("display", "none");
                });
             }
          }
        });





})();
