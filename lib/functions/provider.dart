import 'package:api_sample/functions/getdata.dart';
import 'package:api_sample/model/usermodel.dart';
import 'package:flutter/cupertino.dart';

class Userprovider with ChangeNotifier{

  late List<UserModel>? userdatas = [];
void getdat()async{ 
  userdatas = await ApiService().getdata();  
    
  notifyListeners(); 
}



}  