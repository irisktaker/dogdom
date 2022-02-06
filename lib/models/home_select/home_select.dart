import 'package:flutter/material.dart';

class HomeSelectFieldData {
  final String username;
  final String profilePhoto;
  final String photoUrl;
  final String bio;
  final Widget likes;
  final Widget comments;
  final Widget shares;

  const HomeSelectFieldData({
    required this.username,
    required this.profilePhoto,
    required this.photoUrl,
    required this.bio,
    required this.likes,
    required this.comments,
    required this.shares,
  });
}
