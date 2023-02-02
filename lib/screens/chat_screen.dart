import 'package:chat_ui/models/message_model.dart';
import 'package:chat_ui/models/user_model.dart';
import 'package:flutter/material.dart';

class ChatScreen extends StatefulWidget {
  final User user;
  ChatScreen({required this.user});
  //we did this because we want user name to show on appbar

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {
  _buildMessage(Message message, bool isMe) {
    //here we wrapped container with the row to add heart sign as whole message is a row
    return Row(
      children: [
        Container(
          margin: isMe
              ? EdgeInsets.only(top: 7, bottom: 7, left: 80)
              : EdgeInsets.only(
                  top: 7,
                  bottom: 7,
                ),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
          width: MediaQuery.of(context).size.width * 0.75,
          decoration: BoxDecoration(
            color: isMe ? Theme.of(context).accentColor : Color(0xFFFFEFEE),
            // borderRadius: isMe
            //     ? BorderRadius.all(
            //  Radius.circular(15),
            //
            //       )
            //     : BorderRadius.only(
            //         topRight: Radius.circular(15),
            //         bottomRight: Radius.circular(15),
            //       ),
            borderRadius: BorderRadius.all(Radius.circular(15)),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                message.time,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(
                height: 4,
              ),
              Text(
                message.text,
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
        ),
        //here we added !isMe because we dont wnat to show like message option for our option as well
        !isMe
            ? IconButton(
                icon: message.isLiked
                    ? Icon(Icons.favorite)
                    : Icon(Icons.favorite_border),
                iconSize: 25,
                color: message.isLiked ? Colors.red : Colors.blueGrey,
                onPressed: (() {}))
            : SizedBox.shrink(),
      ],
    );
  }

  _buildMessageComposer() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 8),
      height: 70,
      color: Colors.white,
      child: Row(children: [
        IconButton(icon: Icon(Icons.photo),
        iconSize: 30,
        color: Colors.blueGrey,
         onPressed: () {  },),
         Expanded(child: TextField(
          textCapitalization: TextCapitalization.sentences,
          onChanged: (value){},
          decoration: InputDecoration.collapsed(hintText: 'Send a message...'),
         )),

          IconButton(icon: Icon(Icons.send),
        iconSize: 25,
        color: Colors.blueGrey,
         onPressed: () {  },)
      ]),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
          backgroundColor: Colors.blueGrey,
          title: Text(
            widget.user.name,
            style: TextStyle(fontSize: 23, fontWeight: FontWeight.bold),
          ),
          elevation: 0.0,
          actions: <Widget>[
            IconButton(
                icon: Icon(Icons.more_horiz),
                iconSize: 30.0,
                color: Colors.white,
                onPressed: (() {})),
          ]),
      body: GestureDetector(
       //we here wrapped column with GestureDetector and used onTap following code
       //the only function of this code is to minimize the keyboard when we tap the screen after writting
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                ),
                //
                child: ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0)),
                  child: ListView.builder(
                    reverse: true,
                    //this reverse reverses the order of meaasages from bottom to top
                    padding: EdgeInsets.only(top: 15),
                    itemCount: messages.length,
                    itemBuilder: (BuildContext context, int index) {
                      final Message message = messages[index];
                      final bool isMe = message.sender.id == currentUser.id;
                      return _buildMessage(message, isMe);
                      //here we returned _buildMessage function which message and a bool isMe
                      //this function is then defined above
                    },
                  ),
                ),
              ),
            ),
            _buildMessageComposer(),
          ],
        ),
      ),
    );
  }
}
