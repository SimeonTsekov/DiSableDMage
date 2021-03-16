import 'package:flutter/material.dart';
import 'package:hacktues_gg_app/blocs/AuthBloc.dart';
import 'package:hacktues_gg_app/di/serviceLocator.dart';
import 'package:hacktues_gg_app/event/AuthEvent.dart';
import 'package:hacktues_gg_app/widgets/BiDirectionalUpdateSwitch.dart';

import 'HackTUESText.dart';

class NavigationDrawer extends StatelessWidget {
  final AuthBloc authBloc = $<AuthBloc>();
  final Function(bool) _onLogout;

  NavigationDrawer(this._onLogout);

  @override
  Widget build(BuildContext context) => Drawer(
        child: Container(
          color: Colors.blueAccent,
          child: ListView(
            padding: EdgeInsets.zero,
            children: <Widget>[
              _createHeader(),
              Divider(),
              SizedBox(
                  width: 20,
                  height: 20,
                  child: BiDirectionalUpdateSwitch(
                    prefsBgBloc: $(),
                  )),
              ListTile(
                  title: const HackTUESText(
                    'Logout',
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),
                  onTap: () {
                    _onLogout(true);
                    Navigator.of(context).maybePop();
                    authBloc.sendEvent(AuthEvent.logout());
                  }),
              ListTile(
                title: HackTUESText('Version 0.0.1. All rights reserved. '),
              ),
            ],
          ),
        ),
      );

  Widget _createHeader() => DrawerHeader(
      margin: EdgeInsets.zero,
      padding: EdgeInsets.zero,
      decoration: BoxDecoration(
          image: DecorationImage(
              fit: BoxFit.fill,
              image: AssetImage('path/to/header_background.png'))),
      // think of some picture here
      child: Stack(children: <Widget>[
        Positioned(
          bottom: 12.0,
          left: 16.0,
          child: const HackTUESText("Settings",
              fontSize: 20.0, fontWeight: FontWeight.w500),
        )
      ]));

  Widget _createDrawerItem(
          {IconData? icon, required String text, GestureTapCallback? onTap}) =>
      ListTile(
        title: Row(
          children: <Widget>[
            Icon(icon),
            Padding(
                padding: EdgeInsets.only(left: 8.0),
                child: HackTUESText(
                  text,
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1.5,
                ))
          ],
        ),
        onTap: onTap,
      );
}
