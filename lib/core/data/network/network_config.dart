import 'package:nationalquiz/core/data/repositories/shared_prefreance_repository.dart';
import 'package:nationalquiz/core/enums/request_type.dart';

import '../../../ui/shared/utils.dart';
import '../../utils/general_utili.dart';

class NetworkConfig {
  static String BASE_API = 'api/web/';

  static String getFullApiUrl(String api) {
    return BASE_API + api;
  }

  static Map<String, String> getHeaders(
      {bool? needAuth = true,
      RequestType? type = RequestType.POST,
      Map<String, String>? extraHeaders = const {}}) {
    return {
      if (needAuth!)
        'Authorization':
            'Bearer ${storage.getTokenInfo()?.accessToken ?? ''}',
      if (type == RequestType.POST) 'Content-Type': 'application/json',
      ...extraHeaders!
    };
  }
}
