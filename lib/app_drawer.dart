import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      // elevation: 16,
      // child: Container(
      //   width: 100,
      //   height: 100,
      //   decoration: const BoxDecoration(
      //     color: Color(0xFF144272),
      //   ),
      //   child: Column(
      //     mainAxisSize: MainAxisSize.max,
      //     children: [
      //       const Text(
      //         'Hi \n Username!',
      //         textScaleFactor: 3,
      //         style: TextStyle(color: Colors.white),
      //       ),
      //       Container(
      //         width: 176,
      //         height: 176,
      //         clipBehavior: Clip.antiAlias,
      //         decoration: const BoxDecoration(
      //           shape: BoxShape.circle,
      //         ),
      //         child: Image.network(
      //           'https://picsum.photos/seed/109/600',
      //           fit: BoxFit.cover,
      //         ),
      //       ),
      //       ListView(
      //         padding: const EdgeInsetsDirectional.all(20),
      //         shrinkWrap: true,
      //         scrollDirection: Axis.vertical,
      //         children: [
      //           Container(
      //             width: double.infinity,
      //             height: 25,
      //             decoration: const BoxDecoration(
      //                 // color: ,
      //                 ),
      //             child: Row(
      //               mainAxisSize: MainAxisSize.max,
      //               children: [
      //                 ListTile(
      //                   leading: const Icon(Icons.assignment),
      //                   title: const Text("My Posts"),
      //                   onTap: () {
      //                     // Handle 'My Posts' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.bookmark),
      //                   title: const Text("Bookmarked Posts"),
      //                   onTap: () {
      //                     // Handle 'Bookmarked Posts' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.settings),
      //                   title: const Text("Settings"),
      //                   onTap: () {
      //                     // Handle 'Settings' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.feedback),
      //                   title: const Text("Feedback"),
      //                   onTap: () {
      //                     // Handle 'Feedback' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.payment),
      //                   title: const Text("Donate"),
      //                   onTap: () {
      //                     // Handle 'Donate' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.developer_mode),
      //                   title: const Text("Developers"),
      //                   onTap: () {
      //                     // Handle 'Developers' tap
      //                   },
      //                 ),
      //                 ListTile(
      //                   leading: const Icon(Icons.exit_to_app),
      //                   title: const Text("Sign Out"),
      //                   onTap: () {
      //                     // Handle 'Sign Out' tap
      //                   },
      //                 ),
      //               ],
      //             ),
      //           ),
      //           Container(
      //             width: 100,
      //             height: 100,
      //             decoration: const BoxDecoration(
      //                 // color: FlutterFlowTheme.of(context).secondaryBackground,
      //                 ),
      //           ),
      //         ],
      //       ),
      //     ],
      //   ),
      // ),
      child: Container(
        
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const UserAccountsDrawerHeader(
              accountName: Text("John Doe"),
              accountEmail: Text("johndoe@example.com"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.white,
                child: Icon(Icons.person),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.assignment),
              title: const Text("My Posts"),
              onTap: () {
                // Handle 'My Posts' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.bookmark),
              title: const Text("Bookmarked Posts"),
              onTap: () {
                // Handle 'Bookmarked Posts' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: const Text("Settings"),
              onTap: () {
                // Handle 'Settings' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.feedback),
              title: const Text("Feedback"),
              onTap: () {
                // Handle 'Feedback' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.payment),
              title: const Text("Donate"),
              onTap: () {
                // Handle 'Donate' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.developer_mode),
              title: const Text("Developers"),
              onTap: () {
                // Handle 'Developers' tap
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text("Sign Out"),
              onTap: () {
                // Handle 'Sign Out' tap
              },
            ),
          ],
        ),
      ),
    );
  }
}
