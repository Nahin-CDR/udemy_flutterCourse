
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:udemy1/presentation/resources/assets_manager.dart';
import 'package:udemy1/presentation/resources/color_manager.dart';
import 'package:udemy1/presentation/resources/strings_manager.dart';
import 'package:udemy1/presentation/resources/values_manager.dart';

class OnBoardingView extends StatefulWidget {
  const OnBoardingView({Key? key}) : super(key: key);

  @override
  State<OnBoardingView> createState() => _OnBoardingViewState();
}

class _OnBoardingViewState extends State<OnBoardingView> {

  late final  List<SliderObject>_list = _getSliderData();
  final PageController _pageController = PageController(initialPage: 0);
  int _currentIndex = 0;
  List<SliderObject> _getSliderData(){
    return [
      SliderObject(
          image:ImageAssets.onBoardingLogo1,
          subTitle: AppString.onBoardingSubTitle1,
          title: AppString.onBoardingSubTitle1
      ),
      SliderObject(
          image:ImageAssets.onBoardingLogo2,
          subTitle: AppString.onBoardingSubTitle2,
          title: AppString.onBoardingSubTitle2
      ),
      SliderObject(
          image:ImageAssets.onBoardingLogo3,
          subTitle: AppString.onBoardingSubTitle3,
          title: AppString.onBoardingSubTitle3
      ),
      SliderObject(
          image:ImageAssets.onBoardingLogo4,
          subTitle: AppString.onBoardingSubTitle4,
          title: AppString.onBoardingSubTitle4
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorManager.white,
      // appBar: AppBar(
      //   backgroundColor: ColorManager.primary,
      //   elevation: AppSize.s1_5,
      //   systemOverlayStyle: SystemUiOverlayStyle(
      //     statusBarColor: ColorManager.white,
      //     statusBarBrightness: Brightness.dark,
      //     statusBarIconBrightness: Brightness.dark
      //   ),
      // ),
      body: PageView.builder(
          controller : _pageController,
          itemCount: _list.length,
          onPageChanged: (index){
            setState(() {
              _currentIndex = index;
            });
          },
          itemBuilder: (context,index){
            return OnBoardingPage(sliderObject: _list[index]);
          },
      ),
      bottomSheet: Container(
        color: ColorManager.white,
        height: AppSize.s100,
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                  onPressed: (){},
                  child: const Text(
                    AppString.skip,
                    textAlign: TextAlign.end,
                  )
              ),
            ),
            _getBottomSheet()
          ],
        ),
      ),
    );
  }

  Widget _getBottomSheet(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        //left arrow
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: Image.asset(ImageAssets.leftArrow),
            ),
            onTap: (){
              _pageController.animateToPage(
                  _getPreviousIndex(),
                  duration: const Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.bounceInOut
              );
            },
          ),
        ),
        Row(
          children: [
            for(int i=0; i<_list.length; i++)
              Padding(
                padding: const EdgeInsets.all(AppPadding.p8),
                child: _getProperCircle(i),
              )
          ],
        ),
        // right arrow
        Padding(
          padding: const EdgeInsets.all(AppPadding.p14),
          child: GestureDetector(
            child: SizedBox(
              height: AppSize.s20,
              width: AppSize.s20,
              child: Image.asset(ImageAssets.leftArrow),
            ),
            onTap: (){
              _pageController.animateToPage(
                  _getNextIndex(),
                  duration: const Duration(milliseconds: DurationConstant.d300),
                  curve: Curves.bounceInOut
              );
            },
          ),
        )
      ],
    );
  }
  int _getPreviousIndex(){
    int previousIndex = _currentIndex--;
    if(previousIndex == -1){
      _currentIndex = _list.length-1;
    }
    return _currentIndex;
  }

  int _getNextIndex(){
    int nextIndex = _currentIndex++;
    if(nextIndex >= _list.length){
      _currentIndex = 0;
    }
    return _currentIndex;
  }
  Widget _getProperCircle(int index){
    if(index == _currentIndex){
      return Image.asset(ImageAssets.circleFill,height: 15);
    }else{
      return Image.asset(ImageAssets.circleEmpty,height: 15);
    }
  }
}



// ignore: must_be_immutable
class OnBoardingPage extends StatelessWidget {
  SliderObject sliderObject;
  OnBoardingPage({required this.sliderObject,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        const SizedBox(height:AppSize.s40),
        Text(
          sliderObject.title,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.titleMedium,
        ),
        const SizedBox(height: 10),
        SvgPicture.asset(sliderObject.image)
      ],
    );
  }
}

class SliderObject{
  String title;
  String subTitle;
  String image;
  SliderObject({required this.subTitle,required this.image,required this.title});
}