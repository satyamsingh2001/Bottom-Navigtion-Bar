import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentindex = 0;
  final Screen = [
    Text("page 1"),
    Text("page 2"),
    Text("page 3"),


  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Screen[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.shifting,
        fixedColor: Colors.white,
        // unselectedItemColor: Colors.black,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            backgroundColor: Color(0xff272139),),
          BottomNavigationBarItem(
              icon: Icon(Icons.comment_bank),
              label: 'Transaction',
            backgroundColor: Color(0xff272139),),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_outlined),
              label: 'Account',
            backgroundColor: Color(0xff272139),),

        ],
        onTap: (index){
          setState(() {
            _currentindex = index;
          });
        },
      ),

    );
  }
}
