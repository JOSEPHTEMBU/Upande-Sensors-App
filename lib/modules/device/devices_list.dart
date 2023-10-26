import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entities_base.dart';
import 'package:upande_sensors/core/entity/entities_list.dart';
import 'package:upande_sensors/modules/device/devices_base.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class DevicesList extends BaseEntitiesWidget<EntityData, EntityDataQuery>
    with DevicesBase, EntitiesListStateBase {
  final bool displayDeviceImage;

  DevicesList(
      TbContext tbContext, PageKeyController<EntityDataQuery> pageKeyController,
      {searchMode = false, this.displayDeviceImage = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);

  @override
  bool displayCardImage(bool listWidgetCard) => displayDeviceImage;
}
