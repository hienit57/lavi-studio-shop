import 'package:lavi_studio_shop/common/global/index.dart';
import 'package:lavi_studio_shop/theme/app_colors.dart';
import 'package:lavi_studio_shop/utils/responsive.dart';
import 'package:flutter/material.dart';
import 'package:lavi_studio_shop/index.dart';

class GlobalPage extends StatefulWidget {
  final Widget child;
  const GlobalPage({super.key, required this.child});

  @override
  State<GlobalPage> createState() => _GlobalPageState();
}

class _GlobalPageState extends State<GlobalPage> {
  bool _isHovered = false;

  late GlobalCubit _globalCubit;

  @override
  void initState() {
    _globalCubit = BlocProvider.of<GlobalCubit>(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: AppColors.colorF3EFEA, body: widget.child);
  }
}
