import 'package:logger/logger.dart';
import 'package:sharpnews/core/networks/api_request.dart';
import 'package:sharpnews/core/utils/current_date_utils.dart';

abstract class NewsService {
  Future getNews();
}

class NewsServiceImplementaion implements NewsService {
  final ApiServiceRequester _apiServiceRequester = ApiServiceRequester();

  @override
  Future getNews() async {
    var currentDate = DateUtils.currentDate();
    try {
      final response = await _apiServiceRequester.getRequest(
          url:
              'v2/everything?q=tesla&from=$currentDate&sortBy=publishedAt&apiKey=c0892f14520840d8bdd205d07ff1b478');
      return response;
    } catch (e) {
      Logger().d('$e');
    }
  }
}
