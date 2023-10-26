import 'package:flutter/material.dart';
import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/context/tb_context_widget.dart';
import 'package:upande_sensors/widgets/tb_progress_indicator.dart';

class ThingsboardInitApp extends TbPageWidget {
  ThingsboardInitApp(TbContext tbContext, {Key? key})
      : super(tbContext, key: key);

  @override
  _ThingsboardInitAppState createState() => _ThingsboardInitAppState();
}

class _ThingsboardInitAppState extends TbPageState<ThingsboardInitApp> {
  @override
  void initState() {
    super.initState();
    initTbContext();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: Colors.white,
      child: TbProgressIndicator(size: 50.0),
    );
  }
}
