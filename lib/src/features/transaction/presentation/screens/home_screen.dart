import 'package:flutter/material.dart';

enum ScreenSizes { mobile, tablet, desktop }

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ScreenSizes getScreenView(double width) {
    if (width < 600) {
      return ScreenSizes.mobile;
    } else if (width > 600 && width < 1000) {
      return ScreenSizes.tablet;
    } else {
      return ScreenSizes.desktop;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Coming soon...'),
      ),
    );

    // return LayoutBuilder(
    //     builder: (BuildContext context, BoxConstraints constraints) {
    //   if (constraints.maxWidth < 600) {
    //     return const MobileView();
    //   } else if (constraints.maxWidth > 599 && constraints.maxWidth < 840) {
    //     return const TabletView();
    //   } else {
    //     return const DesktopView();
    //   }
    // });
    // final width = MediaQuery.of(context).size.width;

    // switch (getScreenView(width)) {
    //   case ScreenSizes.mobile:
    //     return const MobileView();
    //   case ScreenSizes.tablet:
    //     return const TabletView();
    //   default:
    //     return const DesktopView();
    // }
  }
}
