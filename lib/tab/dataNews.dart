import 'package:flutter/material.dart';

class DataNews extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 24.0),
        height: MediaQuery.of(context).size.height,
        child: ListView.builder(
          itemCount: 3,
          itemBuilder: (context, index) {
            return Container(
              height: MediaQuery.of(context).size.width * 0.5,
              child: Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                elevation: 8,
                child: Container(
                  child: Center(),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
