import 'package:flutter/material.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Container(
      width: size.width,
      height: 56,
      padding: const EdgeInsets.only(left: 15, right: 12, top: 6, bottom: 6),
      decoration: BoxDecoration(
        color: const Color(0xFFFAFAFA),
        borderRadius: BorderRadius.circular(21),
      ),
      child: Row(
        children: [
          const Icon(
            Icons.search,
            color: Colors.grey,
            size: 24,
          ),
          const SizedBox(width: 2),
          const Text(
            "Send the sample",
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey,
            ),
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.mic,
            color: Colors.grey,
            size: 24,
          ),
        ],
      ),
    );
  }
}
