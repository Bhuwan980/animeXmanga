import 'package:flutter/material.dart';
import 'colors.dart';
import 'package:anime_world/pages/anime_home.dart';
import "package:anime_world/pages/anime_calandar.dart";
import "package:anime_world/pages/anime_profile.dart";
import 'package:anime_world/pages/anime_library.dart';
import 'package:anime_world/pages/anime_chat.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: MyColor.primary,
        title: const Text('animeXmanga'),
        leading: const Icon(Icons.menu),
        centerTitle: true,
      ),
      body: const NavigationBar(),
    );
  }
}

/* Buttom Navigationbar */
class NavigationBar extends StatefulWidget {
  const NavigationBar({super.key});
  @override
  State<NavigationBar> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<NavigationBar> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _buildPage(_currentIndex),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          type: BottomNavigationBarType.fixed,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          backgroundColor: MyColor.primary,
          selectedItemColor: MyColor.secondary,
          unselectedItemColor: Colors.white,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home_rounded),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_library_rounded),
              label: 'Library',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_month_rounded),
              label: 'Calandar',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.chat_rounded),
              label: 'Chat',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_2_rounded),
              label: 'Proile',
            ),
          ],
        ));
  }

  Widget _buildPage(int index) {
    switch (index) {
      case 0:
        return const HomeTab();
      case 1:
        return const LibraryTab();
      case 2:
        return const CalandarTab();
      case 3:
        return const ChatTab();
      case 4:
        return const ProfileTab();
      default:
        return Container();
    }
  }
}
