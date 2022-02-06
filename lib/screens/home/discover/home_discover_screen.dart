import '/shared/search_bar/search_bar.dart';
import 'package:flutter/material.dart';

import 'home_discover_screen_bloc.dart';

class HomeDiscoverScreen extends StatelessWidget {
  HomeDiscoverScreen({Key? key}) : super(key: key);

  final HomeDiscoverScreenBloc _discoverScreenBloc = HomeDiscoverScreenBloc();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
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
                itemCount: _discoverScreenBloc.discoverRowBarData.length,
                itemBuilder: (ctx, i) {
                  return Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const SizedBox(height: 12),
                      Image.asset(
                        _discoverScreenBloc.discoverRowBarData[i]['icon'],
                        width: 40,
                        height: 40,
                      ),
                      const SizedBox(height: 6),
                      Text(
                        _discoverScreenBloc.discoverRowBarData[i]['text'],
                      ),
                    ],
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
