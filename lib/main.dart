import 'package:flutter/material.dart';
import 'app_drawer.dart';
import 'lend_tab.dart';
import 'post_tab.dart';
import 'borrow_tab.dart';

void main() {
  runApp(const NavigationBarApp());
}

class NavigationBarApp extends StatelessWidget {
  const NavigationBarApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationBar());
  }
}

class NavigationBar extends StatefulWidget {
  const NavigationBar({Key? key}) : super(key: key);

  @override
  State<NavigationBar> createState() => _NavigationBarState();
}

class _NavigationBarState extends State<NavigationBar>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  String appBarTitle = 'Tabs Example'; // Default app bar title

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabController
        .addListener(_handleTabChange); // Add listener for tab changes
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  // Function to handle tab changes and update the app bar title
  void _handleTabChange() {
    setState(() {
      switch (_tabController.index) {
        case 0:
          appBarTitle = 'Lend Requests';
          break;
        case 1:
          appBarTitle = 'Post a Request';
          break;
        case 2:
          appBarTitle = 'Borrow Requests';
          break;
        default:
          appBarTitle = 'Tabs Example';
          break;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(appBarTitle), // App bar title dynamically changes
        actions: [
          // Message Icon on Top Right
          IconButton(
            icon: const Icon(Icons.message),
            onPressed: () {
              // Handle message icon click
            },
          ),
        ],
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu), // Menu Icon
              onPressed: () {
                Scaffold.of(context).openDrawer();
              },
            );
          },
        ),
      ),
      drawer: const AppDrawer(),

      /// Drawer
      body: TabBarView(
        controller: _tabController,
        children: <Widget>[
          LendTab(), // Display the LendTab content
          PostTab(), // Display the PostTab content
          BorrowTab(), // Display the BorrowTab content
        ],
      ),
      bottomNavigationBar: Material(
        ///BottomNavigation Bar
        color: const Color.fromRGBO(20, 66, 114, 1),
        child: TabBar(
          controller: _tabController,
          tabs: const <Tab>[
            Tab(
              icon: Icon(Icons.lens),
              text: 'Lend',
            ),
            Tab(
              icon: Icon(Icons.lens),
              text: 'Post',
            ),
            Tab(
              icon: Icon(Icons.lens),
              text: 'Borrow',
            ),
          ],
        ),
      ),
    );
  }
}
