import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hacktues_gg_app/blocs/CityBloc.dart';
import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/blocs/CityPreviousStatisticsBloc.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/screens/main/AverageStatsScreen.dart';
import 'package:hacktues_gg_app/screens/main/GraphicType.dart';
import 'package:hacktues_gg_app/screens/main/StatsScreen.dart';
import 'package:hacktues_gg_app/utils/CurrentContext.dart';
import 'package:hacktues_gg_app/widgets/HackTUESText.dart';
import 'package:hacktues_gg_app/widgets/NavDrawer.dart';

class HomeScreen extends StatefulWidget {
  final CityBloc cityBloc;
  final CityAverageBloc cityAverageBloc;
  final CityPreviousStatisticsBloc previousStatisticsBloc;

  const HomeScreen(
      this.cityBloc, this.cityAverageBloc, this.previousStatisticsBloc);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with CurrentContext {
  List<Widget> get _aggregationScreens => [
    AverageStatsScreen(
        errorText: 'Something went wrong with the aggregation!'),
    Center(
      child: Text("Text2"),
    ),
    Center(
      child: Text("Text3"),
    ),
  ];

  List<Widget> get _statisticsScreens => [
    StatsScreen($(),
        errorText: 'Something went wrong with fetching the data',
        max: 200,
        min: 0,
        interval: 20,
        graphicType: GraphicType.Pollution),
    StatsScreen($(),
        errorText: 'Something went wrong with fetching the data',
        max: 200,
        min: 0,
        interval: 20,
        graphicType: GraphicType.Money),
    StatsScreen($(),
        errorText: 'Something went wrong with fetching the data',
        max: 200,
        min: 0,
        interval: 20,
        graphicType: GraphicType.BuildingCount),
  ];

  List<GButton> get _aggregationTabs => [
    // Change the icons, text and stuff cuz this is not e-bikify
    GButton(
      gap: 8,
      icon: Icons.home,
      iconActiveColor: Colors.redAccent,
      iconColor: Colors.black,
      textColor: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      backgroundColor: Colors.greenAccent,
      text: 'Home',
    ),
    GButton(
        gap: 8,
        icon: Icons.battery_charging_full_sharp,
        text: 'Bat. status',
        iconActiveColor: Colors.redAccent,
        iconColor: Colors.black,
        textColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        backgroundColor: Colors.lightBlue),
    GButton(
      gap: 8,
      icon: Icons.location_on_sharp,
      iconActiveColor: Colors.redAccent,
      iconColor: Colors.black,
      textColor: Colors.black,
      backgroundColor: Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      text: 'Location',
    ),
  ];

  List<GButton> get _statisticsTabs => [
    // Change the icons, text and stuff cuz this is not e-bikify
    GButton(
      gap: 8,
      icon: Icons.home,
      iconActiveColor: Colors.redAccent,
      iconColor: Colors.black,
      textColor: Colors.black,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      backgroundColor: Colors.greenAccent,
      text: 'Stats1',
    ),
    GButton(
        gap: 8,
        icon: Icons.battery_charging_full_sharp,
        text: 'Stats2',
        iconActiveColor: Colors.redAccent,
        iconColor: Colors.black,
        textColor: Colors.black,
        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
        backgroundColor: Colors.lightBlue),
    GButton(
      gap: 8,
      icon: Icons.location_on_sharp,
      iconActiveColor: Colors.redAccent,
      iconColor: Colors.black,
      textColor: Colors.black,
      backgroundColor: Colors.yellow,
      padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
      text: 'Stats3',
    ),
  ];

  List<GButton> _buildTabs() =>
      _isShowingStatistics ? _statisticsTabs : _aggregationTabs;

  int _currentTab = 0;

  bool _isShowingStatistics = false;

  final _pageController = PageController();

  Widget _buildPageView() => PageView(
    controller: _pageController,
    onPageChanged: (index) => pageChanged(index),
    children:
    _isShowingStatistics ? _statisticsScreens : _aggregationScreens,
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
  void initState() {
    super.initState();
    widget.cityBloc.sendEvent(CityEvent.fetchCityWithId(this.currentCityId));
    widget.previousStatisticsBloc.fetchInitialStatistics(this.currentCityId);
  }

  @override
  Widget build(BuildContext context) => Scaffold(
    body: NestedScrollView(
      headerSliverBuilder: (context, _) => [
        SliverAppBar(
          expandedHeight: 200.0,
          floating: false,
          pinned: true,
          actions: [
            ElevatedButton(
                onPressed: () {
                  setState(() {
                    _isShowingStatistics = !_isShowingStatistics;
                  });
                },
                child: Text('Toggle'))
          ],
          flexibleSpace: FlexibleSpaceBar(
              centerTitle: false,
              title: const HackTUESText(
                "Sliver with bottom navbar",
                fontSize: 16.0,
              ),
              // think of some interesting background image
              background: Image.network(
                "https://images.pexels.com/photos/396547/pexels-photo-396547.jpeg?auto=compress&cs=tinysrgb&h=350",
                fit: BoxFit.cover,
              )),
        )
      ],
      body: _buildPageView(),
    ),
    drawer: NavigationDrawer(),
    bottomNavigationBar: SafeArea(
      // wrap with Opacity, listen notifications from the scrollView and update the opacity.
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(100)),
              boxShadow: [
                BoxShadow(
                    spreadRadius: -10,
                    blurRadius: 60,
                    color: Colors.black.withOpacity(.4),
                    offset: Offset(0, 25))
              ]),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 3),
            child: GNav(
                gap: 8,
                activeColor: Colors.white30,
                iconSize: 24,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                duration: Duration(milliseconds: 800),
                curve: Curves.easeOutExpo,
                tabBackgroundColor: Colors.lightBlue,
                textStyle: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                tabs: _buildTabs(),
                selectedIndex: _currentTab,
                onTabChange: (index) {
                  bottomTapped(index);
                }),
          ),
        )),
  );
}
