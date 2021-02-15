import 'package:flutter/material.dart';
import 'package:jds_design/jds_design.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'JDS Design System',
        theme: ThemeData(
          // This is the theme of your application.
          //
          // Try running your application with "flutter run". You'll see the
          // application has a blue toolbar. Then, without quitting the app, try
          // changing the primarySwatch below to Colors.green and then invoke
          // "hot reload" (press "r" in the console where you ran "flutter run",
          // or simply save your changes to "hot reload" in a Flutter IDE).
          // Notice that the counter didn't reset back to zero; the application
          // is not restarted.
          primarySwatch: Colors.green,
          // This makes the visual density adapt to the platform that you run
          // the app on. For desktop platforms, the controls will be smaller and
          // closer together (more dense) than on mobile platforms.
          visualDensity: VisualDensity.adaptivePlatformDensity,
        ),
        home: HomePage());
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('JDS Design System')),
      body: ListView(
        children: <Widget>[
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 1',
                style: JDSTextTheme.h1,
              )),
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 2',
                style: JDSTextTheme.h2,
              )),
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 3',
                style: JDSTextTheme.h3,
              )),
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 4',
                style: JDSTextTheme.h4,
              )),
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 5',
                style: JDSTextTheme.h5,
              )),
          Container(
              color: Colors.blue,
              margin: EdgeInsets.only(top: 10.0),
              child: Text(
                'Heading 6',
                style: JDSTextTheme.h6,
              )),
          Container(
            color: JDSColors.black,
            margin: EdgeInsets.only(top: 10.0),
            child: RichText(
              text: TextSpan(
                children: <TextSpan>[
                  TextSpan(
                    text: "You don't have the votes.\n",
                    style: JDSTextTheme.body1,
                  ),
                  TextSpan(
                    text: "You don't have the votes!\n",
                    style: JDSTextTheme.body2,
                  ),
                  TextSpan(
                    text:
                        "You're gonna need congressional approval and you don't have the votes!\n",
                    style: JDSTextTheme.endNote,
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Button filled',
            textAlign: TextAlign.center,
            style: JDSTextTheme.h6,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Container(
                    child: JDSButton(
                      title: 'Primary',
                      variant: Variant.primary,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: JDSButton(
                      title: 'danger',
                      variant: Variant.danger,
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Button Outlined',
            textAlign: TextAlign.center,
            style: JDSTextTheme.h6,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Container(
                    child: JDSButton.outline(
                      title: 'secondary',
                      variant: Variant.secondary,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: JDSButton.outline(
                      variant: Variant.secondary,
                      trailing: Icon(
                        Icons.supervisor_account,
                        size: 20,
                        color: JDSColors.green[700],
                      ),
                      title: 'danger',
                      onPressed: () {},
                      background: JDSColors.white,
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: JDSButton.outline(
                      variant: Variant.secondary,
                      leading: Icon(
                        Icons.email,
                        size: 20,
                        color: JDSColors.green[700],
                      ),
                      title: 'danger',
                      onPressed: () {},
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Button icon',
            textAlign: TextAlign.center,
            style: JDSTextTheme.h6,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Container(
                    child: JDSButton.icon(
                      variant: Variant.primary,
                      icon: Icon(
                        Icons.email,
                        size: 20,
                        color: JDSColors.white,
                      ),
                      onPressed: () {},
                      // background: JDSColors.green[700],
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: JDSButton.icon(
                      variant: Variant.danger,
                      icon: Icon(
                        Icons.accessibility,
                        size: 20,
                        color: JDSColors.white,
                      ),
                      onPressed: () {},
                      // background: JDSColors.green[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 20),
          Text(
            'Button Teriary',
            textAlign: TextAlign.center,
            style: JDSTextTheme.h6,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Wrap(
                children: [
                  Container(
                    child: JDSButton(
                      title: 'Tertiary',
                      variant: Variant.tertiary,
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(width: 10),
                  Container(
                    child: JDSButton.icon(
                      variant: Variant.tertiary,
                      icon: Icon(
                        Icons.accessibility,
                        size: 20,
                        color: JDSColors.green,
                      ),
                      background: JDSColors.transparent,
                      onPressed: () {},
                      // background: JDSColors.green[700],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 50),
        ],
      ),
      drawer: Drawer(
        // Add a ListView to the drawer. This ensures the user can scroll
        // through the options in the drawer if there isn't enough vertical
        // space to fit everything.
        child: ListView(
          // Important: Remove any padding from the ListView.
          padding: EdgeInsets.zero,
          children: <Widget>[
            SizedBox(height: 50.0),
            ListTile(
              title: Text('Item 1'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
            ListTile(
              title: Text('Item 2'),
              onTap: () {
                // Update the state of the app
                // ...
                // Then close the drawer
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
