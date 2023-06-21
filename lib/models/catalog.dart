class CatalogModel {
  //3
  static final items = [
    Item(
        id: 1,
        name: 'iphone 12 Pro',
        desc: 'Apple iphone 12th generation',
        price: 999,
        color: '#33505a',
        image: 'https://i.dummyjson.com/data/products/11/1.jpg')
  ];
}

class Item {
  //1
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  Item(
      //2
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
