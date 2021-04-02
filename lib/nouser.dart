import 'package:flutter/material.dart';

class NoUser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color.fromRGBO(255, 36, 0, 0.5),
      child: Scaffold(
        appBar: AppBar(
          title: Text("Result"),
        ),
        body: Center(
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  child: Image(
                    image: AssetImage('./assets/images.png'),
                  ),
                ),
                Container(
                  child: Text(
                    "No such Account !!\nPlease Recheck the username",
                    style: TextStyle(
                      fontFamily: "Roboto",
                      fontWeight: FontWeight.w900,
                      fontSize: 18,
                      color: Colors.black,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
