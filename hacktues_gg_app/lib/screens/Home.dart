import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:hacktues_gg_app/blocs/CityAverageBloc.dart';
import 'package:hacktues_gg_app/blocs/CityBloc.dart';
import 'package:hacktues_gg_app/blocs/CityPreviousStatisticsBloc.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/AverageCityEvent.dart';
import 'package:hacktues_gg_app/event/CityEvent.dart';
import 'package:hacktues_gg_app/model/City.dart';
import 'package:hacktues_gg_app/screens/main/AverageStatsScreen.dart';
import 'package:hacktues_gg_app/screens/main/ComparisonScreen.dart';
import 'package:hacktues_gg_app/screens/main/GraphicType.dart';
import 'package:hacktues_gg_app/screens/main/StatsScreen.dart';
import 'package:hacktues_gg_app/state/ResponseState.dart';
import 'package:hacktues_gg_app/utils/CurrentContext.dart';
import 'package:hacktues_gg_app/widgets/HackTUESText.dart';
import 'package:hacktues_gg_app/widgets/NavDrawer.dart';

final GlobalKey<NestedScrollViewState> scrollKey = GlobalKey();

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
        ComparisonScreen(
          errorText: 'Something went wrong with the comparison!',
        )
      ];

  List<Widget> get _statisticsScreens => [
        StatsScreen($(),
            errorText: 'Something went wrong with fetching pollution!',
            max: 200,
            min: 0,
            interval: 20,
            graphicType: GraphicType.Pollution),
        StatsScreen($(),
            errorText: 'Something went wrong with fetching money!',
            max: 200,
            min: 0,
            interval: 20,
            graphicType: GraphicType.BuildingCount),
        StatsScreen($(),
            errorText: 'Something went wrong with fetching buildingCount',
            max: 200,
            min: 0,
            interval: 20,
            graphicType: GraphicType.BuildingCount),
      ];

  List<GButton> get _aggregationTabs => [
        GButton(
          gap: 8,
          icon: Icons.home,
          iconActiveColor: Colors.redAccent,
          iconColor: Colors.white,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          backgroundColor: Colors.greenAccent,
          text: 'Average',
        ),
        GButton(
            gap: 8,
            icon: Icons.bar_chart,
            text: 'Comparison',
            iconActiveColor: Colors.redAccent,
            iconColor: Colors.white,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            backgroundColor: Colors.lightBlue),
      ];

  List<GButton> get _statisticsTabs => [
        GButton(
          gap: 8,
          icon: Icons.wb_cloudy_sharp,
          iconActiveColor: Colors.redAccent,
          iconColor: Colors.white,
          textColor: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          backgroundColor: Colors.greenAccent,
          text: 'Pollution',
        ),
        GButton(
            gap: 8,
            icon: Icons.account_balance_sharp,
            text: 'Buildings',
            iconActiveColor: Colors.redAccent,
            iconColor: Colors.white,
            textColor: Colors.white,
            padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
            backgroundColor: Colors.lightBlue),
        GButton(
          gap: 8,
          icon: Icons.attach_money,
          iconActiveColor: Colors.redAccent,
          iconColor: Colors.white,
          textColor: Colors.white,
          backgroundColor: Colors.yellow,
          padding: EdgeInsets.symmetric(horizontal: 18, vertical: 5),
          text: 'Money',
        )
      ];

  List<GButton> _buildTabs() =>
      _isShowingStatistics ? _statisticsTabs : _aggregationTabs;

  int _currentTab = 0;

  bool _isLoggedOut = false;

  bool _isShowingStatistics = false;
  bool _hasScrolledToSliverMax = false;

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
    // Use the currentContext mixin here to pass the current user id
    widget.cityBloc.sendEvent(CityEvent.fetchCityWithId('random_city'));
    $<CityAverageBloc>().sendEvent(
        AverageCityEvent.fetchAverageCityWithAllCities('random_city'));
    // widget.previousStatisticsBloc.fetchInitialStatistics(this.currentCityId);
  }

  @override
  Widget build(BuildContext context) => WillPopScope(
      onWillPop: () async {
        if (_isLoggedOut) {
          return true;
        }
        if (_currentTab > 0) {
          bottomTapped(_currentTab - 1);
          return false;
        }
        if (Platform.isAndroid) {
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          exit(0);
        }
        return true;
      },
      child: Scaffold(
        drawer: _hasScrolledToSliverMax
            ? NavigationDrawer((isLoggedOut) => this._isLoggedOut = isLoggedOut)
            : null,
        body: NestedScrollView(
          key: scrollKey,
          headerSliverBuilder: (context, _) => [
            StreamBuilder<ResponseState<City?>>(
                stream: widget.cityBloc.stream,
                builder: (context, snapshot) {
                  if (snapshot.data != null) {
                    const String endgameCitySuffix = 'a graveyard';
                    final String? cityTitle = snapshot.data!.maybeWhen(
                        (value) => value?.name ?? endgameCitySuffix,
                        orElse: () => null);
                    // TODO: Use AnimatedCrossFade for switch when received cityTitle
                    return _AdaptiveSliverAppBar(
                        isShowingStatistics: _isShowingStatistics,
                        hasScrolledToSliverMax: _hasScrolledToSliverMax,
                        onToggleButtonPressed: () => setState(() {
                              if (_isShowingStatistics && _currentTab == 2) {
                                _currentTab = 1;
                              }
                              _isShowingStatistics = !_isShowingStatistics;
                            }),
                        title: HackTUESText(
                          _hasScrolledToSliverMax
                              ? (_isShowingStatistics
                                      ? _statisticsTabs
                                      : _aggregationTabs)[_currentTab]
                                  .text
                              : (cityTitle != null
                                  ? 'Your city, $cityTitle'
                                  : 'Your city'),
                          maxLines: 3,
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                        backgroundColor: endgameCitySuffix == cityTitle
                            ? Colors.grey[700]
                            : Colors.blueAccent);
                  } else {
                    return _AdaptiveSliverAppBar(
                      isShowingStatistics: _isShowingStatistics,
                      hasScrolledToSliverMax: _hasScrolledToSliverMax,
                      onToggleButtonPressed: () => setState(() {
                        if (_isShowingStatistics && _currentTab == 2) {
                          _currentTab = 1;
                        }
                        _isShowingStatistics = !_isShowingStatistics;
                      }),
                      title: HackTUESText(
                        _hasScrolledToSliverMax
                            ? (_isShowingStatistics
                                    ? _statisticsTabs
                                    : _aggregationTabs)[_currentTab]
                                .text
                            : 'Your city',
                        maxLines: 3,
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                      ),
                    );
                  }
                })
          ],
          body: Builder(builder: (context) {
            final controller = scrollKey.currentState!.outerController;
            controller.addListener(() {
              var changed = controller.position.pixels ==
                  controller.position.maxScrollExtent;
              if (changed != _hasScrolledToSliverMax) {
                setState(() {
                  _hasScrolledToSliverMax = changed;
                });
              }
            });
            return _buildPageView();
          }),
        ),
        bottomNavigationBar: Visibility(
          visible: _hasScrolledToSliverMax,
          maintainState: true,
          child: SafeArea(
              // wrap with Opacity, listen notifications from the scrollView and update the opacity.
              child: Container(
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
            child: GNav(
                tabMargin: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                gap: 8,
                activeColor: Colors.blueAccent,
                iconSize: 22,
                duration: Duration(milliseconds: 300),
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
                curve: Curves.easeOutExpo,
                tabBackgroundColor: Colors.lightBlueAccent,
                backgroundColor: Colors.blueAccent,
                textStyle: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Europe_Ext'),
                tabs: _buildTabs(),
                selectedIndex: _currentTab,
                onTabChange: (index) {
                  bottomTapped(index);
                }),
          )),
        ),
      ));
}

class _AdaptiveSliverAppBar extends StatelessWidget {
  final bool isShowingStatistics;
  final bool hasScrolledToSliverMax;
  final VoidCallback onToggleButtonPressed;
  final Widget? title;
  final Color? backgroundColor;

  const _AdaptiveSliverAppBar(
      {Key? key,
      required this.isShowingStatistics,
      required this.hasScrolledToSliverMax,
      required this.onToggleButtonPressed,
      required this.title,
      this.backgroundColor = Colors.blueAccent})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverAppBar(
      expandedHeight: MediaQuery.of(context).size.height * (1 / 3),
      floating: true,
      pinned: true,
      snap: true,
      backgroundColor: backgroundColor,
      automaticallyImplyLeading: hasScrolledToSliverMax ? true : false,
      actions: [
        Visibility(
          maintainState: true,
          visible: hasScrolledToSliverMax,
          child: ElevatedButton(
              style: ButtonStyle(
                textStyle: MaterialStateProperty.all<TextStyle?>(TextStyle(
                    fontFamily: 'Europe_Ext',
                    fontSize: 14,
                    fontWeight: FontWeight.bold)),
                backgroundColor:
                    MaterialStateProperty.all<Color?>(Colors.lightBlue[510]),
              ),
              clipBehavior: Clip.antiAlias,
              onPressed: onToggleButtonPressed,
              child: Text(isShowingStatistics ? 'Averages' : 'Stats')),
        )
      ],
      flexibleSpace: FlexibleSpaceBar(
          titlePadding: EdgeInsetsDirectional.only(start: 60, bottom: 16),
          centerTitle: false,
          title: title,
          // think of some interesting background image
          background: Image.asset(
            "assets/city.jpg",
            fit: BoxFit.cover,
          )),
    );
  }
}
