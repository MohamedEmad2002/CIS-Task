import 'package:cis_task/constants/app_images.dart';
import 'package:flutter/material.dart';

class CustomHorizintalListView extends StatelessWidget {
  const CustomHorizintalListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      Assets.manProfileImage3,
      Assets.manProfileImage1,
      Assets.manProfileImage2,
      Assets.womanProfileImage1,
      Assets.womanProfileImage2,
      Assets.womanProfileImage3,
    ];
    return Padding(
      padding: const EdgeInsets.only(left: 20.0),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (context, index) => const SizedBox(width: 15),
        itemCount: images.length,
        itemBuilder: (context, index) {
          return index == 0
              ? Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.grey[400],
                  ),
                  child: const Center(
                    child: Icon(
                      Icons.add,
                      size: 30,
                    ),
                  ),
                )
              : Stack(
                  alignment: Alignment.center,
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.blueAccent,
                    ),
                    CircleAvatar(
                      radius: 22,
                      backgroundImage: AssetImage(images[index]),
                    ),
                    const Positioned(
                      left: 40,
                      top: 60,
                      child: CircleAvatar(
                        radius: 5,
                        backgroundColor: Colors.greenAccent,
                      ),
                    )
                  ],
                );
        },
      ),
    );
  }
}
