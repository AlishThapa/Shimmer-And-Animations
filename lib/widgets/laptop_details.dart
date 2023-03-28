import 'package:flutter/material.dart';
import '../models/laptop_models.dart';

class LaptopDescription extends StatelessWidget {
  const LaptopDescription({
    super.key, required this.index,
  });
  final int index;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 35,
        backgroundImage: AssetImage(laptopModels[index].image),
      ),
      title: Text(laptopModels[index].name),
      subtitle: Text(
        laptopModels[index].description,
        maxLines: 1,
      ),
    );
  }
}
