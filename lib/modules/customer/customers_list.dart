import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entities_base.dart';
import 'package:upande_sensors/core/entity/entities_list.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

import 'customers_base.dart';

class CustomersList extends BaseEntitiesWidget<Customer, PageLink>
    with CustomersBase, ContactBasedBase, EntitiesListStateBase {
  CustomersList(
      TbContext tbContext, PageKeyController<PageLink> pageKeyController,
      {searchMode = false})
      : super(tbContext, pageKeyController, searchMode: searchMode);
}
