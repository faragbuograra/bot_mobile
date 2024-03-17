import 'package:flutter/material.dart';
import 'package:my_app/View/FavProductScreen.dart';
import 'package:my_app/View/ProductScreen.dart';

class Main1 extends StatefulWidget {
  const Main1({super.key});

  @override
  State<Main1> createState() => _Main1State();
}

class _Main1State extends State<Main1> {
  List<Widget> _widgetOptions = [];
  @override
  int _selectedIndex = 0;

  void initState() {
    super.initState();
    _widgetOptions = [
      Container(
        child: home(),
      ),
      FavProductListView(),
      ProductListView(),
    ];
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 36, 37, 39),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'School',
          ),
        ],
        currentIndex: _selectedIndex,
        backgroundColor: const Color.fromARGB(255, 36, 37, 39),
        selectedItemColor: Colors.amber[800],
        onTap: _onItemTapped,
      ),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 36, 37, 39),
        title: const Row(
          children: [
            Text(
              'Notification',
              style: TextStyle(color: Colors.white, fontSize: 28),
            ),
          ],
        ),
        actions: const [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Icon(
                  Icons.search,
                  size: 30,
                  color: Colors.white,
                ),
              )
            ],
          )
        ],
      ),
      body: _widgetOptions.elementAt(_selectedIndex),
    );
  }

  SingleChildScrollView home() {
    return SingleChildScrollView(
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'New',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            color: const Color.fromARGB(255, 37, 47, 59),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(225.0),
                          child: Image.network(
                            "https://i.pinimg.com/550x/75/06/5d/75065da93d181c15f8266289313231c6.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'IT LIMU 2024',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '.....................................................',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '24 m',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(148, 255, 255, 255),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 37, 47, 59),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(225.0),
                          child: Image.network(
                            "https://i.pinimg.com/550x/75/06/5d/75065da93d181c15f8266289313231c6.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'IT LIMU 2024',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '.....................................................',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '24 m',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(148, 255, 255, 255),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Container(
            color: const Color.fromARGB(255, 37, 47, 59),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(225.0),
                          child: Image.network(
                            "https://i.pinimg.com/550x/75/06/5d/75065da93d181c15f8266289313231c6.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'IT LIMU 2024',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '.....................................................',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '24 m',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(148, 255, 255, 255),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(225.0),
                          child: Image.network(
                            "https://i.pinimg.com/550x/75/06/5d/75065da93d181c15f8266289313231c6.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'IT LIMU 2024',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '.....................................................',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '24 m',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(148, 255, 255, 255),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Row(
              children: [
                Text(
                  'Today',
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 100,
                        height: 100,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(225.0),
                          child: Image.network(
                            "https://i.pinimg.com/550x/75/06/5d/75065da93d181c15f8266289313231c6.jpg",
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 150,
                        child: const Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              Row(
                                children: [
                                  Text(
                                    textAlign: TextAlign.start,
                                    'IT LIMU 2024',
                                    style: TextStyle(
                                        color: Colors.white, fontSize: 18),
                                  ),
                                ],
                              ),
                              Text(
                                '.....................................................',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 14),
                              ),
                              Row(
                                children: [
                                  Text(
                                    '24 m',
                                    style: TextStyle(
                                        color:
                                            Color.fromARGB(148, 255, 255, 255),
                                        fontSize: 12),
                                  ),
                                ],
                              ),
                            ]),
                      ),
                    ],
                  ),
                  Container(
                      child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(
                      Icons.pause_rounded,
                      size: 30,
                      color: Colors.white,
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class fun extends StatelessWidget {
  const fun({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.push(context,
          MaterialPageRoute(builder: (context) => FavProductListView())),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.home_filled,
            color: Colors.red,
            size: 24,
          ),
          Text(
            'Home',
            style: TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
