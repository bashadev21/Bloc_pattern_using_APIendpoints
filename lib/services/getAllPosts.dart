import 'package:blocApi/Credentials.dart';
import 'package:blocApi/modals/allpostsmodal.dart';
import 'package:blocApi/modals/postDetialModal.dart';
import 'package:http/http.dart' as http;

Future<List<AllPosts>> getAllPosts() async {
  final response = await http.get(Credentials.baseUrl);

  return allPostsFromJson(response.body);
}

Future<PostDetail> postDetailre(id) async {
  final response = await http.get("${Credentials.baseUrl}/$id");
  print(response.body);
  return postDetailFromJson(response.body);
}
