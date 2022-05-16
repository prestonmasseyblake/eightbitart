import 'package:flutter/material.dart';
// import 'package:instagram_profile_page/screens/gallery_screen.dart';
// import 'package:instagram_profile_page/screens/igtv_screen.dart';
// import 'package:instagram_profile_page/screens/reels_screen.dart';
import '../components/profile_header.dart';
import '../screens/utils/storage_service.dart';

final Storage storage = Storage();

class ProfileBaseScreen extends StatefulWidget {
  @override
  _ProfileBaseScreenState createState() => _ProfileBaseScreenState();
}

class _ProfileBaseScreenState extends State<ProfileBaseScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40),
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
          
        ),
      ),
      body: DefaultTabController(
        length: 3,
        child: NestedScrollView(
          headerSliverBuilder: (context, _) {
            return [
              SliverList(
                delegate: SliverChildListDelegate(
                  [
                    profileHeaderWidget(context),
                  ],
                ),
              ),
            ];
          },
          body: Column(
            children: <Widget>[
              // Material(
              //   color: Colors.white,
              //   child: TabBar(
              //     labelColor: Colors.black,
              //     unselectedLabelColor: Colors.grey[400],
              //     indicatorWeight: 1,
              //     indicatorColor: Colors.black,
              //     tabs: [
              //       Tab(
              //         icon: Icon(
              //           Icons.grid_on_sharp,
              //           color: Colors.black,
              //         ),
              //       ),
              //       Tab(
              //         icon: Icon(
              //           Icons.grid_on_sharp,
              //           color: Colors.black,
              //         ),
              //       ),
              //       Tab(
              //          icon: Icon(
              //           Icons.grid_on_sharp,
              //           color: Colors.black,
              //         ),
              //       ),
              //     ],
              //   ),
              // ),
              // Expanded(
              //   child: TabBarView(
              //     children: [
              //       // Gallery(),
              //       // Igtv(),
              //       // Reels(),
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
