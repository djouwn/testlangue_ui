import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';
import 'package:test_langue_ui/pages/page_view_lessons.dart';


class Modules extends StatelessWidget {
  const Modules({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> items = ["Chapter 1", "Chapter 2", "Chapter 3", "Chapter 4", "Chapter 5", "Chapter 6", "Chapter 7", "Chapter 8", "Chapter 9", "Chapter 10"];

    return SafeArea(
      child: Scaffold(
        
        appBar: AppBar(
            title: const Text('Chapters',style: TextStyle(fontWeight: FontWeight.w500),),
             actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications),
            tooltip: 'Show Snackbar',
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('This is a snackbar')));
            },
          ),],
        ),
        body: Container(
          width: double.infinity,
          height: double.infinity,
          color: Colors.white,
          child: ListView.builder(
            itemCount: items.length,
            itemBuilder: (context, index) {
              return GestureDetector(
onTap: () {
      Navigator.of(context).push(
      MaterialPageRoute(builder: (context) => const PageViewLessons(), fullscreenDialog: false),
    );
},
                child:Card(
                elevation: 0.0,
                child: ListTile(
                  leading: CircleAvatar(
                    child: Image.network(
                      'https://i.pinimg.com/originals/ec/f9/cf/ecf9cf8b07dcb148f7a12afeb927392b.jpg',
                      width: 50,
                      height: 50,
                    ),
                  ),
                  title: Text(items[index],style: const TextStyle(color: AppColors.bluebutton,fontWeight: FontWeight.w400),),
                  subtitle: const Text('Le subjonctif présent'),
                
                ),
              ));
            },
          ),
        ),
      ),
    );
  }
}