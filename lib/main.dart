import 'package:eightbitart/screens/utils/storage_service.dart';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'components/test.dart';
import 'components/navbar.dart';
import './components/Card.dart';
import './screens/signin_screen.dart';
import './screens/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MyApp());
}

final Storage storage = Storage();
User? firebaseUser = FirebaseAuth.instance.currentUser;
// Define a widget
Widget? firstWidget;


// Assign widget based on availability of currentUser
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

if(firebaseUser != null) {
  firstWidget = Home();
} else {
  firstWidget = SignInScreen();
}
print(firstWidget);
    return MaterialApp(
        home: 
        
        
        firstWidget
        
        
       
        
        
        // Scaffold(
        //     body: const Home())
            
            
            );
  
  
  //  FutureBuilder<User>(
  //     future: Future.value(FirebaseAuth.instance.currentUser),
  //     builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
  //       if (snapshot.hasData) {
  //     User? user = snapshot.data;
  //     print("logged in"); // this is your user instance
     
  //     return Home();
  //     return SignInScreen();
  //       }
  //       print("not logged in");

  //         return SignInScreen();
  //       /// other way there is no user logged.
  //     }));
  
  
  
  
  
  
  
  
  
  
  }
}


//  FutureBuilder<User>(
//       future: Future.value(FirebaseAuth.instance.currentUser),
//       builder: (BuildContext context, AsyncSnapshot<User> snapshot) {
//         if (snapshot.hasData) {
//       User? user = snapshot.data;
//       print("logged in"); // this is your user instance
//       / is because there is user already logged
//       return Home();
//       return SignInScreen();
//         }
//         print("not logged in");

//           return SignInScreen();
//         /// other way there is no user logged.
//       }));

// Define a widget


// Scaffold(
//       appBar: AppBar(
//           title: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
//           actions: <Widget>[
//             IconButton(
//               icon: const Icon(Icons.add_alert),
//               onPressed: () {
//                 ScaffoldMessenger.of(context).showSnackBar(
//                     const SnackBar(content: Text('This is a snackbar')));
//               },
//             ),
//           ]),
//            body:  const Home()
           
     
//     )