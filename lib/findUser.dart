import 'package:flutter/material.dart';
import 'package:http/http.dart';
import 'dart:convert';

class FindUser extends StatefulWidget {
  @override
  _FindUserState createState() => _FindUserState();
}

class _FindUserState extends State<FindUser> {
  var bio;
  var imageUrl;
  var followers;
  var username;
  var status;
  var following;
  var private;
  var fullname;
  var numberPosts;
  TextEditingController obj = TextEditingController();
  var errorT = "";
  void validationg() async {
    var name = obj.text.toString();
    print(name);
    if (name == "") {
      setState(() {
        errorT = "Please provide an input";
      });
    } else {
      final response = await get(
          Uri.parse(
              "https://instagram-data1.p.rapidapi.com/user/info/?username=$name"),
          headers: {
            "x-rapidapi-key":
                "e88978b76cmshd28a3ff3d0e3fe9p18e08djsn193ced31f2d8",
            "x-rapidapi-host": "instagram-data1.p.rapidapi.com",
          });
      status = response.statusCode;
      final responseJson = jsonDecode(response.body);
      if (response.statusCode != 200) {
      } else {
        bio = responseJson['biography'];
        imageUrl = responseJson['profile_pic_url_hd'];
        username = responseJson['username'];
        followers = responseJson['edge_followed_by']['count'];
        following = responseJson['edge_follow']['count'];
        private = responseJson['is_private'];
        fullname = responseJson['full_name'];
        numberPosts = responseJson['edge_owner_to_timeline_media']['count'];
        print(bio);
        print(imageUrl);
        print(username);
        print(followers);
        print(following);
        print(private);
        print(fullname);
        print(numberPosts);
      }

      Navigator.pushReplacementNamed(context, '/loader', arguments: {
        'bio': bio,
        'imageUrl': imageUrl,
        'username': username,
        'followers': followers,
        'following': following,
        'private': private,
        'fullname': fullname,
        'numberPosts': numberPosts,
        'status': status
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: Color(0xFFFF2400A),
          ),
          body: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 10,
                ),
                Container(
                  padding: EdgeInsets.all(40),
                  child: Theme(
                    data: Theme.of(context).copyWith(
                      // override textfield's icon color when selected
                      accentColor: Color(0xFFFF2400A),
                    ),
                    child: TextField(
                      controller: obj,
                      enableInteractiveSelection: true,
                      cursorColor: Color(0xFFFF2400A),
                      autocorrect: true,
                      decoration: InputDecoration(
                        errorText: '$errorT',
                        hoverColor: Color(0xFFFF2400A),
                        focusColor: Color(0xFFFF2400A),
                        hintText: "Enter Instagram Username",
                        prefixIcon: Padding(
                          padding: EdgeInsets.all(12),
                          child: Icon(
                            Icons.supervised_user_circle,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Container(
                  child: ElevatedButton.icon(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color(0xFFFF2400A),
                      ),
                    ),
                    onPressed: validationg,
                    icon: const Icon(Icons.search),
                    label: Text("Search"),
                  ),
                )
              ],
            ),
          )),
    );
  }
}
