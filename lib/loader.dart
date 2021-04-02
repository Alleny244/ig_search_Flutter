import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class Spinner extends StatefulWidget {
  @override
  _State createState() => _State();
}

class _State extends State<Spinner> {
  Map data = {};
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    data = ModalRoute.of(context).settings.arguments;
    (data['status'] == 200)
        ? Future.delayed(const Duration(milliseconds: 2500), () {
            Navigator.pushReplacementNamed(context, '/result', arguments: data);
          })
        : Future.delayed(const Duration(milliseconds: 2500), () {
            Navigator.pushReplacementNamed(context, '/error', arguments: data);
          });

    return Container(
      child: Container(
        child: Scaffold(
          backgroundColor: Color.fromRGBO(255, 36, 0, 1),
          body: Center(
            child: SpinKitPouringHourglass(
              color: Colors.white,
              size: 50.0,
            ),
          ),
        ),
      ),
    );
  }
}
