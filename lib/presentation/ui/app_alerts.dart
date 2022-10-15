import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class AppAlert {
  static Flushbar createError({
    required String message,
    String? title,
  }) {
    late Flushbar flush;
    return flush = Flushbar(
      title: title,
      messageText: Text(
        message,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.warning_amber_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.red,
      titleColor: Colors.white,
      borderRadius: BorderRadius.circular(25),
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.only(left: 30, bottom: 20, top: 20),
      margin: const EdgeInsets.all(20),
      dismissDirection: FlushbarDismissDirection.HORIZONTAL,
      mainButton: TextButton(
        onPressed: () {
          flush.dismiss();
        },
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  static Flushbar createSuccess({
    required String message,
    String? title,
  }) {
    late Flushbar flush;
    return flush = Flushbar(
      title: title,
      messageText: Text(
        message,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.check_circle_outline_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.green,
      titleColor: Colors.white,
      borderRadius: BorderRadius.circular(25),
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.only(left: 30, bottom: 20, top: 20),
      margin: const EdgeInsets.all(20),
      mainButton: TextButton(
        onPressed: () {
          flush.dismiss();
        },
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  static Flushbar createInformation({required String message, String? title}) {
    late Flushbar flush;
    return flush = Flushbar(
      title: title,
      messageText: Text(
        message,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.info_outline_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.blue,
      titleColor: Colors.white,
      borderRadius: BorderRadius.circular(25),
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.only(left: 30, bottom: 20, top: 20),
      margin: const EdgeInsets.all(20),
      mainButton: TextButton(
        onPressed: () {
          flush.dismiss();
        },
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }

  static Flushbar createWarning({required String message, String? title}) {
    late Flushbar flush;
    return flush = Flushbar(
      title: title,
      messageText: Text(
        message,
        style: const TextStyle(
          fontSize: 18,
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
      icon: const Padding(
        padding: EdgeInsets.only(left: 8.0),
        child: Icon(
          Icons.warning_amber_rounded,
          color: Colors.white,
        ),
      ),
      backgroundColor: Colors.deepOrange,
      titleColor: Colors.white,
      borderRadius: BorderRadius.circular(25),
      duration: const Duration(seconds: 3),
      padding: const EdgeInsets.only(left: 30, bottom: 20, top: 20),
      margin: const EdgeInsets.all(20),
      mainButton: TextButton(
        onPressed: () {
          flush.dismiss();
        },
        child: const Icon(
          Icons.close,
          color: Colors.white,
          size: 20,
        ),
      ),
    );
  }
}
