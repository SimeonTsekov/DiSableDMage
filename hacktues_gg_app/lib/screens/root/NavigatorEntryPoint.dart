import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/navigation/PageManager.dart';

class NavigatorEntryPoint extends StatelessWidget {
  final PageManager _pageManager;

  const NavigatorEntryPoint(this._pageManager);

  @override
  Widget build(BuildContext context) => StreamBuilder<List<Page>>(
        stream: _pageManager.pages.stream,
        initialData: _pageManager.pages.stream.valueWrapper!.value,
        builder: (_, snapshot) => snapshot.connectionState ==
                ConnectionState.active
            ? WillPopScope(
                onWillPop: () async =>
                    !await _pageManager.navigatorKey.currentState!.maybePop(),
                child: Navigator(
                    key: _pageManager.navigatorKey,
                    pages: (snapshot.data)!,
                    onPopPage: (route, result) =>
                        _onPopPage(route, result, _pageManager)))
            : Container(),
      );

  bool _onPopPage(
      Route<dynamic> route, dynamic result, PageManager pageManager) {
    Page page = route.settings as Page;

    pageManager.didPop(page, result); // safe cast, don't worry
    return route.didPop(result);
  }
}
