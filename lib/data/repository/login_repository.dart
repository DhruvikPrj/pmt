import 'package:pmt/data/network/network_api.dart';
import 'package:pmt/res/app_url/app_url.dart';

class LoginRepository {
  final _apiServices = NetWorkApiServices();

  Future<dynamic> loginApi(var data) async {
    dynamic response = _apiServices.postApi(data, AppAPIUrl.loginApiUrl);
    return response;
  }
}
