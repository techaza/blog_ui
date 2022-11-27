import 'package:flutter/material.dart';
import 'package:blog/data.dart';
import 'content.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: Blog(),
  ));
}

class Blog extends StatelessWidget {
  const Blog({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 50,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          title: Text(
            'Categories',
            style: TextStyle(color: Colors.black),
          ),
          centerTitle: true,
          leading: Icon(
            Icons.category_rounded,
            color: Colors.black,
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 15),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            )
          ],
          bottom: PreferredSize(
              child: TabBar(tabs: [
                Text('For You',
                    style: TextStyle(color: Colors.black, fontSize: 10)),
                Text('Design',
                    style: TextStyle(color: Colors.black, fontSize: 10)),
                Text('Beauty',
                    style: TextStyle(color: Colors.black, fontSize: 10)),
                Text('Education',
                    style: TextStyle(color: Colors.black, fontSize: 10)),
                Text('Entertainment',
                    style: TextStyle(color: Colors.black, fontSize: 10))
              ]),
              preferredSize: Size.fromHeight(50)),
        ),
        bottomNavigationBar:
            BottomNavigationBar(type: BottomNavigationBarType.fixed, items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.file_open), label: 'File'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_outline), label: 'Favourite'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Settings')
        ]),
        body: TabBarView(children: [
          Content(
            index: 3,
          ),
          Center(child: Text('page 1')),
          Center(child: Text('page 2')),
          Center(child: Text('page 3')),
          Center(child: Text('page 4')),
        ]),
      ),
    );
  }
}
