

import 'package:get/get.dart';
import 'package:state_management_api_product_show/controller/api_controller/product_show.dart';
import 'package:state_management_api_product_show/model/product_list_model.dart';

class ProductShowController extends GetxController{

  List<ProductListModel> productList =[];
  RxBool isLoading =true.obs;



  getProductList()async{
    isLoading.value=true;
    productList = await ProductShowService.getData();
    isLoading.value=false;
  }

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }

}