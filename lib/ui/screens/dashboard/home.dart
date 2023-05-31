import 'package:ardilla/ui/screens/dashboard/mainscreen.dart';
import 'package:ardilla/ui/screens/dashboard/widget/drawer_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        width: 260.w,
        child: const DrawerWidget(),
      ),
      body: Stack(
        children: [
          Builder(
            builder: (context) => const MainScreen(),
          ),
        ],
      ),
    );
  }
}
