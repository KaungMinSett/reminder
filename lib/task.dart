import 'package:flutter/material.dart';


class Tasks extends StatefulWidget {
  const Tasks({Key? key}) : super(key: key);

  @override
  State<Tasks> createState() => _TasksState();
}

class _TasksState extends State<Tasks> with TickerProviderStateMixin {

  int _selectedIndex = 0;
  final List<String> _tabs = ["All", "Work", "Personal", "Birthday"];
  Color task_color = Colors.black12.withOpacity(0.0) ;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              for (var i = 0; i < _tabs.length; i++)
                Container(
                  margin: const EdgeInsets.only(right: 12.0),
                  child: ChoiceChip(
                    backgroundColor: const Color(0xffCBDBEA),
                    selectedColor: const Color(0xff345c82),
                    padding: const EdgeInsets.symmetric(horizontal: 15.0),
                    label: Text(_tabs[i]),
                    selected: i == _selectedIndex,
                    labelStyle: const TextStyle(
                      color: Colors.white,
                    ),
                    onSelected: (selected) {
                      setState(() {
                        _selectedIndex = i;
                      });
                    },
                  ),
                ),
            ],
          ),
        ),
      ),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.95,
          child: ListView(
            children: _selectedIndex == 0
                ? <Widget>[
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
            ]
                : _selectedIndex == 1
                ? <Widget>[
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
            ]
                : _selectedIndex == 2
                ? <Widget>[
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
            ]
                : _selectedIndex == 3
                ? <Widget>[
              Card(
                color: task_color,
                child: ListTile(
                  leading: IconButton(
                    icon: Icon(Icons.circle_outlined,
                        color: Colors.blueGrey),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                  title: Text('Cook Rice'),
                  subtitle: Padding(
                    padding: const EdgeInsets.only(top: 5.0),
                    child: Row(
                      children: <Widget>[
                        Text(" 5-12-22  6:00 P.M "),
                        Icon(Icons.subdirectory_arrow_right,
                            color: Colors.grey),
                      ],
                    ),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.star_border),
                    onPressed: () {
                      // Do something when the button is pressed
                    },
                  ),
                ),
              ),
            ]
                : [],
          ),
        ),
      ),
    );
  }
}
