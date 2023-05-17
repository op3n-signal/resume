import 'package:flutter/material.dart';
import 'package:portfolio/screens/styles/style_data.dart';

PreferredSizeWidget appBar(String title) => AppBar(
        backgroundColor: Styles.SubColor,
        shadowColor: Colors.transparent,
        centerTitle: true,
        title: Text(title),
      );