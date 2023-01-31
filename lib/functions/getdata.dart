  
import 'package:api_sample/model/usermodel.dart';
import 'package:dio/dio.dart';

class ApiService {

   var dio = Dio();


Future<List<UserModel>>getdata()async{
  
  Response response = await dio.get("https://jsonplaceholder.typicode.com/users");
  
  return (response.data as List).map((e) => UserModel.fromJson(e)).toList();
}

  
}
