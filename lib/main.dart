import 'package:dot_navigation_bar/dot_navigation_bar.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key,});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int _selectedTab = 0;

  void _handleIndexChanged(int i) {
    setState(() {
      _selectedTab = i;

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Dot BottomBar",style: TextStyle(fontSize: 15),),
        backgroundColor: Colors.green,
      ),
      bottomNavigationBar: DotNavigationBar(
        borderRadius: 50.0,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.5),
            blurRadius: 0.09,
            offset: const Offset(0.0,0.1)
          )
        ],
        marginR: const EdgeInsets.all(15),
        itemPadding: EdgeInsets.only(left: 16,right: 16,bottom: 0,top: 6),
        currentIndex: _selectedTab,
        dotIndicatorColor: Colors.white,
        unselectedItemColor: Colors.grey[300],
        backgroundColor: Colors.green,
        onTap: _handleIndexChanged,
        items: [  
          DotNavigationBarItem(
            icon: const Icon(Icons.home),
            selectedColor: Colors.white,
            unselectedColor: Colors.grey[300]
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.favorite),
            selectedColor: Colors.white,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.search),
            selectedColor: Colors.white,
          ),
          DotNavigationBarItem(
            icon: const Icon(Icons.person),
            selectedColor: Colors.white,
          ),
        ],
      ),
      body: Center(
        child: Text(
         _selectedTab == 0 ? 
         'Menu 1' :
         _selectedTab == 1 ?
         'Menu 2' : 
         _selectedTab == 2 ?
         'Menu 3' : 'Menu 4',
         style: TextStyle(fontSize: 25),
            ),
      ),
    );
  }
}
