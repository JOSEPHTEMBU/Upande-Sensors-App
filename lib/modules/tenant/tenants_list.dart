import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entities_base.dart';
import 'package:upande_sensors/core/entity/entities_list.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'tenants_base.dart';

class TenantsList extends BaseEntitiesWidget<Tenant, PageLink>
    with TenantsBase, ContactBasedBase, EntitiesListStateBase {
  TenantsList(
      TbContext tbContext, PageKeyController<PageLink> pageKeyController,
      {searchMode = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);
}
