// ignore_for_file: public_member_api_docs, sort_constructors_first
class WallPaperModel {
  String? thumbnail;
  String? original;

  WallPaperModel({this.thumbnail, this.original});

  WallPaperModel.fromJson(Map<String, dynamic> json) {
    thumbnail = json['medium'];
    original = json['large2x'];
  }
}
