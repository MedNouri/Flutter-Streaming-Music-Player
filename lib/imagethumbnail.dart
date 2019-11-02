import 'package:flutter/material.dart';

class ImageSong extends StatelessWidget {
  final String _assetPath;

  ImageSong(this._assetPath);

  @override
  Widget build(BuildContext context) {
    return Container(

        constraints: BoxConstraints.expand(height: 400.0),
        // decoration: BoxDecoration(),
        child: Image.asset(
          _assetPath,
          fit: BoxFit.none,
        ));
  }
}