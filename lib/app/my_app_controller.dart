import 'package:nationalquiz/core/services/base_controller.dart';
import 'package:nationalquiz/core/enums/connectivity_status.dart';
import 'package:nationalquiz/core/services/base_controller.dart';
import 'package:nationalquiz/core/services/connectivity_service.dart';
import 'package:nationalquiz/ui/shared/utils.dart';
import 'package:get/get.dart';

import '../core/utils/general_utili.dart';

class MyAppController extends BaseController {
  ConnectivityStatus connectionStatus = ConnectivityStatus.ONLINE;

  @override
  void onInit() {
  
    listenToConnectionStatus();
      super.onInit();
  }

  void listenToConnectionStatus() {
    connectivityService.connectivityStatusController.stream.listen((event) {
      connectionStatus = event;
    });
  }
}
