import 'package:flutter/material.dart';
import 'package:flutter_web/widgets/shell.widget.dart';
import 'package:url_launcher/url_launcher.dart';

class HomePage extends StatelessWidget {
  Widget _icon(String image, String url) {
    return Padding(
      padding: EdgeInsets.all(8),
      child: InkWell(
        onTap: () => launch(url),
        child: SizedBox(
          height: 48,
          width: 48,
          child: Image.asset(image),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Shell(
      'Home',
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 150,
              width: 150,
              child: Image.asset('cat.png'),
            ),
            Text(
              'Olá, devs! ✌😎',
              style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 8),
              child: Text(
                'lucas.viana@dtidigital.com.br',
                style: TextStyle(fontSize: 28),
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                _icon('gmail.png', 'mailto:lcasviana@gmail.com'),
                _icon('instagram.png', 'https://www.instagram.com/lcasviana'),
                _icon('linkedin.png', 'https://www.linkedin.com/in/lcasviana'),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
