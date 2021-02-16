import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  const Profile({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        ListTile(
          leading: Icon(Icons.arrow_back),
          trailing: Icon(Icons.text_fields),
        ),
        ListTile(
          leading: Container(
            width: 50,
            height: 90,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              image: DecorationImage(
                image: NetworkImage(
                    'https://pbs.twimg.com/profile_images/579079832207675393/DZiYnnfy_400x400.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          title: Text(
            "Emam Bangladen",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          subtitle: Text("fasion model"),
        ),
        ListTile(
          leading: Icon(Icons.call),
          title: Text('(0174544547)'),
        ),
        ListTile(
          leading: Icon(Icons.mail),
          title: Text('(mdabubakarsiddik@gmail.com)'),
        ),
        Row(
          children: [
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '252.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('welle')
                  ],
                ),
              ),
              width: 180,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
            ),
            Container(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '252.00',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text('welle')
                  ],
                ),
              ),
              width: 180,
              height: 100,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
            ),
          ],
        ),
        rows(icon: Icons.favorite, name: ' your favorites'),
        rows(icon: Icons.payment, name: 'payment'),
        rows(icon: Icons.child_friendly, name: 'Your friends'),
        rows(icon: Icons.pregnant_woman, name: 'Promotions'),
        rows(icon: Icons.settings, name: 'Settings'),
        Divider(
          color: Colors.black87,
        ),
        rows(icon: Icons.logout, name: 'Log out'),
      ],
    ));
  }

  rows({IconData icon, String name}) {
    return ListTile(
      leading: Icon(icon),
      title: Text('$name'),
    );
  }
}
