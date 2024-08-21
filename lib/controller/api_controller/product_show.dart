
import 'dart:convert';
import 'dart:developer';

import 'package:get/get.dart';
import 'package:state_management_api_product_show/database/product_list.dart';
import 'package:state_management_api_product_show/model/product_list_model.dart';

class ProductShowService{

  static Future<List<ProductListModel>> getData()async{
    try{

      await Future.delayed(const Duration(seconds: 3));

      List<ProductListModel> data =[];
      for(var i in ProductList.productList["productList"].toList()){
        var decodeData = ProductListModel.formJson(jsonDecode(jsonEncode(i)));
        data.add(decodeData);
      }
      return data;

    }catch (e){
      log("error :$e");
    }
    Get.snackbar("message", "Product Not Found");
    return [];
  }
}