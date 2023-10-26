import 'package:upande_sensors/core/context/tb_context.dart';
import 'package:upande_sensors/core/entity/entities_list_widget.dart';
import 'package:upande_sensors/modules/asset/assets_base.dart';
import 'package:thingsboard_client/thingsboard_client.dart';

class AssetsListWidget extends EntitiesListPageLinkWidget<AssetInfo>
    with AssetsBase {
  AssetsListWidget(TbContext tbContext,
      {EntitiesListWidgetController? controller})
      : super(tbContext, controller: controller);

  @override
  void onViewAll() {
    navigateTo('/assets');
  }
}
