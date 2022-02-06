import 'package:dogdom/shared/main_btn/main_btn.dart';
import 'package:dogdom/utils/colors.dart';

import '/models/home_select/home_select_data.dart';

import '/shared/search_bar/search_bar.dart';
import 'package:flutter/material.dart';

import 'home_select_screen_bloc.dart';

class HomeSelectScreen extends StatelessWidget {
  HomeSelectScreen({Key? key}) : super(key: key);

  final HomeSelectScreenBloc _selectScreenBloc = HomeSelectScreenBloc();

  List<Map<String, dynamic>> carouselSlide = [
    {
      'title': 'Take me home',
      'description': 'Take care of stray dogs, please take them home.',
      'btnText': 'Let me',
      'image': 'assets/images/dog_slider_1.png',
      'color': Colors.black,
    },
    {
      'title': 'Take me home',
      'description': 'Please take me home.',
      'btnText': 'Let me',
      'image': 'assets/images/dog_slider_2.png',
      'color': Colors.white,
    },
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: ListView(
          shrinkWrap: true,
          children: [
            const SearchBar(),
            SizedBox(
              width: size.width,
              height: 78,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(
                  parent: NeverScrollableScrollPhysics(),
                ),
                itemExtent: size.width * 0.30,
                itemCount: _selectScreenBloc.selectRowBarData.length,
                itemBuilder: (ctx, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12),
                      Image.asset(
                        _selectScreenBloc.selectRowBarData[i]['icon'],
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _selectScreenBloc.selectRowBarData[i]['text'],
                      ),
                    ],
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            SizedBox(
              width: size.width - 40,
              height: 190,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: carouselSlide.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(right: 8),
                    child: Container(
                      width: size.width - 40,
                      height: 190,
                      padding: const EdgeInsets.symmetric(horizontal: 29, vertical: 16),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(18),
                        image: DecorationImage(
                          image: AssetImage(
                            carouselSlide[index]['image'],
                          ),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const SizedBox(height: 32),
                          Text(
                            carouselSlide[index]['title'],
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.w600,
                              color: carouselSlide[index]['color'],
                            ),
                          ),
                          const SizedBox(height: 4),
                          SizedBox(
                            width: 173,
                            child: Text(
                              carouselSlide[index]['description'],
                              style: TextStyle(
                                fontSize: 13,
                                fontWeight: FontWeight.w400,
                                color: carouselSlide[index]['color'],
                              ),
                            ),
                          ),
                          const SizedBox(height: 16),
                          TextButton(
                            onPressed: () {},
                            style: ButtonStyle(
                              backgroundColor: MaterialStateProperty.all(Colors.black),
                              foregroundColor: MaterialStateProperty.all(Colors.white),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 16),
                              child: Text(
                                carouselSlide[index]['btnText'],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 20),
            ListView.builder(
              shrinkWrap: true,
              itemCount: homeSelectData.length,
              itemBuilder: (context, index) {
                return Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage(homeSelectData[index].profilePhoto,
                          ),
                        ),
                        const SizedBox(width: 8),
                        Text(homeSelectData[index].username),
                        Expanded(child: Container()),
                        MainBtn(
                          onPressed: (){},
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        homeSelectData[index].bio,
                      ),
                    ),
                    const SizedBox(height: 10),
                    Image.asset(homeSelectData[index].photoUrl),
                    const SizedBox(height: 10),
                    Row(
                      children: [
                        homeSelectData[index].likes,
                        const SizedBox(width: 24),
                        homeSelectData[index].comments,
                        const SizedBox(width: 24),
                        homeSelectData[index].shares,
                        Expanded(child: Container(),),
                        Image.asset("assets/icons/more_info_hori.png",width: 24, height: 24,),
                      ],
                    ),
                    const SizedBox(height: 20),
                  ],
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
