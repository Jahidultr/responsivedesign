import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:responsivedesign/presentation/widgets/responsive_builder.dart';

import '../widgets/nav_menu.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      mobile: _buildMobileLayout(),
      tablet: _buildTabletLayout(),
      desktop: _buildDesktopLayout(),
    );
  }

  Widget _buildMobileLayout() {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const SafeArea(
        child: NevMenu(),
      ),
      body: const Center(
        child: Text('Mobile'),
      ),
    );
  }

  Widget _buildTabletLayout() {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      appBar: AppBar(
        title: const Text(
          'Home',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.pinkAccent,
      ),
      drawer: const SafeArea(
        child: NevMenu(),
      ),
      body: const Center(
        child: Text('Tablet'),
      ),
    );
  }

  Widget _buildDesktopLayout() {
    return const Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          NevMenu(),
          Expanded(
            child: Center(
              child: Text('Desktop'),
            ),
          )
        ],
      ),
    );
  }
}
