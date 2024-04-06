import 'package:flutter/material.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
    body: ListView(
      children: [
         DrawerHeader(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: const BorderRadius.all(Radius.circular(40)),
                child: Image.network("https://media-del1-2.cdn.whatsapp.net/v/t61.24694-24/422431207_239683495855301_4352889075903152838_n.jpg?ccb=11-4&oh=01_ASA1HwZ56E1R9Qh3vcN25niuNKoyln4ZM0ZJWCwZjxVrsQ&oe=661E53A8&_nc_sid=e6ed6c&_nc_cat=104",height: 80,width: 80,)
              ),
              const SizedBox(height: 10,),
              const Text(
                'Chandraprakash ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 16,
                ),
              ),
              const SizedBox(height: 4,),
              const Text(
                'Mobile Application developer ',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 12,
                ),
              ),
            ],
          ),
        ),
        Divider(thickness: 2,color: Colors.grey.shade200,),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey[200],
          ),
          child: const ListTile(
            leading: Icon(Icons.home,color: Colors.blue,),
            title: Text('Home'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey[200],
          ),
          child: const ListTile(
            leading: Icon(Icons.chat,color: Colors.blue,),
            title: Text('Chat'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey[200],
          ),
          child:  ListTile(
            leading: Icon(Icons.feed,color: Colors.blue,),
            title: Text('Feed'),
            trailing: Icon(Icons.arrow_right),
            onTap: (){
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("feed")));
            },
          ),
        ),
        Container(
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(5)),
            color: Colors.grey[200],
          ),
          child: const ListTile(
            leading: Icon(Icons.person_outline,color: Colors.blue,),
            title: Text('profile'),
            trailing: Icon(Icons.arrow_right),
          ),
        ),

      ],
    ),
    );
  }
}
