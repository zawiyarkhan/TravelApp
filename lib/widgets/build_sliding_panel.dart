import 'package:flutter/material.dart';
import 'package:travel_app/widgets/tabwidget.dart';
import 'package:travel_app/widgets/tabwidget2.dart';

Widget buildSlidingPanel({
    required String area,
    required ScrollController scrollController,
  }) => Tabwidget( area: area);