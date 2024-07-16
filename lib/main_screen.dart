import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application_cubit/cubit/cubit/shape_cubit.dart';
import 'package:flutter_application_cubit/cubit/cubit/shape_state.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Task4Cubit _cubit4 = context.read<Task4Cubit>();

    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            BlocBuilder<Task4Cubit, ShapeState>(
              builder: (context, state) {
                return _cubit4.contentWidget; // Display the current content based on state
              },
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  _cubit4.showText();
                },
                child: Text('Show text'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  _cubit4.showImage();
                },
                child: Text('Show image'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  _cubit4.showCircle();
                },
                child: Text('Show red circle'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(6),
              child: ElevatedButton(
                onPressed: () {
                  _cubit4.reset();
                },
                child: Text('Reset'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
