import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:shimmer/shimmer.dart';
import 'package:shimmering_effect/widgets/laptop_details.dart';

import '../bloc/shimmer_bloc.dart';
import '../models/laptop_models.dart';
import '../widgets/shimmer_ container.dart';

class ShimmeringEffectPage extends StatefulWidget {
  const ShimmeringEffectPage({Key? key}) : super(key: key);

  @override
  State<ShimmeringEffectPage> createState() => _ShimmeringEffectPageState();
}

class _ShimmeringEffectPageState extends State<ShimmeringEffectPage> {
  @override
  void initState() {
    super.initState();

    loadData();
  }

  Future loadData() async {
    context.read<ShimmerBloc>().isLoading();

    await Future.delayed(
      const Duration(seconds: 3),
    );
    laptopModels.toList();

    context.read<ShimmerBloc>().isLoaded();
  }

  @override
  Widget build(BuildContext context) {
    ListTile shimmerAnimation() {
      return ListTile(
        leading: Shimmer.fromColors(
          baseColor: Colors.grey.shade400,
          highlightColor: Colors.grey.shade200,
          child: const CircleAvatar(
            radius: 35,
            backgroundColor: Colors.grey,
          ),
        ),
        title: const ShimmeringContainer.rectangular(
          height: 16,
        ),
        subtitle: const ShimmeringContainer.rectangular(
          height: 12,
        ),
      );
    }

    return BlocBuilder<ShimmerBloc, bool>(
      builder: (context, state) => Scaffold(
        appBar: AppBar(
          title: const Text('Shimmering Effects'),
          actions: [
            IconButton(
              onPressed:() => loadData(),

              icon:
              const Icon(Icons.refresh),
            ),
          ],
        ),
        body: SafeArea(
          child: ListView.builder(
            itemCount: laptopModels.length,
            itemBuilder: (BuildContext context, int index) {
              if (state == true) {
                return shimmerAnimation();
              } else {
                return LaptopDescription(
                  index: index,
                );
              }
            },
          ),
        ),
      ),
    );
  }
}
