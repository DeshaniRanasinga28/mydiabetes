class Food{
  int id;
  String name;
  String image;
  String sugar;

  Food(this.id, this.name, this.image, this.sugar);

  Map<String, dynamic> toMap(){
    var map = <String, dynamic>{
    'id': id,
    'name': name,
    'image': image,
    'sugar': sugar,
    };
    return map;
  }
  Food.fromMap(Map<String, dynamic> map){
    id = map['id'];
    name = map['name'];
    image = map['image'];
    sugar = map['sugar'];
  }
}