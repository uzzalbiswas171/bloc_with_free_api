import 'dart:convert';
import 'package:q_tech/model/user_model.dart';
import 'package:http/http.dart';

class UserRepository {
  String userUrl = 'https://reqres.in/api/users?page=2';
  String userUrl1 = 'https://panel.supplyline.network/api/product/search-suggestions/?limit=10&offset=10&search=rice';
  List<Results> list=[];

    getUsers() async {
      Results results;
       try{
         Response response = await get(Uri.parse(userUrl1));
         var item=jsonDecode(response.body);
         print(item["data"]["products"]["results"]);
         for(var i in item["data"]["products"]["results"]){
           results=Results.fromJson(i);
           list.add(results);
           print(list);
         }
       }catch(e){
         print(e);
       }
return list;

  }
}
