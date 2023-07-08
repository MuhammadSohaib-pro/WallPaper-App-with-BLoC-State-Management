// import 'dart:convert';

// import 'package:http/http.dart' as http;

// class ApiProvider {
//   final String _url = "https://api.thecatapi.com/v1/images/search?limit=20";

//   Future<List<PhotoModel>> getPhotosList() async {
//     try {
//       List<PhotoModel> list = [];
//       http.Response response = await http.get(Uri.parse(_url));
//       if (response.statusCode == 200) {
//         var jsonData = jsonDecode(response.body.toString());
//         for (var i in jsonData) {
//           list.add(PhotoModel.fromJson(i));
//         }
//         if (list.isNotEmpty) {
//           return list;
//         } else {
//           PhotoModel.withError("Data not found / Connection Issue");
//           return [];
//         }
//       } else {
//         PhotoModel.withError("Data not found / Connection Issue");
//         return [];
//       }
//     } catch (e) {
//       PhotoModel.withError("Data not found / Connection Issue");
//       return [];
//     }
//   }
// }
