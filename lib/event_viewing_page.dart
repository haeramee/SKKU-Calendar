// import 'package:calendar/provider/event_provider.dart';
// import 'package:calendar/utils.dart';
// import 'package:flutter/material.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:provider/provider.dart';

// class EventViewingPage extends StatelessWidget {
// void onCalendarTapped(CalendarTapDetails calendarTapDetails) {
//   if (calendarTapDetails.targetElement != CalendarElement.calendarCell &&
//       calendarTapDetails.targetElement != CalendarElement.appointment) {
//     return;
//   }
 
//   setState(() {
//     _selectedAppointment = null;
//     _isAllDay = false;
//     _selectedColorIndex = 0;
//     _selectedTimeZoneIndex = 0;
//     _subject = ‘’;
//     _notes = ‘’;
//     if (_calendarView == CalendarView.month) {
//       _calendarView = CalendarView.day;
//     } else {
//       if (calendarTapDetails.appointments != null &&
//           calendarTapDetails.appointments.length == 1) {
//         final Meeting meetingDetails = calendarTapDetails.appointments[0];
//         _startDate = meetingDetails.from;
//         _endDate = meetingDetails.to;
//         _isAllDay = meetingDetails.isAllDay;
//         _selectedColorIndex =
//             _colorCollection.indexOf(meetingDetails.background);
//         _selectedTimeZoneIndex = meetingDetails.startTimeZone == ‘’
//             ? 0
//             : _timeZoneCollection.indexOf(meetingDetails.startTimeZone);
//         _subject = meetingDetails.eventName == ‘(No title)’
//             ? ‘’
//             : meetingDetails.eventName;
//         _notes = meetingDetails.description;
//         _selectedAppointment = meetingDetails;
//       } else {
//         final DateTime date = calendarTapDetails.date;
//         _startDate = date;
//         _endDate = date.add(const Duration(hours: 1));
//       }
//       _startTime =
//           TimeOfDay(hour: _startDate.hour, minute: _startDate.minute);
//       _endTime = TimeOfDay(hour: _endDate.hour, minute: _endDate.minute);
//       Navigator.push<Widget>(
//         context,
//         MaterialPageRoute(
//             builder: (BuildContext context) => AppointmentEditor()),
//       );
//     }
//   });
// }

//   Widget build([BuildContext context]) {
//   return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//           appBar: AppBar(
//             title: Text(getTile()),
//             backgroundColor: _colorCollection[_selectedColorIndex],
//             leading: IconButton(
//               icon: const Icon(
//                 Icons.close,
//                 color: Colors.white,
//               ),
//               onPressed: () {
//                 Navigator.pop(context);
//               },
//             ),
//             actions: <Widget>[
//               IconButton(
//                   padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
//                   icon: const Icon(
//                     Icons.done,
//                     color: Colors.white,
//                   ),
//                   onPressed: () {
//                     final List<Meeting> meetings = <Meeting>[];
//                     if (_selectedAppointment != null) {
//                       _events.appointments.removeAt(
//                           _events.appointments.indexOf(_selectedAppointment));
//                       _events.notifyListeners(CalendarDataSourceAction.remove,
//                           <Meeting>[]..add(_selectedAppointment));
//                     }
//                     meetings.add(Meeting(
//                       from: _startDate,
//                       to: _endDate,
//                       background: _colorCollection[_selectedColorIndex],
//                       startTimeZone: _selectedTimeZoneIndex == 0
//                           ? ‘’
//                           : _timeZoneCollection[_selectedTimeZoneIndex],
//                       endTimeZone: _selectedTimeZoneIndex == 0
//                           ? ‘’
//                           : _timeZoneCollection[_selectedTimeZoneIndex],
//                       description: _notes,
//                       isAllDay: _isAllDay,
//                       eventName: _subject == '' ? '(No title)' : _subject,
//                     ));
 
//                     _events.appointments.add(meetings[0]);
 
//                     _events.notifyListeners(
//                         CalendarDataSourceAction.add, meetings);
//                     _selectedAppointment = null;
 
//                     Navigator.pop(context);
//                   })
//             ],
//           ),
//           body: Padding(
//             padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
//             child: Stack(
//               children: <Widget>[_getAppointmentEditor(context)],
//             ),
//           ),
//           floatingActionButton: _selectedAppointment == null
//               ? const Text('')
//               : FloatingActionButton(
//                   onPressed: () {
//                     if (_selectedAppointment != null) {
//                       _events.appointments.removeAt(
//                           _events.appointments.indexOf(_selectedAppointment));
//                       _events.notifyListeners(CalendarDataSourceAction.remove,
//                           <Meeting>[]..add(_selectedAppointment));
//                       _selectedAppointment = null;
//                       Navigator.pop(context);
//                     }
//                   },
//                   child:
//                       const Icon(Icons.delete_outline, color: Colors.white),
//                   backgroundColor: Colors.red,
//                 )));
// }

//   @override
//   State<StatefulWidget> createState() {
//     // TODO: implement createState
//     throw UnimplementedError();
//   }
// }
