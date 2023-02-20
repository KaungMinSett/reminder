import 'package:flutter/material.dart';
import 'package:reminder/task.dart';
import 'input_task.dart';

// 1
class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);
  @override
  HomeState createState() => HomeState();
}

class HomeState extends State<Home> {
  // TODO: Add state variables and functions
  // 7
  int currentIndex = 1;
  bool isExpanded = false;
  bool isDropDownOpen = false;
  final List<String> _tabs = ["No Category", "All", "Work", "Personal", "Birthday"];

  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  String dropdownValue = 'No Category';
  void _onItemTapped(int index) {
    setState(() {
      if (index == 0) {
        scaffoldKey.currentState?.openDrawer();
        currentIndex = 1;
      } else {
        currentIndex = index;
      }
    });
  }

// 8
  static List<Widget> pages = <Widget>[
    // TODO: Replace with Card1
    const Drawer(),
    const Tasks(),

    // TODO: Replace with Card2
    const Tasks(),

    // TODO: Replace with Card3
    const Tasks()
  ];
// 9

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Color(0xff90CAF9),
              ),
              child: Center(
                child: Text('Remind You, Yourself',
                    style: TextStyle(
                        fontSize: 16,
                        fontFamily: "Roboto Mono",
                        letterSpacing: 5,
                        color: Color(0xff345c82))),
              ),
            ),
            ExpansionTile(
              leading:
                  const Icon(Icons.category_rounded, color: Color(0xff90CAF9)),
              title: const Text("Category"),
              textColor: const Color(0xff345c82),
              children: [
                ListTile(
                  leading: const Icon(Icons.list_alt_rounded),
                  title: const Text("All"),
                  onTap: () {/* handle item 1 tap */},
                ),
                ListTile(
                  leading: const Icon(Icons.list_alt_rounded),
                  title: const Text("Work"),
                  onTap: () {/* handle item 1 tap */},
                ),
                ListTile(
                  leading: Icon(Icons.list_alt_rounded),
                  title: Text("Personal"),
                  onTap: () {/* handle item 1 tap */},
                ),
                ListTile(
                  leading: Icon(Icons.list_alt_rounded),
                  title: Text("Birthday"),
                  onTap: () {/* handle item 1 tap */},
                ),
              ],
            ),
            ListTile(
              leading: const Icon(Icons.star, color: Color(0xff90CAF9)),
              title: const Text("Star tasks"),
              onTap: () {
                // handle tap
              },
            ),
            ListTile(
              leading:
                  const Icon(Icons.question_answer, color: Color(0xff90CAF9)),
              title: const Text("FAQ"),
              onTap: () {
                // handle tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings, color: Color(0xff90CAF9)),
              title: const Text("Settings"),
              onTap: () {
                // handle tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback, color: Color(0xff90CAF9)),
              title: const Text("Feedback"),
              onTap: () {
                // handle tap
              },
            ),
          ],
        ),
      ),
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        selectedFontSize: 12,
        unselectedFontSize: 12,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.menu),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books),
            label: 'Tasks',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_view_day_rounded),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.note_alt_rounded),
            label: 'Notes',
          ),
        ],
        backgroundColor: const Color(0xffffffff),
        selectedItemColor: const Color(0xff345c82),
        unselectedItemColor: const Color(0xffCBDBEA),
      ),
      floatingActionButton: AnimatedContainer(
        duration: const Duration(milliseconds: 500),
        height: isExpanded ? 80.0 : 50.0,
        width: isExpanded ? 80.0 : 50.0,
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          color: Colors.red,
          shape: BoxShape.circle,
          border: Border.all(
            color: Colors.grey,
            width: isExpanded ? 10.0 : 0.0,
          ),
        ),
        child: FloatingActionButton(
          onPressed: () {
            // Add your onPressed code here!
            showModalBottomSheet(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(20.0),
                  ),
                ),
                backgroundColor: Colors.white,
                context: context,
                builder: (context) {
                  return Wrap(
                    children: [
                      Container(
                        padding:
                        const EdgeInsets.fromLTRB(20.0, 12.0, 20.0, 0.0),
                        child: Container(
                          padding: const EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: const Color(0xffCBDBEA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: TextFormField(
                            decoration: const InputDecoration(
                              hintText: 'Add new Task Here',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ),
                      Container(
                          padding:const EdgeInsets.fromLTRB(18.0, 5.0, 20.0, 10.0),
                          child: Padding(
                            padding: EdgeInsets.only(
                                bottom: MediaQuery.of(context).viewInsets.bottom),
                            child: Row(
                              children:<Widget>[
                                Container(

                                  height: 30,

                                  decoration: BoxDecoration(
                                    color: Color(0xffCBDBEA),
                                    borderRadius: BorderRadius.circular(10),
                                  ),
                                  padding: EdgeInsets.symmetric(horizontal: 16),
                                  child: IntrinsicWidth(
                                    child: DropdownButton(
                                      style: const TextStyle(
                                        color: Color(0xff345c82),
                                        fontSize: 12,
                                        fontFamily: "Roboto Mono",

                                      ),
                                      value: dropdownValue,


                                        items: _tabs.map((String value) {
                                          return DropdownMenuItem<String>(
                                            value: value,
                                            child: Text(value),
                                          );
                                        }).toList(),

                                        onChanged: (String? newValue) {
                                          setState(() {
                                            dropdownValue = newValue!;
                                          });
                                          // Do something when an option is selected
                                        },

                                      underline: SizedBox.shrink(),
                                    ),
                                  ),
                                ),

                                IconButton(onPressed: ()
                                    {

                                    }, icon: Icon(Icons.edit_calendar_sharp)),
                                IconButton(onPressed: ()
                                    {

                                    }, icon: Icon(Icons.subdirectory_arrow_left)),
                                IconButton(onPressed: ()
                                    {

                                    }, icon: Icon(Icons.event_note_sharp)),



                              ]



                            ),
                          ))
                    ],

                  );
                });
          },
          tooltip: 'Add Task',
          elevation: 12,
          backgroundColor: const Color(0xff345c82),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
