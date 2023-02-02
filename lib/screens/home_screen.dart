import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/widgets/favourite_contacts.dart';
import 'package:chat_ui/widgets/recent_chats.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import '../widgets/category_selector.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Theme.of(context).primaryColor,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.menu),
        iconSize: 30.0,
        color: Colors.white,
        onPressed: (() {
          
        }),
        
        ),
        title: Text('Chats', style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold,
        ),
        ),
        elevation: 0.0,
        actions: <Widget>[
          IconButton(icon: Icon(Icons.search),
        iconSize: 30.0,
        color: Colors.white,
        onPressed: (() {
          
        }),
        
        ),

        ]
      ),
      body: Column(
        children: <Widget>[
         CategorySelector(),
         Expanded(
           child: Container(
                 
            decoration: BoxDecoration(color: Theme.of(context).accentColor,
            borderRadius: BorderRadius.only(topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
            )
            ),

            child: Column(children: [
              favouriteContacts(),
              RecentChats(),

            
            ]),
           
           ),
         ),
        ],

      )

    );
  }
}