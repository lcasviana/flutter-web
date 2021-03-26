import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/shell.widget.dart';

class ResponsivePage extends StatefulWidget {
  @override
  _ResponsivePageState createState() => _ResponsivePageState();
}

class _ResponsivePageState extends State<ResponsivePage> {
  Widget _responsiveBlocks(Size size) {
    if (size.width < 800)
      return Container(
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 90, width: 150, child: Container(color: Colors.amber)),
            SizedBox(height: 90, width: 150, child: Container(color: Colors.teal)),
          ],
        ),
      );

    return Container(
      width: double.infinity,
      child: Row(
        children: [
          SizedBox(height: 90, width: size.width / 2, child: Container(color: Colors.amber)),
          SizedBox(height: 90, width: size.width / 2, child: Container(color: Colors.teal)),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Shell(
      'Responsive',
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Wrap(
              spacing: 16,
              runSpacing: 16,
              children: [
                SizedBox(height: 90, width: 150, child: Container(color: Colors.red)),
                SizedBox(height: 90, width: 150, child: Container(color: Colors.blue)),
                SizedBox(height: 90, width: 150, child: Container(color: Colors.yellow)),
                SizedBox(height: 90, width: 150, child: Container(color: Colors.orange)),
                SizedBox(height: 90, width: 150, child: Container(color: Colors.purple)),
                SizedBox(height: 90, width: 150, child: Container(color: Colors.pink)),
              ],
            ),
            SizedBox(height: 16),
            _responsiveBlocks(size),
          ],
        ),
      ),
    );
  }
}
