import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:upande_sensors/config/routes/router.dart';
import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/modules/main/main_page.dart';

class HomeRoutes extends TbRoutes {
  late var homeHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    return MainPage(tbContext, path: '/home');
  });

  HomeRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define("/home", handler: homeHandler);
  }
}
