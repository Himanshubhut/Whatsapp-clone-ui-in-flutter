import 'package:flutter/material.dart';
import 'package:whysapp/widgets/singlechat.dart';

class ChatsTab extends StatelessWidget {
  const ChatsTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ListView(
          children: const [
            SingleChatWidget(
                chatTitle: "Rutvik parmar",
                chatMessage: 'I wish GoT had better ending',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            SingleChatWidget(
                chatTitle: "Hardik makadiya",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Vishal gujarati",
                chatMessage: 'Valar Morghulis',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://static3.srcdn.com/wordpress/wp-content/uploads/2017/06/Jaqen-Hghar-Game-of-Thrones.jpg'),
            SingleChatWidget(
                chatTitle: "Jeet detroja",
                chatMessage: 'The North Remembers',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://i.insider.com/5ce420e193a15232821d3084?width=700'),
            SingleChatWidget(
                chatTitle: "Hiren makwana",
                chatMessage: 'Stick em\' with the pointy end',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
            SingleChatWidget(
                chatTitle: "Jay vadaliya",
                chatMessage: 'I wish GoT had better ending',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://static-koimoi.akamaized.net/wp-content/new-galleries/2020/09/maisie-williams-aka-arya-stark-of-game-of-thrones-someone-told-me-in-season-three-that-i-was-going-to-kill-the-night-king001.jpg'),
            SingleChatWidget(
                chatTitle: "Himanshu bhut",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Raj patel",
                chatMessage: 'Stick em\' with the pointy end',
                seenStatusColor: Colors.blue,
                imageUrl:
                    'https://i.insider.com/5cb3c8e96afbee373d4f2b62?width=700'),
            SingleChatWidget(
                chatTitle: "Heet hadvani",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://images.unsplash.com/photo-1525134479668-1bee5c7c6845?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8OHx8cmFuZG9tJTIwcGVvcGxlfGVufDB8fDB8fHww'),
            SingleChatWidget(
                chatTitle: "Manan patel",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Shyam patel",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Vivek hirani",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRDXCC-UB67rk0HtbmrDvVsIGvnPfTAMc_tSg&usqp=CAU'),
            SingleChatWidget(
                chatTitle: "Rajesh patel",
                chatMessage: 'Did you check Maisie\'s latest post?',
                seenStatusColor: Colors.grey,
                imageUrl:
                    'https://images.unsplash.com/photo-1507003211169-0a1dd7228f2d?q=80&w=1000&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8MTF8fHBlcnNvbmF8ZW58MHx8MHx8fDA%3D'),
          ],
        ),
      ),
    );
  }
}
