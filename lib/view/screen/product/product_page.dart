import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:state_management_api_product_show/controller/getx_controller/product_show.dart';
import 'package:state_management_api_product_show/view/common_widget/common_text.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    ProductShowController showController = Get.put(ProductShowController());
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product"),
          centerTitle: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Obx(() => showController.isLoading.isTrue
              ? const CircularProgressIndicator()
              : Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CommonText(
                        titel:
                            "Total item : ${showController.productList.length}",fColor: Colors.black,),
                    const SizedBox(height: 10,),
                    Expanded(
                      child: GridView.builder(
                          shrinkWrap: true,
                          itemCount: showController.productList.length,
                          gridDelegate:
                              const SliverGridDelegateWithFixedCrossAxisCount(
                                  crossAxisCount: 2),
                          itemBuilder: (context, index) {
                            var data =showController.productList[index];
                            return Card(
                              child: SizedBox(
                                height: 200,
                                width: MediaQuery.sizeOf(context).width / 2.2,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Expanded(
                                      child: SizedBox(
                                        height: 140,
                                        width:
                                            MediaQuery.sizeOf(context).width /
                                                2.2,
                                        child: Image.network("${data.image}",fit: BoxFit.fill,),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                        horizontal: 10,
                                        vertical: 5,
                                      ),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          CommonText(titel: "id : ${data.id}"),
                                          CommonText(titel: "name : ${data.name}"),
                                          CommonText(titel: "price : ${data.price}"),
                                          CommonText(titel: "rating : ${data.rating}"),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            );
                          }),
                    )
                  ],
                )),
        ));
  }
}
