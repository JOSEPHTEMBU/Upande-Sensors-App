import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entity_details_page.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class TenantDetailsPage extends ContactBasedDetailsPage<Tenant> {
  TenantDetailsPage(TbContext tbContext, String tenantId)
      : super(tbContext,
            entityId: tenantId,
            defaultTitle: 'Tenant',
            subTitle: 'Tenant details');

  @override
  Future<Tenant?> fetchEntity(String tenantId) {
    return tbClient.getTenantService().getTenant(tenantId);
  }
}
