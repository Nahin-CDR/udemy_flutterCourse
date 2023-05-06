import 'package:flutter/material.dart';
import 'package:udemy1/presentation/resources/routes_manager.dart';
import 'package:udemy1/presentation/resources/theme_manager.dart';
class MyApp extends StatefulWidget {


  MyApp._internal(); //private named constructor
  int appState = 0;
  static final MyApp instance = MyApp._internal(); /// single instance -- singleton
  factory MyApp() => instance; // factory for the class instance



  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: getApplicationTheme(),
      onGenerateRoute: RoutesGenerator.getRoute,
      initialRoute: Routes.splashRoute,
      debugShowCheckedModeBanner: false,
    );
  }
}

class DemoScroll extends StatelessWidget {
  const DemoScroll({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        shrinkWrap: true,
        slivers: [
          // Add the app bar to the CustomScrollView.
          const SliverAppBar(
            // Provide a standard title.
            title: Text("kkkkk"),
            // Allows the user to reveal the app bar if they begin scrolling
            // back up the list of items.
            floating: true,

            // Display a placeholder widget to visualize the shrinking size.
            flexibleSpace: Card(
              child: Text("hhhhhhhhhhhhhhh"),
            ),
            // Make the initial height of the SliverAppBar larger than normal.
            expandedHeight: 500,

            toolbarHeight: 150,
          ),
          // Next, create a SliverList
          SliverList(
            // Use a delegate to build items as they're scrolled on screen.
            delegate: SliverChildBuilderDelegate(
              // The builder function returns a ListTile with a title that
              // displays the index of the current item.
                  (context, index) => ListTile(title: Text('Item #$index')),
              // Builds 1000 ListTiles
              childCount: 1000,
            ),
          ),

        ],
      ),
    );
  }
}
