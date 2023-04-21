import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:date_format/date_format.dart';

class InputTask extends StatefulWidget {
  const InputTask({Key? key}) : super(key: key);

  @override
  State<InputTask> createState() => _InputTaskState();
}

class _InputTaskState extends State<InputTask> {
  DateTime selectedDate = DateTime.now();
  TimeOfDay selectedTime = TimeOfDay(hour: 00, minute: 00);
  TimeOfDay remindTime = TimeOfDay(hour: 00, minute: 00);
  DateTime remindDate = DateTime.now().subtract(Duration(minutes:5));
  late String _hour, _minute, _time;

  final TextEditingController _dateController = TextEditingController();
  TextEditingController _timeController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _dateController.text = DateFormat.yMd().format(selectedDate);
    _timeController.text = formatDate(
        DateTime(2019, 08, 1, DateTime.now().hour, DateTime.now().minute),
        [hh, ':', nn, " ", am]).toString();
  }

  Future<Null> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
        context: context,
        initialDate: selectedDate,
        initialDatePickerMode: DatePickerMode.day,
        firstDate: DateTime(selectedDate.year),
        lastDate: DateTime(2025));
    if (picked != null) {
      setState(() {
        selectedDate = picked;
        _dateController.text = DateFormat.yMd().format(selectedDate);
      });
    }

  }
  Future<Null> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null) {
      setState(() {
        selectedTime = picked;

        Duration interval = Duration(minutes: 5);
        remindDate = DateTime(selectedDate.year, selectedDate.month,
            selectedDate.day, selectedTime.hour, selectedTime.minute).subtract(interval);
        remindTime = TimeOfDay(hour: remindDate.hour, minute: remindDate.minute);

        _hour = selectedTime.hour.toString();
        _minute = selectedTime.minute.toString();
        _time = '$_hour : $_minute';
        _timeController.text = _time;
        _timeController.text = formatDate(
            DateTime(2019, 08, 1, selectedTime.hour, selectedTime.minute),
            [hh, ':', nn, " ", am]).toString();
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(

                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [

                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            leading: Icon(Icons.calendar_month),
                            title: Text('Date'),
                            onTap: () {
                              _selectDate(context);


                            },
                            trailing: Text(
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 18,
                              ),

                              _dateController.text
                            ),


                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            leading: Icon(Icons.timer),
                            title: Text('Time'),
                            onTap: () {
                              _selectTime(context);

                            },
                            trailing: Text(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                _timeController.text
                            ),

                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            leading: Icon(Icons.notifications_active),
                            title: Text('Reminder'),
                            trailing: Text(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                               remindTime.format(context)
                            ),

                          ),
                        ),
                         Padding(
                          padding: EdgeInsets.symmetric(vertical: 8.0),
                          child: ListTile(
                            onTap: (){

                            },
                            leading:const  Icon(Icons.repeat),
                            title: const Text('Repeat'),
                            trailing: Text(
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 18,
                                ),
                                "Daily"
                            ),
                          ),
                        ),
                        ButtonBar(


                          children: [
                            TextButton(

                              child: Text(




                                  'Cancel',
                                style: TextStyle(
                                  fontSize: 18,
                                )
                              ),
                              onPressed: () {
                                Navigator.of(context).pop();
                              },
                            ),
                            TextButton(
                              child: Text('Ok',
                                  style: TextStyle(
                                    fontSize: 18,
                                  )),
                              onPressed: () {
                                // Perform action when Ok button is pressed
                              },
                            ),
                          ],
                        ),

                      ]
                  ),





    );
  }
}



