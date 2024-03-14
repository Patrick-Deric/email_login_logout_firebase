import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';


class HomePage extends StatefulWidget {
   HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final user = FirebaseAuth.instance.currentUser!;

  //sign user out method
  void signUserOut(){
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        color: Colors.black,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20),
          child: GNav(
            backgroundColor: Colors.black,
            color: Colors.white,
            activeColor: Colors.white,
            tabBackgroundColor: Colors.grey.shade800,
            gap: 8,
            padding: EdgeInsets.all(16),
            tabs: [
              GButton(icon: Icons.home,
              text: 'Home'),
              GButton(icon: Icons.favorite_border,
              text: 'Likes'),
              GButton(icon: Icons.search,
              text: 'Search'),
              GButton(icon: Icons.settings,
              text: 'Settings'),
            ],
          ),
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [IconButton(
            onPressed: signUserOut,
            icon: Icon(Icons.logout, color: Colors.white,),
        ),
        ],
      ),
      body: Center(child: Text("LOGADO COMO: " + user.email!,
    style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 20),
      ),
      ),
    );

  }
}
