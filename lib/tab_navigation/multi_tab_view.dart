import 'package:dekada/tab_navigation/tab_with_navigator.dart';
import 'package:dekada/tab_navigation/tabs/tab_list.dart';
import 'package:flutter/material.dart';

class MultiTabView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => MultiTabViewState();
}

class MultiTabViewState extends State<MultiTabView> {
  TabWithNavigator _currentTab = TabList.mainTab;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        final isRoot = !await _currentTab.navigatorKey.currentState!.maybePop();
        if (isRoot) {
          if (_currentTab != TabList.mainTab) {
            _selectTab(TabList.mainTab);

            return false;
          }
        }
        return isRoot;
      },
      child: Scaffold(
        body: Stack(
          children:
              TabList.tabs.map((e) => _buildOffstageNavigator(e)).toList(),
        ),
        bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: Colors.blueAccent,
          onTap: (int index) {
            _selectTab(TabList.tabs[index]);
          },
          currentIndex: _currentTab.index,
          items: TabList.tabs.map((e) => e.navBarItem).toList(),
          type: BottomNavigationBarType.fixed,
        ),
      ),
    );
  }

  void _selectTab(TabWithNavigator tab) {
    if (tab == _currentTab) {
      _currentTab.navigatorKey.currentState!.popUntil((route) => route.isFirst);
    } else {
      setState(() {
        _currentTab = tab;
      });
    }
  }

  Widget _buildOffstageNavigator(TabWithNavigator tab) {
    return Offstage(
      offstage: _currentTab != tab,
      child: TabNavigator(
        navigatorKey: tab.navigatorKey,
        tab: tab,
      ),
    );
  }
}

class TabNavigator extends StatelessWidget {
  TabNavigator({required this.navigatorKey, required this.tab});

  final GlobalKey<NavigatorState> navigatorKey;
  final TabWithNavigator tab;

  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: navigatorKey,
      onGenerateRoute: (routeSettings) {
        return MaterialPageRoute(builder: (context) => tab.rootWidget);
      },
    );
  }
}
