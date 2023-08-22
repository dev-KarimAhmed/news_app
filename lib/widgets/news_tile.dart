import 'package:flutter/material.dart';

class NewsTile extends StatelessWidget {
  const NewsTile({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(6),
      child: Column(
        children: [
          Image.network(
              'https://jobs.newscientist.com/getasset/1280cb5f-35ad-4fa2-a6b5-df17e4703099/'),
          Text(
            'I\'m a student at faculty of Science , I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
            ),
          ),
          Text(
            'I\'m a student at faculty of Science , I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,I\'m a student at faculty of Science ,',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}
