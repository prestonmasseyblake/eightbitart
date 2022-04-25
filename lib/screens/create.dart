import 'package:flutter/material.dart';
import 'dart:io';
import 'package:path_provider/path_provider.dart';
import 'package:screenshot/screenshot.dart';
import 'package:responsive_grid/responsive_grid.dart';
import 'package:eightbitart/screens/utils/storage_service.dart';
import 'package:image_gallery_saver/image_gallery_saver.dart';
import 'dart:typed_data';
import 'package:flutter_colorpicker/flutter_colorpicker.dart';
import 'package:gallery_saver/gallery_saver.dart';
import '../main.dart';

Uint8List? _imageFile;
final Storage storage = Storage();
String picName = "Test";

class CreateScreen extends StatefulWidget {
  const CreateScreen({Key? key}) : super(key: key);
  @override
  State<CreateScreen> createState() => _CreateScreen();
}

class _CreateScreen extends State<CreateScreen> {
  @override
  //Create an instance of ScreenshotController
  ScreenshotController screenshotController = ScreenshotController();
  Color pickerColor = Color(0xff443a49);
  Color currentColor = Color(0xff443a49);
  void changeColor(Color color) {
    setState(() => pickerColor = color);
  }

// screenshotController.capture().then((Uint8List image) {
//     setState(() {
//         _imageFile = image;
//     });
// }).catchError((onError) {
//     print(onError);
// });
  String colorSelected = "black";
  String selected = "first";
  Color one = Color(0xff0000000);
  Color two = Color(0xff0000000);
  Color three = Color(0xff0000000);
  Color four = Color(0xff0000000);
  Color five = Color(0xff0000000);
  Color six = Color(0xff0000000);
  Color seven = Color(0xff0000000);
  Color eight = Color(0xff0000000);
  Color nine = Color(0xff0000000);
  Color ten = Color(0xff0000000);

  Color eleven = Color(0xff0000000);
  Color twelve = Color(0xff0000000);
  Color thirteen = Color(0xff0000000);
  Color fourteen = Color(0xff0000000);
  Color fiveteen = Color(0xff0000000);
  Color sixteen = Color(0xff0000000);
  Color seventeen = Color(0xff0000000);
  Color eightteen = Color(0xff0000000);
  Color nineteen = Color(0xff0000000);
  Color twenty = Color(0xff0000000);

  Color twentyone = Color(0xff0000000);
  Color twentytwo = Color(0xff0000000);
  Color twentythree = Color(0xff0000000);
  Color twentyfour = Color(0xff0000000);
  Color twentyfive = Color(0xff0000000);
  Color twentysix = Color(0xff0000000);
  Color twentyseven = Color(0xff0000000);
  Color twentyeight = Color(0xff0000000);
  Color twentynine = Color(0xff0000000);
  Color thirty = Color(0xff0000000);

  Color thirtyone = Color(0xff0000000);
  Color thirtytwo = Color(0xff0000000);
  Color thirtythree = Color(0xff0000000);
  Color thirtyfour = Color(0xff0000000);
  Color thirtyfive = Color(0xff0000000);
  Color thirtysix = Color(0xff0000000);
  Color thirtyseven = Color(0xff0000000);
  Color thirtyeight = Color(0xff0000000);
  Color thirtynine = Color(0xff0000000);
  Color fourty = Color(0xff0000000);

  Color fourtyone = Color(0xff0000000);
  Color fourtytwo = Color(0xff0000000);
  Color fourtythree = Color(0xff0000000);
  Color fourtyfour = Color(0xff0000000);
  Color fourtyfive = Color(0xff0000000);
  Color fourtysix = Color(0xff0000000);
  Color fourtyseven = Color(0xff0000000);
  Color fourtyeight = Color(0xff0000000);
  Color fourtynine = Color(0xff0000000);
  Color fifty = Color(0xff0000000);

  Color fiftyone = Color(0xff0000000);
  Color fiftytwo = Color(0xff0000000);
  Color fiftythree = Color(0xff0000000);
  Color fiftyfour = Color(0xff0000000);
  Color fiftyfive = Color(0xff0000000);
  Color fiftysix = Color(0xff0000000);
  Color fiftyseven = Color(0xff0000000);
  Color fiftyeight = Color(0xff0000000);
  Color fiftynine = Color(0xff0000000);
  Color sixty = Color(0xff0000000);

  Color sixtyone = Color(0xff0000000);
  Color sixtytwo = Color(0xff0000000);
  Color sixtythree = Color(0xff0000000);
  Color sixtyfour = Color(0xff0000000);

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Image.asset('assets/images/logo.png', fit: BoxFit.cover),
        ),
        
        body: Column(
          
          children: <Widget>[
            Padding(
            padding: EdgeInsets.all(15), 
            child: Text("Create Art",
            style: TextStyle(fontWeight: FontWeight.bold),
            )
            ),
            
            Screenshot(
              
                controller: screenshotController,
                child: Column(
                  
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                  Row(
                    mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          one = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: one != Color(0xff0000000) ? one : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          two = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: two != Color(0xff0000000) ? two : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          three = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            three != Color(0xff0000000) ? three : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          four = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: four != Color(0xff0000000) ? four : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          five = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: five != Color(0xff0000000) ? five : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          six = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: six != Color(0xff0000000) ? six : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          seven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            seven != Color(0xff0000000) ? seven : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          eight = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            eight != Color(0xff0000000) ? eight : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          nine = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: nine != Color(0xff0000000) ? nine : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          ten = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: ten != Color(0xff0000000) ? ten : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          eleven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            eleven != Color(0xff0000000) ? eleven : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twelve = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            twelve != Color(0xff0000000) ? twelve : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirteen != Color(0xff0000000)
                            ? thirteen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourteen != Color(0xff0000000)
                            ? fourteen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiveteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiveteen != Color(0xff0000000)
                            ? fiveteen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: sixteen != Color(0xff0000000)
                            ? sixteen
                            : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          seventeen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: seventeen != Color(0xff0000000)
                            ? seventeen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          eightteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: eightteen != Color(0xff0000000)
                            ? eightteen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          nineteen = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: nineteen != Color(0xff0000000)
                            ? nineteen
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twenty = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            twenty != Color(0xff0000000) ? twenty : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentyone = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentyone != Color(0xff0000000)
                            ? twentyone
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentytwo = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentytwo != Color(0xff0000000)
                            ? twentytwo
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentythree = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentythree != Color(0xff0000000)
                            ? twentythree
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentyfour = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentyfour != Color(0xff0000000)
                            ? twentyfour
                            : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentyfive = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentyfive != Color(0xff0000000)
                            ? twentyfive
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentysix = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentysix != Color(0xff0000000)
                            ? twentysix
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentyseven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentyseven != Color(0xff0000000)
                            ? twentyseven
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentyeight = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentyeight != Color(0xff0000000)
                            ? twentyeight
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          twentynine = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: twentynine != Color(0xff0000000)
                            ? twentynine
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirty = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            thirty != Color(0xff0000000) ? thirty : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtyone = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtyone != Color(0xff0000000)
                            ? thirtyone
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtytwo = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtytwo != Color(0xff0000000)
                            ? thirtytwo
                            : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtythree = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtythree != Color(0xff0000000)
                            ? thirtythree
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtyfour = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtyfour != Color(0xff0000000)
                            ? thirtyfour
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtyfive = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtyfive != Color(0xff0000000)
                            ? thirtyfive
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtysix = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtysix != Color(0xff0000000)
                            ? thirtysix
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtyseven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtyseven != Color(0xff0000000)
                            ? thirtyseven
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtyeight = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtyeight != Color(0xff0000000)
                            ? thirtyeight
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          thirtynine = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: thirtynine != Color(0xff0000000)
                            ? thirtynine
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourty = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            fourty != Color(0xff0000000) ? fourty : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtyone = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtyone != Color(0xff0000000)
                            ? fourtyone
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtytwo = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtytwo != Color(0xff0000000)
                            ? fourtytwo
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtythree = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtythree != Color(0xff0000000)
                            ? fourtythree
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtyfour = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtyfour != Color(0xff0000000)
                            ? fourtyfour
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtyfive = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtyfive != Color(0xff0000000)
                            ? fourtyfive
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtysix = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtysix != Color(0xff0000000)
                            ? fourtysix
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtyseven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtyseven != Color(0xff0000000)
                            ? fourtyseven
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtyeight = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtyeight != Color(0xff0000000)
                            ? fourtyeight
                            : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fourtynine = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fourtynine != Color(0xff0000000)
                            ? fourtynine
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fifty = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            fifty != Color(0xff0000000) ? fifty : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftyone = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftyone != Color(0xff0000000)
                            ? fiftyone
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftytwo = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftytwo != Color(0xff0000000)
                            ? fiftytwo
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftythree = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftythree != Color(0xff0000000)
                            ? fiftythree
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftyfour = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftyfour != Color(0xff0000000)
                            ? fiftyfour
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftyfive = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftyfive != Color(0xff0000000)
                            ? fiftyfive
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftysix = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftysix != Color(0xff0000000)
                            ? fiftysix
                            : Colors.grey,
                      ),
                    ),
                  ]),
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftyseven = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftyseven != Color(0xff0000000)
                            ? fiftyseven
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftyeight = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftyeight != Color(0xff0000000)
                            ? fiftyeight
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          fiftynine = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: fiftynine != Color(0xff0000000)
                            ? fiftynine
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixty = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color:
                            sixty != Color(0xff0000000) ? sixty : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixtyone = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: sixtyone != Color(0xff0000000)
                            ? sixtyone
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixtytwo = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: sixtytwo != Color(0xff0000000)
                            ? sixtytwo
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixtythree = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: sixtythree != Color(0xff0000000)
                            ? sixtythree
                            : Colors.grey,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          sixtyfour = pickerColor;
                        });
                      },
                      child: Container(
                        height: 40,
                        width: 40,
                        margin: const EdgeInsets.all(0.4),
                        color: sixtyfour != Color(0xff0000000)
                            ? sixtyfour
                            : Colors.grey,
                      ),
                    ),
                  ])
                ])),
            Spacer(flex: 2),
            Row(children: <Widget>[
              GestureDetector(
                onTap: () {
                  setState(() {
                    pickerColor = Color(0xffb74093);
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.red,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pickerColor = Color(0xff0d47a1);
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.blue,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    pickerColor = Color(0xff1b5e20);
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Color(0xff1b5e20),
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'first';
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.purple,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'first';
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.orange,
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState(() {
                    selected = 'first';
                  });
                },
                child: Container(
                  height: 40,
                  width: 40,
                  color: Colors.brown,
                ),
              ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       selected = 'first';
              //     });
              //   },
              //   child: Container(
              //     height: 40,
              //     width: 40,
              //     color: Color(0xffb74093),
              //   ),
              // ),
              // GestureDetector(
              //   onTap: () {
              //     setState(() {
              //       selected = 'first';
              //     });
              //   },
              //   child: Container(
              //     height: 40,
              //     width: 40,
              //     color: Colors.black,
              //   ),
              // ),
              ElevatedButton(
                child: const Text('Got it'),
                onPressed: () {
                  setState(() => currentColor = pickerColor);
                  Navigator.of(context).pop();
                },
              ),
              ElevatedButton(
                child: Text(
                  'Capture Image',
                ),
                onPressed: () {
                  screenshotController
                      .capture(delay: Duration(milliseconds: 10))
                      .then((capturedImage) async {
                    _imageFile = capturedImage;
                    print(_imageFile);
                    ShowCapturedWidget(context, capturedImage!);
                  }).catchError((onError) {
                    print(onError);
                  });
                },
              ),
            ]),
          ],
        ));
  }
}

Future<dynamic> ShowCapturedWidget(
    BuildContext context, Uint8List capturedImage) {
  return showDialog(
    useSafeArea: false,
    context: context,
    builder: (context) => Scaffold(
      appBar: AppBar(
        title: Text("Created Image"),
      ),
      body: Column(children: <Widget>[
        SizedBox(
            width: 400,
            child: capturedImage != null
                ? Image.memory(capturedImage)
                : Container()),
        MyCustomForm()
      ]),
    ),
  );
}

// _saved(File image) async {
//   // final result = await ImageGallerySaver.save(image.readAsBytesSync());
//   print("File Saved to Gallery");
// }

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

// Create a corresponding State class.
// This class holds data related to the form.
class MyCustomFormState extends State<MyCustomForm> {
  // Create a global key that uniquely identifies the Form widget
  // and allows validation of the form.
  //
  // Note: This is a GlobalKey<FormState>,
  // not a GlobalKey<MyCustomFormState>.
  final _formKey = GlobalKey<FormState>();

  void _save() {

      print("calling saving formkey");
    // if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
    // }
  }

  @override
  Widget build(BuildContext context) {
    // Build a Form widget using the _formKey created above.
    return Form(
      key: _formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            decoration: InputDecoration(hintText: "Enter Image Name"),
            // The validator receives the text that the user has entered.
            validator: (value) {
              if (value == null || value.isEmpty) {
                picName = value!;
                return 'Please enter an image name';
              }
              return null;
            },
            onSaved: (value) {
              setState(() {
                picName = value!;
              });
              print("this is picName");
              print(picName);
            },
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                // Validate returns true if the form is valid, or false otherwise.
                if (_formKey.currentState!.validate()) {
                  Future savePdf() async {
                    final tempDir = await getTemporaryDirectory();
                    File file =
                        await File('${tempDir.path}/image.png').create();

                    file.writeAsBytesSync(List.from(_imageFile!));
                    storage.uploadFile(file.path, picName);
                    print(picName);
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context) => MyApp()));
                  }

                  savePdf();
                  // If the form is valid, display a snackbar. In the real world,
                  // you'd often call a server or save the information in a database.
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Processing Data')),
                    // storage.uploadFile()
                  );
                }
              },
              child: const Text('Publish To Reel'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            child: ElevatedButton(
              onPressed: () {
                Future savePdf() async {
                  _save();
                  final tempDir = await getTemporaryDirectory();
                  File file = await File('${tempDir.path}/image.png').create();
                  file.writeAsBytesSync(List.from(_imageFile!));
                  if (_imageFile != null) {
                    final result =
                        await ImageGallerySaver.saveImage(_imageFile!);
                    print(result);
                  }
                }

                savePdf();
              },
              child: const Text('Save To Gallery'),
            ),
          ),
        ],
      ),
    );
  }
}
