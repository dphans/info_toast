import 'package:info_toast/info_toast.dart';
import 'package:info_toast/resources/arrays.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Info Toast Example Usage',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: Scaffold(
        body: ExampleApp(),
      ),
    );
  }
}

class ExampleApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Info Toast',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
            ),
          ),
          SizedBox(
            height: 30,
          ),
          ElevatedButton(
            child: Text('Information Info Toast'),
            onPressed: () {
              InfoToast.info(
                title: Text('Information',style: TextStyle(
              fontWeight: FontWeight.bold,)),
                action: Text('You\'re doing great.'),
                actionHandler: () {},
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Error Info Toast'),
            onPressed: () {
              InfoToast.error(
                title: Text(''),
                enableIconAnimation: false,
                displayTitle: false,
                description: Text('User not found'),
                animationType: AnimationType.fromRight,
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Error Info Toast (No Icon)'),
            onPressed: () {
              InfoToast.error(
                title: Text(''),
                backgroundColor: Colors.red, 
                enableIconAnimation: false,
                displayTitle: false,
                displayCloseButton: false,
                borderRadius: 8,
                displayIcon: false,
                description: Text('This is an auto-closing, classical error message with no icons whatsoever nor close button.', style: TextStyle(color: Colors.white)),
                animationType: AnimationType.fromTop,
                animationDuration: Duration(milliseconds: 1000),
                toastDuration: Duration(milliseconds: 5000),
                autoDismiss: true,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Bottom Info Toast'),
            onPressed: () {
              InfoToast(
                icon: Icons.alarm_add,
                themeColor: Colors.pink,
                title: Text(''),
                displayTitle: false,
                description: Text('A bottom info toast example'),
                toastPosition: Position.bottom,
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Warning Info Toast'),
            onPressed: () {
              InfoToast.warning(
                title: Text(''),
                displayTitle: false,
                description:
                    Text('All information may be deleted after this action'),
                animationType: AnimationType.fromTop,
                action: Text('Backup data'),
                actionHandler: () {},
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Success Info Toast'),
            onPressed: () {
              InfoToast.success(
                title: Text('The simplest info toast'),
                borderRadius: 0,
              ).show(context);
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            child: Text('Right Layout Info Toast'),
            onPressed: () {
              InfoToast(
                icon: Icons.car_repair,
                themeColor: Colors.green,
                title: Text(''),
                displayTitle: false,
                description: Text('هذا مثال تصميم من اليمين'),
                toastPosition: Position.bottom,
                layout: ToastLayout.rtl,
                animationType: AnimationType.fromRight,
                action: Text(
                  'انقر هنا',
                  style: TextStyle(color: Colors.green),
                ),
                animationDuration: Duration(milliseconds: 1000),
                autoDismiss: true,
              ).show(context);
            },
          ),
        ],
      ),
    );
  }
}
