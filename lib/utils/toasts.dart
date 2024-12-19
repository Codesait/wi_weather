import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Tst {
  static void show(String msg) {
    Fluttertoast.showToast(
      msg: msg,
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.CENTER,
      backgroundColor: Colors.red,
      textColor: Colors.white,
      fontSize: 16,
    );
  }

  static void cancel() {
    Fluttertoast.cancel();
  }
}
