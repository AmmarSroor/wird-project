import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ramadan_cmpetitions/core/resources/colors.dart';
import 'package:ramadan_cmpetitions/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class BuildAdvertisementSlider extends StatelessWidget {
  final double screenHeight;
  final double screenWidth;
  final List<Widget> advertisements;
  BuildAdvertisementSlider({
    required this.screenHeight,
    required this.screenWidth,
    required this.advertisements,
  });
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<HomePageCubit, HomePageState>(
      listener: (context, state) {},
      builder: (context, state) {
        return Stack(
          alignment: Alignment.bottomCenter,
          children: [
            Padding(
                padding: const EdgeInsets.all(16.0),
                child: CarouselSlider.builder(
                    options: CarouselOptions(
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 5),
                      autoPlayAnimationDuration: Duration(seconds: 1),
                      autoPlayCurve: Curves.fastOutSlowIn,
                      scrollDirection: Axis.horizontal,
                      viewportFraction: 1,
                      enlargeCenterPage: true,
                      onPageChanged: (index, reason) {
                        HomePageCubit.get(context).changeSliderIndex(index);
                      },
                    ),
                    itemCount:advertisements.length,
                    itemBuilder: (context, index, realIndex) {
                      return Container(
                        height:screenHeight,
                        width: screenWidth,
                        child:advertisements[index],
                      );
                    }
                )
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 25.0),
              child: buildIndicator(index:HomePageCubit.get(context).sliderIndex,length:advertisements.length),
            ),
          ],
        );
      },
    );
  }
}

Widget buildIndicator({
  required index,
  required length
}){
  return AnimatedSmoothIndicator(
  activeIndex: index,
  count: length,
    effect:JumpingDotEffect(
      dotWidth: 10,
      dotHeight: 10,
      activeDotColor: Color(HEX_ORANGE_COLOR),
      dotColor: Color(HEX_LIGHT_WHITE_COLOR),
    ) ,
);
}

