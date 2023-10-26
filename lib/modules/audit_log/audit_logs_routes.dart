import 'package:fluro/fluro.dart';
import 'package:flutter/widgets.dart';
import 'package:upande_sensors/config/routes/router.dart';
import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/modules/audit_log/audit_logs_page.dart';

class AuditLogsRoutes extends TbRoutes {
  late var auditLogsHandler = Handler(
      handlerFunc: (BuildContext? context, Map<String, dynamic> params) {
    var searchMode = params['search']?.first == 'true';
    return AuditLogsPage(tbContext, searchMode: searchMode);
  });

  AuditLogsRoutes(TbContext tbContext) : super(tbContext);

  @override
  void doRegisterRoutes(router) {
    router.define("/auditLogs", handler: auditLogsHandler);
  }
}
