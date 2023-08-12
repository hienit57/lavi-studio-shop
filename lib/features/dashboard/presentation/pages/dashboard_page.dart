import 'package:lavi_studio_shop/core/mixins/index.dart';
import 'package:flutter/material.dart';
import 'package:lavi_studio_shop/features/home/presentation/pages/home_page.dart';

class Dashboard extends StatefulWidget {
  static const String routeName = '/';
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> with LoadingMixin {
  @override
  Widget build(BuildContext context) {
    return const HomePage();
  }
}
