import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_cubit/cubit/cubit/shape_state.dart';

class Task4Cubit extends Cubit<ShapeState> {
  Task4Cubit() : super(Reset());

  Widget contentWidget = Container(); // Initial empty widget

  void showText() {
    contentWidget = Center(
      child: Text(
        'Pub.dev',
        style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
      ),
    );
    emit(ShowText()); // Emit new state
  }

  void showImage() {
    contentWidget = Container(
      height: 200,
      width: 200,
      child: Image.asset('assets/images/logo.png'),
    );
    emit(ShowImage()); // Emit new state
  }

  void showCircle() {
    contentWidget = Center(
      child: CircleAvatar(
        backgroundColor: Colors.red,
        radius: 90,
      ),
    );
    emit(ShowCircle()); // Emit new state
  }

  void reset() {
    contentWidget = Container();
    emit(Reset()); // Emit new state
  }
}
