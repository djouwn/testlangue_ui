import 'package:flutter/material.dart';
import 'package:test_langue_ui/widgets/two_seperated_icon.dart';
class NotificationW extends StatelessWidget {
  const NotificationW({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(child:
      Scaffold(

      body: ListView(
        children: <Widget>[
         const TwoSeperatedIcon(tutornale: 'Notifications',),
         const SizedBox(height: 10,),
         Column(children:[
        ListTile(
  leading: CircleAvatar(
    child: Image.network(
      'https://i.pinimg.com/originals/ec/f9/cf/ecf9cf8b07dcb148f7a12afeb927392b.jpg',
      width: 50,
      height: 50,
    ),
  ),
  title: const Text('Mehdi Mensi'),
  subtitle: const Text('Has assigned you to a course'),
  trailing: const Icon(Icons.delete),
),
          const Divider(height: 0),
           ListTile(
           leading: CircleAvatar(child: Image.network('https://i.pinimg.com/originals/7a/35/39/7a35391475b5f9cdba0e33e4e6715692.jpg',
      width: 50,
      height: 50,)),
            title: const Text('Lara Croft'),
            subtitle: const Text(
                'Has assigned you to a course'),
            trailing: const Icon(Icons.delete),
          ),
          const Divider(height: 0),
           ListTile(
            leading: CircleAvatar(child: Image.network('https://i.pinimg.com/originals/05/a0/e2/05a0e247109f30541f44e89dbdd847e9.jpg')),
            title: const Text('Headline'),
            subtitle: const Text(
                "Longer supporting text to "),
            trailing: const Icon(Icons.delete),
        
          ),
          const Divider(height: 0),
        ],
      ),
    ])));
  }
}
