import 'package:flutter/material.dart';

import '../../constants/app_images.dart';

class CustomListView extends StatelessWidget {
  const CustomListView({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> images = [
      Assets.manProfileImage1,
      Assets.manProfileImage2,
      Assets.manProfileImage3,
      Assets.manProfileImage3,
      Assets.womanProfileImage1,
      Assets.womanProfileImage2,
      Assets.manProfileImage2,
      Assets.womanProfileImage3,
    ];
    List<String> names = [
      'eren',
      'Joker',
      'john',
      'Anthony',
      'thomas',
      'smith',
      'Michael',
      'jimmie',
    ];
    List<String> messages = [
      'How are you?',
      'Wanna hangout?',
      'You sent a sticker',
      'Ok, see you soon',
      'Let\'s go to the party',
      'Good night',
      'Wanna hangout?',
      'You sent a sticker',
    ];
    return ListView.separated(
      itemBuilder: (context, index) => Row(
        children: [
          CircleAvatar(
            radius: 25,
            backgroundImage: AssetImage(images[index]),
          ),
          const SizedBox(width: 20),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                names[index],
                style:
                    const TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              const SizedBox(height: 8),
              Text(
                messages[index],
                style: TextStyle(
                    fontSize: 12,
                    color: index == 0 ? Colors.black : Colors.grey,
                    fontWeight: index == 0 ? FontWeight.bold : null),
              ),
            ],
          ),
          const Spacer(),
          Text(
            '10:00 pm',
            style: TextStyle(
              color: index == 0 ? Colors.black : Colors.grey,
            ),
          ),
        ],
      ),
      itemCount: images.length,
      separatorBuilder: (context, index) => const SizedBox(height: 20),
    );
  }
}
