import 'package:wallpaper_blaster/helper/api_base_helper.dart';

import 'package:wallpaper_blaster/model/wallpaper_model.dart';

class ApiRepository {
  Future<List<WallPaperModel>> getWallPaperList(String query, String perPage)async {
    List<WallPaperModel> _list = [];
    await ApiBaseHelper()
        .getMethod(url: "query=$query&per_page=$perPage")
        .then((parsedJson) {
      for (var i in parsedJson['photos']) {
        _list.add(
          WallPaperModel.fromJson(
            i['src'],
          ),
        );
      }
    }).catchError((e) {
      print(e);
    });
    return _list;
  }
}
