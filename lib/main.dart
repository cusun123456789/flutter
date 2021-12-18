import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  static const String _title = 'Flutter Code';

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: _title,
      home: MyStatefulWidget(),
    );
  }
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle =
      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const List<Widget> _widgetOptions = <Widget>[
    Text(
      'Index 0: Home',
      style: optionStyle,
    ),
    Text(
      'Index 1: Calendar',
      style: optionStyle,
    ),
    Text(
      'Index 2: User',
      style: optionStyle,
    ),
    Text(
      'Index 3: Messenger',
      style: optionStyle,
    ),
    Text(
      'Index 4: Settings',
      style: optionStyle,
    ),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hoang Cong Quyet'),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, size: 30),
            label: 'Home',
            backgroundColor: Colors.blue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.assignment, size: 30),
            label: 'Calendar',
            backgroundColor: Colors.blueAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.airline_seat_individual_suite_rounded, size: 30),
            label: 'User',
            backgroundColor: Colors.blueGrey,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.messenger, size: 30),
            label: 'Messenger',
            backgroundColor: Colors.lightBlue,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, size: 30),
            label: 'Settings',
            backgroundColor: Colors.lightBlueAccent,
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        // ignore: prefer_const_constructors
        selectedLabelStyle: TextStyle(fontSize: 15),
        onTap: _onItemTapped,
      ),
    );
  }
}
// import 'package:flutter/material.dart';

// class CustomBottomNavigationBar extends StatefulWidget {
//   const CustomBottomNavigationBar({Key? key}) : super(key: key);

//   @override
//   _CustomBottomNavigationBarState createState() =>
//       _CustomBottomNavigationBarState();
// }

// class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
//   List<Widget> tabs = [
//     const Center(child: Text("Home", style: TextStyle(color: Colors.white))),
//     const Center(child: Text("Search", style: TextStyle(color: Colors.white))),
//     const Center(child: Text("Profile", style: TextStyle(color: Colors.white))),
//     const Center(
//         child: Text("Notification", style: TextStyle(color: Colors.white))),
//     const Center(
//         child: Text("Add item", style: TextStyle(color: Colors.white))),
//   ];

//   int currentPage = 0;

//   setPage(index) {
//     setState(() {
//       currentPage = index;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey.shade800,
//       appBar: AppBar(
//         elevation: 0,
//         backgroundColor: Colors.grey.shade900,
//         title: const Text('Navigation Bar'),
//       ),
//       body: tabs[currentPage],
//       floatingActionButton: FloatingActionButton(
//         backgroundColor: Colors.blue.shade400,
//         onPressed: () => setPage(4),
//         child: const Icon(
//           Icons.add,
//           color: Colors.white,
//           size: 30,
//         ),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//           color: Colors.grey.shade900,
//           shape: const CircularNotchedRectangle(),
//           child: Container(
//               height: 80,
//               padding: const EdgeInsets.symmetric(horizontal: 20),
//               child: Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                 children: [
//                   IconButton(
//                     icon: Icon(
//                       Icons.home,
//                       color: currentPage == 0 ? Colors.white : Colors.grey,
//                       size: 30,
//                     ),
//                     onPressed: () => setPage(0),
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.search,
//                       color: currentPage == 0 ? Colors.white : Colors.grey,
//                       size: 30,
//                     ),
//                     onPressed: () => setPage(1),
//                   ),
//                   SizedBox.shrink(),
//                   IconButton(
//                     icon: Icon(
//                       Icons.person,
//                       color: currentPage == 0 ? Colors.white : Colors.grey,
//                       size: 30,
//                     ),
//                     onPressed: () => setPage(2),
//                   ),
//                   IconButton(
//                     icon: Icon(
//                       Icons.notifications_outlined,
//                       color: currentPage == 0 ? Colors.white : Colors.grey,
//                       size: 30,
//                     ),
//                     onPressed: () => setPage(3),
//                   )
//                 ],
//               ))),
      // bottomNavigationBar: FlashyTabBar(
      //   selectedIndex: currentPage,
      //   showElevation: true,
      //   onItemSelected: (index) => setState(() {
      //     currentPage = index;
      //   }),
      //   items: [
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.event),
      //       title: Text('Events'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.search),
      //       title: Text('Search'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.highlight),
      //       title: Text('Highlights'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('Settings'),
      //     ),
      //     FlashyTabBarItem(
      //       icon: Icon(Icons.settings),
      //       title: Text('한국어'),
      //     ),
      //   ],
//       // ),
//     );
//   }
// }
