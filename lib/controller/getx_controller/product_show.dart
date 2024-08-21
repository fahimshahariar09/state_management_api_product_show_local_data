import 'dart:developer';

import 'package:get/get.dart';
import 'package:state_management_api_product_show/controller/api_controller/product_show.dart';
import 'package:state_management_api_product_show/model/product_list_model.dart';

class ProductShowController extends GetxController {
  //product searching
  //TextEditingController searchController = TextEditingController();
  List<ProductListModel> finalproductList = [];
  //show product funcation
  List<ProductListModel> productList = [];
  RxBool isLoading = true.obs;
  RxString searchText = "".obs;

  getProductList() async {
    isLoading.value = true;
    //show product funcation
    // productList = await ProductShowService.getData();

    //product searching
    finalproductList = await ProductShowService.getData();
    productList.addAll(finalproductList);
    // log(".....final1.....${finalproductList.length}");
    // log(".........list...${productList.length}");
    // productList.clear();
    // log("....final2...${finalproductList.length}");
    // log(".........list...${productList.length}");
    isLoading.value = false;
  }

  searchFun({required String searchText}) async {
    isLoading.value = true;
    productList = finalproductList
        .where((value) =>
            // value.name?.toLowerCase().toString() == searchText.toLowerCase(),
            value.name!.toLowerCase().contains(searchText.toLowerCase()) ||
            value.price.toString().contains(searchText))
        .toList();
    log("data:${productList.length}");
    isLoading.value = false;
  }

  @override
  void onInit() {
    getProductList();
    super.onInit();
  }
}
