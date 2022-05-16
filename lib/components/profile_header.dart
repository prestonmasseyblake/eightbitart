import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../screens/utils/storage_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';
import '../screens/utils/storage_service.dart';
import '../screens/signin_screen.dart';

Widget profileHeaderWidget(BuildContext context) {
  final Storage storage = Storage();

  return Container(
    width: double.infinity,
    decoration: BoxDecoration(color: Colors.white),
    child: Padding(
      padding: const EdgeInsets.only(left: 18.0, right: 18.0, bottom: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 40,
                backgroundColor: Color(0xff74EDED),
                backgroundImage:
                    NetworkImage("https://placeimg.com/640/480/people"),
              ),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          FutureBuilder<String>(
            future: storage.getUser(), // async work
            builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
              switch (snapshot.connectionState) {
                case ConnectionState.waiting:
                  return Text('Loading....');
                default:
                  if (snapshot.hasError)
                    return Text('Error: ${snapshot.error}');
                  else
                    return Text(
                      '${snapshot.data}',
                      textAlign: TextAlign.center,
                    );
              }
            },
          ),
          ElevatedButton(
            child: Text(
              'Logout',
            ),
            onPressed: () {
              FirebaseAuth.instance.signOut().then((value) {
                print("Signed Out");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => SignInScreen()));
              });
            },
          ),

          // Container(
          //   height: 85,
          //   child: ListView.builder(
          //     shrinkWrap: true,
          //     scrollDirection: Axis.horizontal,
          //     itemCount: 2,
          //     itemBuilder: (context, index) {
          //       return Row(
          //         children: [
          //           Column(
          //             children: [
          //               CircleAvatar(
          //                 radius: 30,
          //                 backgroundColor: Colors.grey,
          //                 child: Padding(
          //                   padding: const EdgeInsets.all(2.0),
          //                   child: CircleAvatar(
          //                     backgroundImage:
          //                         AssetImage("assets/images"),
          //                     radius: 28,
          //                   ),
          //                 ),
          //               ),
          //               Padding(
          //                 padding: const EdgeInsets.only(top: 4),
          //                 child: Text(
          //                   // highlightItems[index].title,
          //                   "gwgw",
          //                   style: TextStyle(fontSize: 13),
          //                 ),
          //               )
          //             ],
          //           ),
          //           SizedBox(
          //             width: 10,
          //           )
          //         ],
          //       );
          //     },
          //   ),
          // )
        ],
      ),
    ),
  );
}

// Widget actions(BuildContext context) {
//   return Row(
//     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//     children: [
//       Expanded(
//         child: OutlinedButton(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 50),
//             child: Text("Edit Profile", style: TextStyle(color: Colors.black)),
//           ),
//           style: OutlinedButton.styleFrom(
//               tapTargetSize: MaterialTapTargetSize.shrinkWrap,
//               minimumSize: Size(0, 30),
//               side: BorderSide(
//                 color: Colors.grey,
//               )),
//           onPressed: () {},
//         ),
//       ),
//     ],
//   );
// }
