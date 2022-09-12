'use strict';

app.factory('CalendarServices', ['$http', function ($http) {
    var ApiUrl = "/hrm/api/v1/departments";
    var CalendarData = {};

    CalendarData.getThisMonthHolidayData = function () {
        var Data = {};


        Data = [
                  {
                     "row1":[
                        {
                           "data":[
                              {
                                 "date":"30-04-2017",
                                 "dayNumber":"30",
                                 "day":"Sun",
                                 "week":"",
                                 "month":"Apr",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"no"
                              },
               			   {
                                 "date":"01-05-2017",
                                 "dayNumber":"01",
                                 "day":"Mon",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"May Day",
                                 "holidayDescription":"Public Holiday",
                                 "isItCurrentMonth":"yes"
                              },
               			   {
                                 "date":"02-05-2017",
                                 "dayNumber":"02",
                                 "day":"Tue",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"yes"
                              },
               			   {
                                 "date":"03-05-2017",
                                 "dayNumber":"03",
                                 "day":"Wed",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"yes"
                              },
               			   {
                                 "date":"04-05-2017",
                                 "dayNumber":"04",
                                 "day":"Thr",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"yes"
                              },
               			   {
                                 "date":"05-05-2017",
                                 "dayNumber":"05",
                                 "day":"Fri",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"yes"
                              },
               			   {
                                 "date":"06-05-2017",
                                 "dayNumber":"06",
                                 "day":"Sat",
                                 "week":"1",
                                 "month":"May",
                                 "year":"2017",
                                 "holidayName":"",
                                 "holidayDescription":"",
                                 "isItCurrentMonth":"yes"
                              }
                           ]
                        }
                     ],
               	  "row2":[
                        {
                           "data":[
                              {
               					'date': '07-05-2017',
               					'dayNumber': '07',
               					'day': 'Sun',
               					'week': 2,
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '08-05-2017',
               					'dayNumber': '08',
               					'day': 'Mon',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					 'date': '09-05-2017',
               					 'dayNumber': '09',
               					 'day': 'Tue',
               					 'week': '2',
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				 },
               				 {
               					'date': '10-05-2017',
               					'dayNumber': '10',
               					'day': 'Wed',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': 'Buddha Purnima/Vesak',
               					'holidayDescription': 'National holiday',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '11-05-2017',
               					'dayNumber': '11',
               					'day': 'Thr',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '12-05-2017',
               					'dayNumber': '12',
               					'day': 'Fri',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': 'Shab e-Barat',
               					'holidayDescription': 'Public Holiday',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '13-05-2017',
               					'dayNumber': '13',
               					'day': 'Sat',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				}
                           ]
                        }
                     ],
               	  "row3":[
                        {
                           "data":[
                              {
               					'date': '14-05-2017',
               					'dayNumber': '14',
               					'day': 'Sun',
               					'week': 2,
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '15-05-2017',
               					'dayNumber': '15',
               					'day': 'Mon',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '16-05-2017',
               					'dayNumber': '16',
               					'day': 'Tue',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '17-05-2017',
               					'dayNumber': '17',
               					'day': 'Wed',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '18-05-2017',
               					'dayNumber': '18',
               					'day': 'Thr',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '19-05-2017',
               					'dayNumber': '19',
               					'day': 'Fri',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '20-05-2017',
               					'dayNumber': '20',
               					'day': 'Sat',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				}
                           ]
                        }
                     ],
               	  "row4":[
                        {
                           "data":[
                              {
               					 'date': '21-05-2017',
               					 'dayNumber': '21',
               					 'day': 'Sun',
               					 'week': 2,
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				},
               				{
               					 'date': '22-05-2017',
               					 'dayNumber': '22',
               					 'day': 'Mon',
               					 'week': '2',
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '23-05-2017',
               					'dayNumber': '23',
               					'day': 'Tue',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '24-05-2017',
               					'dayNumber': '24',
               					'day': 'Wed',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '25-05-2017',
               					'dayNumber': '25',
               					'day': 'Thr',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '26-05-2017',
               					'dayNumber': '26',
               					'day': 'Fri',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				},
               				{
               					'date': '27-05-2017',
               					'dayNumber': '27',
               					'day': 'Sat',
               					'week': '2',
               					'month': 'May',
               					'year': '2017',
               					'holidayName': '',
               					'holidayDescription': '',
               					'isItCurrentMonth': 'yes'
               				}
                           ]
                        }
                     ],
               	  "row5":[
                        {
                           "data":[
                              {
               					 'date': '28-05-2017',
               					 'dayNumber': '28',
               					 'day': 'Sun',
               					 'week': 2,
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				 },
               				 {
               					 'date': '29-05-2017',
               					 'dayNumber': '29',
               					 'day': 'Mon',
               					 'week': '2',
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				 },
               				 {
               					  'date': '30-05-2017',
               					  'dayNumber': '30',
               					  'day': 'Tue',
               					  'week': '2',
               					  'month': 'May',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'yes'
               				  },
               				  {
               					 'date': '31-05-2017',
               					 'dayNumber': '31',
               					 'day': 'Wed',
               					 'week': '2',
               					 'month': 'May',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'yes'
               				 },
               				 {
               					 'date': '01-06-2017',
               					 'dayNumber': '01',
               					 'day': 'Thr',
               					 'week': '2',
               					 'month': 'Jun',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'no'
               				 },
               				 {
               					 'date': '02-06-2017',
               					 'dayNumber': '02',
               					 'day': 'Fri',
               					 'week': '2',
               					 'month': 'Jun',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'no'
               				 },
               				 {
               					 'date': '03-06-2017',
               					 'dayNumber': '03',
               					 'day': 'Sat',
               					 'week': '2',
               					 'month': 'Jun',
               					 'year': '2017',
               					 'holidayName': '',
               					 'holidayDescription': '',
               					 'isItCurrentMonth': 'no'
               				 }
                           ]
                        }
                     ],
               	  "row6":[
                        {
                           "data":[
                              {
               					  'date': '04-06-2017',
               					  'dayNumber': '04',
               					  'day': 'Sun',
               					  'week': 2,
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  },
               				  {
               					  'date': '05-06-2017',
               					  'dayNumber': '05',
               					  'day': 'Mon',
               					  'week': '2',
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  },
               				  {
               					   'date': '06-06-2017',
               					   'dayNumber': '06',
               					   'day': 'Tue',
               					   'week': '2',
               					   'month': 'Jun',
               					   'year': '2017',
               					   'holidayName': '',
               					   'holidayDescription': '',
               					   'isItCurrentMonth': 'no'
               				   },
               				   {
               					  'date': '07-06-2017',
               					  'dayNumber': '07',
               					  'day': 'Wed',
               					  'week': '2',
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  },
               				  {
               					  'date': '08-06-2017',
               					  'dayNumber': '08',
               					  'day': 'Thr',
               					  'week': '2',
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  },
               				  {
               					  'date': '09-06-2017',
               					  'dayNumber': '09',
               					  'day': 'Fri',
               					  'week': '2',
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  },
               				  {
               					  'date': '10-06-2017',
               					  'dayNumber': '10',
               					  'day': 'Sat',
               					  'week': '2',
               					  'month': 'Jun',
               					  'year': '2017',
               					  'holidayName': '',
               					  'holidayDescription': '',
               					  'isItCurrentMonth': 'no'
               				  }
                           ]
                        }
                     ]
                  }
               ];

        return Data;
        //return $http.get(ApiUrl);
    };

    return CalendarData;
}]);
