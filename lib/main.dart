import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ScaffoldSample(),
    );
  }
}

// Main Scaffold widget with Drawer, FAB, and Bottom Navigation Bar
class ScaffoldSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Affirmation Cards"),
      ),
      body: AffirmationList(), // Display the list of Affirmation Cards
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print("Floating Action Button Pressed");
        },
        child: Icon(Icons.add),
        elevation: 10,
      ),
      drawer: Drawer(
        child: ListView(
          children: [
            DrawerHeader(
              child: Text("My First Drawer"),
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
            ),
            ListTile(
              title: Text("Item 1"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text("Item 2"),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: const [
          BottomNavigationBarItem(
            label: "Home",
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: "Search",
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: "Profile",
            icon: Icon(Icons.account_circle),
          ),
        ],
        onTap: (int indexOfItem) {
          print("Tapped item index: $indexOfItem");
        },
      ),
    );
  }
}

// Affirmation Card widget
class AffirmationCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      margin: EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "assets/images.jpg", // Updated image
            height: 194,
            width: 600,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              "Affirmation Title",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 40),
            ),
          ),
        ],
      ),
    );
  }
}

// List of Affirmation Cards
class AffirmationList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (ListView(
      children: [AffirmationCard(), AffirmationCard(), AffirmationCard()],
    ));
  }
}
