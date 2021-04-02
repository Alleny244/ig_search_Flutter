import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map data = ModalRoute.of(context).settings.arguments;
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(40),
          child: (data['private'] == false)
              ? Card(
                  color: Color.fromRGBO(255, 36, 0, 1),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Center(
                        child: Text(
                          "Name : " + data['fullname'],
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Image(
                          image: NetworkImage(data['imageUrl']),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Bio : " + data['bio'],
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Followers : " + data['followers'].toString(),
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Following : " + data['following'].toString(),
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      Container(
                        child: Text(
                          "Posts : " + data['numberPosts'].toString(),
                          style: TextStyle(
                            fontFamily: "Roboto",
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              : Card(
                  color: Color.fromRGBO(255, 36, 0, 0.8),
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Center(
                          child: Text(
                            "Name : " + data['fullname'],
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Image(
                            image: NetworkImage(data['imageUrl']),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Private Account",
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Bio : " + data['bio'],
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Followers : " + data['followers'].toString(),
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Following : " + data['following'].toString(),
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Container(
                          child: Text(
                            "Posts : " + data['numberPosts'].toString(),
                            style: TextStyle(
                              fontFamily: "Roboto",
                              fontWeight: FontWeight.w500,
                              fontSize: 18,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ]),
                ),
        ),
      ),
    );
  }
}
