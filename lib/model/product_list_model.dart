class ProductListModel{

  int? id;
  String? name;
  String? image;
  double? rating;
  num? price;

  ProductListModel(this.id,this.name,this.image,this.price,this.rating);

  ProductListModel.formJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    image = json['image'];
    price = json['price'];
    rating = json['rating'];

  }

}
