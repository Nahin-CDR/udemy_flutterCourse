
import 'package:anim_search_bar/anim_search_bar.dart';
import 'package:flutter/material.dart';
class FloatingSearchBarScreen extends StatefulWidget {
  const FloatingSearchBarScreen({Key? key}) : super(key: key);
  @override
  State<FloatingSearchBarScreen> createState() => _FloatingSearchBarScreenState();
}

class _FloatingSearchBarScreenState extends State<FloatingSearchBarScreen> {
  TextEditingController textController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterTop,
      floatingActionButton: Padding(
        padding: const EdgeInsets.only(top: 10.0),
        child: FloatingActionButton.extended(
          focusElevation: 1,
          elevation: 4,
          shape: BeveledRectangleBorder( 
            borderRadius: BorderRadius.circular(5),
          ),
          backgroundColor: Colors.white,
          //foregroundColor: Colors.blueAccent,
          onPressed: () {
            // Respond to button press
          },
          //icon: Icon(Icons.add),
          label: SizedBox(
            width:MediaQuery.of(context).size.width-80,
            child: const TextField(
              decoration: InputDecoration(
                suffixIcon: Icon(
                    Icons.search,
                    color: Colors.black
                ),
                hintText: 'Search here',
                enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.white),
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.black),
                ),
              ),
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),

        ),
      ),

      body: ListView.builder(
        itemCount: 100,
          itemBuilder:(context,index){
            return Container(
              padding: const EdgeInsets.all(20),
              color: Colors.green,
              margin: const EdgeInsets.all(20),
              child: Text("$index"),
            );
          }
      ),
    );
  }
}
