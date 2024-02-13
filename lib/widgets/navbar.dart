import 'package:flutter/material.dart';
import 'package:test_langue_ui/colors/colors.dart';

class BottomNavigationBarExample extends StatefulWidget {
  const BottomNavigationBarExample({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _BottomNavigationBarExampleState createState() =>
      _BottomNavigationBarExampleState();
}

class _BottomNavigationBarExampleState
    extends State<BottomNavigationBarExample> {
  int _selectedIndex = 0;
  final ScrollController _homeController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return 
       ClipRect(
        child: Container(
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(20.0)),
          ),
          child: BottomNavigationBar(
            items: const <BottomNavigationBarItem>[
            
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                
                ),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.favorite,
                  
                ),
                label: 'Favourite',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                 
                ),
                label: 'Settings',
              ),
                BottomNavigationBarItem(
                icon: Icon(Icons.chat_bubble),
                label: 'Chatbot',
                
              ),
            ],
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.redAccent[100],              unselectedItemColor: AppColors.bluebutton,
            onTap: (int index) {
              switch (index) {
                case 0:
                  if (_selectedIndex == index) {
                    _homeController.animateTo(
                      0.0,
                      duration: const Duration(milliseconds: 500),
                      curve: Curves.easeOut,
                    );
                  }
                  case 1:
                  
                  break;
              }
              setState(() {
                _selectedIndex = index;
              });
            },
          ),
        ),
      );
  }
}