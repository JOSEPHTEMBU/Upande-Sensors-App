import 'package:flutter/material.dart';
import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entity_details_page.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class DeviceDetailsPage extends EntityDetailsPage<DeviceInfo> {
  DeviceDetailsPage(TbContext tbContext, String deviceId)
      : super(tbContext, entityId: deviceId, defaultTitle: 'Device');

  @override
  Future<DeviceInfo?> fetchEntity(String deviceId) {
    return tbClient.getDeviceService().getDeviceInfo(deviceId);
  }

  @override
  Widget buildEntityDetails(BuildContext context, DeviceInfo device) {
    return ListTile(
      title: Text('${device.name}'),
      subtitle: Text('${device.type}'),
    );
  }
}
