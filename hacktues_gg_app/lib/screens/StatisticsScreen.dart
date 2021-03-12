import 'package:flutter/material.dart';

class StatisticsScreen extends StatefulWidget {
  @override
  _StatisticsScreenState createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  List<Widget> get _pages => [
        Center(
          child: Text("Statistics1"),
        ),
        Center(
          child: Text("Statistics2"),
        ),
        Center(
          child: Text("Statistics3"),
        ),
      ];

  int _currentTab = 0;

  final _pageController = PageController();

  Widget _buildPageView() => PageView(
        controller: _pageController,
        onPageChanged: (index) => pageChanged(index),
        children: _pages,
      );

  void pageChanged(int index) {
    setState(() => _currentTab = index);
  }

  void bottomTapped(int index) {
    setState(() {
      _currentTab = index;
      _pageController.animateToPage(index,
          duration: Duration(milliseconds: 500), curve: Curves.ease);
    });
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('Statistics'),
        ),
        body: _buildPageView(),
      );
}
