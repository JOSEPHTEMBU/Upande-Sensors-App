import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entities_base.dart';
import 'package:upande_sensors/core/entity/entities_list.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'alarms_base.dart';

class AlarmsList extends BaseEntitiesWidget<AlarmInfo, AlarmQuery>
    with AlarmsBase, EntitiesListStateBase {
  AlarmsList(
      TbContext tbContext, PageKeyController<AlarmQuery> pageKeyController,
      {searchMode = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);
}
