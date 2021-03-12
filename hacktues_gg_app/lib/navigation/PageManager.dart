import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/base/rxObject.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/screens/root/AuthWrapper.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class PageManager {
  final _navigatorKey = GlobalKey<NavigatorState>();

  GlobalKey<NavigatorState> get navigatorKey => _navigatorKey;

  PageManager() {
    pages.emitState(_pages);
  }

  final pages = RxObject<List<Page>>();

  List<Page> get _pagesList => List.unmodifiable(_pages);

  final List<Page> _pages = [
    MaterialPage(
        child: AuthWrapper($(), $()), key: ValueKey<String>('AuthWrapper'))
  ];

  void openPage<T extends Widget>(
      {required String key,
      required T Function() builder,
      VoidCallback? duplicatePageFallback}) {
    var pageKey = ValueKey<String>(key);

    if (!_pages.any((page) => page.key == pageKey)) {
      _pages.add(MaterialPage(child: builder(), key: pageKey));
    } else {
      duplicatePageFallback?.call();
    }

    pages.emitState(_pagesList);
  }

  void didPop(Page page, dynamic result) {
    _pages.remove(page);
    pages.emitState(_pagesList);
  }
}
