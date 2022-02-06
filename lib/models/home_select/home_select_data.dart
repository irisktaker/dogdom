import 'package:flutter/material.dart';

import 'home_select.dart';

List<HomeSelectFieldData> homeSelectData = [
  HomeSelectFieldData(
    username: "Mirabelle Swift",
    profilePhoto: "assets/images/profile_photos/img.png",
    photoUrl: "assets/images/bio_photos/img.png",
    bio: "Adwords Keyword Research For Beginners.",
    likes: customRow(
      image: "assets/icons/like.png",
      txt: "5,233",
    ),
    comments: customRow(
      image: "assets/icons/comments.png",
      txt: "189",
    ),
    shares: customRow(
      image: "assets/icons/share.png",
      txt: "238",
    ),
  ),
  HomeSelectFieldData(
    username: "William Watts",
    profilePhoto: "assets/images/profile_photos/img_1.png",
    photoUrl: "assets/images/bio_photos/img_1.png",
    bio:
        "How To Boost Your Traffic Of Your Blog And Destroy The Competition.😏 😏 😋",
    likes: customRow(
      image: "assets/icons/like.png",
      txt: "9,236",
    ),
    comments: customRow(
      image: "assets/icons/comments.png",
      txt: "639",
    ),
    shares: customRow(
      image: "assets/icons/share.png",
      txt: "173",
    ),
  ),
  HomeSelectFieldData(
    username: "Jorge Long",
    profilePhoto: "assets/images/profile_photos/img_2.png",
    photoUrl: "assets/images/bio_photos/img_2.png",
    bio:
    "A dog is a beloved, intelligent, and very loyal animal. So I like dogs very much.",
    likes: customRow(
      image: "assets/icons/like.png",
      txt: "19,236",
    ),
    comments: customRow(
      image: "assets/icons/comments.png",
      txt: "871",
    ),
    shares: customRow(
      image: "assets/icons/share.png",
      txt: "235",
    ),
  ),
  HomeSelectFieldData(
    username: "Miguel Parsons",
    profilePhoto: "assets/images/profile_photos/img_3.png",
    photoUrl: "assets/images/bio_photos/img_3.png",
    bio:
    "A dog is a beloved, intelligent, and very loyal animal. So I like dogs very much.",
    likes: customRow(
      image: "assets/icons/like.png",
      txt: "9,784",
    ),
    comments: customRow(
      image: "assets/icons/comments.png",
      txt: "587",
    ),
    shares: customRow(
      image: "assets/icons/share.png",
      txt: "112",
    ),
  ),
];

Row customRow({
  required String image,
  required String txt,
}) {
  return Row(
    children: [
      Image.asset(
        image,
        width: 15,
        height: 15,
      ),
      const SizedBox(width: 3),
      Text(txt),
    ],
  );
}
