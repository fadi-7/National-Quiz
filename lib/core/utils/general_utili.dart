import 'package:get/get.dart';

import '../../app/my_app_controller.dart';
import '../../ui/shared/custom_widgets/custom_toast.dart';
import '../data/repositories/shared_prefreance_repository.dart';
import '../enums/connectivity_status.dart';
import '../enums/message_type.dart';
import '../services/connectivity_service.dart';
import '../services/location_service.dart';
import '../services/notification_service.dart';

ConnectivityService get connectivityService => Get.find<ConnectivityService>();


bool get isOnline =>
    Get.find<MyAppController>().connectionStatus == ConnectivityStatus.ONLINE;

void checkConnection(Function function) {
  if (isOnline)
    function();
  else
    CustomToast.showMeassge(
        message: 'Please check internet connection',
        messageType: MessageType.WARNING);
}

SharedPrefranceRepository get storage => 
Get.find<SharedPrefranceRepository>();

// CartService get cartService => Get.find<CartService>();

LocationService get locationService => Get.find<LocationService>();
NotificationService get notificationService => Get.find<NotificationService>();
