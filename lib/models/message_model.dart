import 'package:chat_ui/models/user_model.dart';

class Message {
  final User sender;
  final String time;
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

final User currentUser = User(
  id: 0,
  name: 'current User',
  imageUrl: 'assets/images/steven.jpg',
);
final User greg = User(
  id: 1,
  name: 'Greg',
  imageUrl: 'assets/images/greg.jpg',
);
final User james = User(
  id: 2,
  name: 'James',
  imageUrl: 'assets/images/james.jpg',
);
final User manis = User(
  id: 3,
  name: 'Manish',
  imageUrl: 'assets/images/manis.jpg',
);
final User roshani = User(
  id: 4,
  name: 'Roshani',
  imageUrl: 'assets/images/roshani.jpg',
);
final User Didi = User(
  id: 5,
  name: 'Didi',
  imageUrl: 'assets/images/Didi.jpg',
);
final User Ex = User(
  id: 6,
  name: 'Ex',
  imageUrl: 'assets/images/Ex.jpg',
);
final User sam = User(
  id: 7,
  name: 'Saam',
  imageUrl: 'assets/images/sam.jpg',
);
final User Thulbro = User(
  id: 8,
  name: 'Thul Didi',
  imageUrl: 'assets/images/steven.jpg',
);
List<User> favourites = [roshani, greg, sam, manis, Didi, Thulbro];

List<Message> chats = [
  Message(
      sender: roshani,
      time: '6:30 PM',
      text: 'I love you',
      isLiked: true,
      unread: false),
  Message(
      sender: greg,
      time: '7:30 PM',
      text: 'hey bro do yoy wanna play football',
      isLiked: false,
      unread: true),
  Message(
      sender: sam,
      time: '2:30 PM',
      text: 'call me please',
      isLiked: true,
      unread: true),
  Message(
      sender: manis,
      time: '1:30 PM',
      text: 'manish chutiya',
      isLiked: true,
      unread: true),
  Message(
      sender: Didi,
      time: '3:30 PM',
      text: 'k grdexas',
      isLiked: false,
      unread: false),
        Message(
      sender: Thulbro,
      time: '3:50 PM',
      text: 'k xa haljhabar',
      isLiked: true,
      unread: false),
       Message(
      sender: james,
      time: '3:50 PM',
      text: 'hlo how is it',
      isLiked: true,
      unread: false),
       Message(
      sender: Ex,
      time: '3:50 PM',
      text: 'i am here',
      isLiked: true,
      unread: false),

];

List<Message> messages = [
  Message(
      sender: Ex,
      time: '6:30 PM',
      text: 'I miss you babe, please come back to me',
      isLiked: false, 
      unread: false),
  Message(
      sender: currentUser,
      time: '6:30 PM',
      text: 'I am god bro',
      isLiked: true, 
      unread: true),
   Message(
      sender: Ex,
      time: '6:30 PM',
      text: 'I love you',
      isLiked: false, 
      unread: false),
  Message(
      sender: currentUser,
      time: '7:30 PM',
      text: 'Sorry I have moved on',
      isLiked: true,
      unread: true),
  Message(
      sender: Ex,
      time: '2:30 PM',
      text: 'Oo really but why',
      isLiked: true,
      unread: false),
  Message(
      sender: currentUser,
      time: '1:30 PM',
      text: 'sorry i dont know',
      isLiked: true,
      unread: true),
  Message(
      sender: currentUser,
      time: '3:30 PM',
      text: 'just go away',
      isLiked: true,
      unread: false),

       Message(
      sender: Ex,
      time: '3:50 PM',
      text: 'ok if thats what u want',
      isLiked: true,
      unread: false),
];
