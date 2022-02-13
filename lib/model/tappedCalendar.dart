// import 'package:flutter/material.dart';
// import 'package:calendar/model/event.dart';
// import 'package:syncfusion_flutter_calendar/calendar.dart';
// import 'package:calendar/model/event_data_source.dart';

// class OnTappedAppointment extends StatefulWidget {
//   const OnTappedAppointment({ Key? key }) : super(key: key);

//   @override
//   _OnTappedAppointmentState createState() => _OnTappedAppointmentState();
// }

// class _OnTappedAppointmentState extends State<OnTappedAppointment> {

//   void onCalendarTapped(CalendarTapDetails calendarTapDetails) {
//  if (calendarTapDetails.targetElement != CalendarElement.calendarCell &&
//  calendarTapDetails.targetElement != CalendarElement.appointment) {
//    return;
//    }
   
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
//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

