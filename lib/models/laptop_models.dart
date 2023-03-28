class LaptopModels {
  String image;
  String name;
  String description;

  LaptopModels(
      {required this.image, required this.name, required this.description});
}

List<LaptopModels> laptopModels = [
  LaptopModels(
    image: 'assets/images/asus.jpg',
    name: 'Asus',
    description:
        'ASUS laptops are known for their sleek designs, powerful performance, and advanced features.',
  ),
  LaptopModels(
    image: 'assets/images/dell.jpg',
    name: 'Dell',
    description:
        'Dell laptop has a long lasting battery, customizable options which allows users to choose from a range of configurations to suit their specific needs.',
  ),
  LaptopModels(
    image: 'assets/images/lenovo.jpg',
    name: 'Lenovo',
    description:
        'Lenovo is popular for their sleek designs, flexible form factors and high performance capabilities. These laptops are designed to be versatile.  ',
  ),
  LaptopModels(
    image: 'assets/images/msi.jpg',
    name: 'MSI',
    description:
        'MSI laptops are known for their powerful performance, high-quality graphics, and advanced features, making them a popular choice among gamers, content creators, and other users who require high-performance machines.',
  ),
  LaptopModels(
    image: 'assets/images/ripple.jpg',
    name: 'Ripple',
    description:
        'The Ripple Vibe is a thin and lightweight laptop that features a 14-inch Full HD IPS display with narrow bezels, providing an immersive viewing experience.',
  ),
];
