import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_os/constants/custom_colors.dart';
import 'package:my_os/constants/custom_string.dart';
import 'package:my_os/screens/disover/profile_details_screen.dart';
import 'package:my_os/utils/spacers.dart';
import 'package:my_os/widgets/custom_text_widget.dart';

class BottomNavigationScreen extends StatefulHookConsumerWidget {
  final bool shouldRefresh;
  static const routeName = '/BottomNavigationScreen';

  const BottomNavigationScreen({
    super.key,
    this.shouldRefresh = false,
  });

  @override
  ConsumerState<BottomNavigationScreen> createState() =>
      _BottomNavigationScreenState();
}

class _BottomNavigationScreenState extends ConsumerState<BottomNavigationScreen>
    with SingleTickerProviderStateMixin {
  int index = 0;
  bool showExpired = false;
  bool showInActive = false;
  void _onPlanScreenShown() {
    setState(() {
      showExpired = false;
      showInActive = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> screenLists = [
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            semiBoldText('One', fontSize: 20),
            regularText('One', fontSize: 20),
            w500Text('One', fontSize: 20),
            boldText('One', fontSize: 20),
          ],
        ),
      ),
      Container(
        decoration: const BoxDecoration(
          color: CustomColors.whiteBgColor,
        ),
        child: Center(
          child: Column(
            children: [
              Container(
                padding:
                    EdgeInsets.only(top: MediaQuery.of(context).padding.top),
                height: 120,
                decoration: const BoxDecoration(color: CustomColors.mainPurple),
                child: Center(
                  child: boldText(
                    "Discover",
                    fontSize: 25,
                    color: CustomColors.whiteColor,
                  ),
                ),
              ),
              Expanded(
                child: GridView.builder(
                  padding: const EdgeInsets.all(10.0),
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2, // Number of items per row
                    crossAxisSpacing: 5.0, // Horizontal spacing between items
                    mainAxisSpacing: 10.0, // Vertical spacing between items
                    childAspectRatio: 0.6, // Aspect ratio for each item
                  ),
                  itemCount: 8, // Total number of items
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const ProfileDetailsScreen(),
                          ),
                        );
                      },
                      child: Card(
                        elevation: 3, // Adds elevation for shadow effect
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(10.0), // Rounded corners
                        ),
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white, // White background
                            borderRadius: BorderRadius.circular(
                                10.0), // Matches Card shape
                          ),
                          child: Center(
                            child: Stack(
                              children: [
                                // Top part (80% of the Card's height)
                                FractionallySizedBox(
                                  heightFactor: 0.8, // 80% of the height
                                  alignment: Alignment.topCenter,
                                  child: Container(
                                    decoration: BoxDecoration(
                                      color: Colors.blue
                                          .shade100, // Optional color for visualization
                                      borderRadius: const BorderRadius.only(
                                        topLeft: Radius.circular(10.0),
                                        topRight: Radius.circular(10.0),
                                      ),
                                    ),
                                    child: Image.asset(
                                      ConstantString.splashScreen,
                                      fit: BoxFit.cover,
                                      width: double.infinity,
                                    ),
                                  ),
                                ),
                                // Bottom part (20% of the Card's height)
                                Align(
                                  alignment: Alignment.bottomCenter,
                                  child: FractionallySizedBox(
                                    heightFactor: 0.35, // 20% of the height
                                    child: Container(
                                      width: double.infinity,
                                      decoration: const BoxDecoration(
                                        color: CustomColors.whiteColor,
                                        borderRadius: BorderRadius.only(
                                          bottomLeft: Radius.circular(10.0),
                                          bottomRight: Radius.circular(10.0),
                                          topLeft: Radius.circular(10.0),
                                          topRight: Radius.circular(10.0),
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                          horizontal: 12.0,
                                        ),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            verticalSpacer(10),
                                            Row(
                                              children: [
                                                boldText(
                                                  "Steward",
                                                  fontSize: 20,
                                                ),
                                                horizontalSpacer(4),
                                                SvgPicture.asset(
                                                  ConstantString.verifiedIcon,
                                                  height: 13,
                                                  colorFilter:
                                                      const ColorFilter.mode(
                                                          CustomColors.mainPink,
                                                          BlendMode.srcIn),
                                                ),
                                              ],
                                            ),
                                            w500Text(
                                              "Female,  21",
                                              fontSize: 15,
                                            ),
                                            Row(
                                              children: [
                                                Expanded(
                                                  child: w500Text(
                                                    "Lagos Mainland",
                                                    fontSize: 15,
                                                  ),
                                                ),
                                                Row(
                                                  children: [
                                                    w500Text(
                                                      "4.5",
                                                      fontSize: 13,
                                                    ),
                                                    horizontalSpacer(2),
                                                    SvgPicture.asset(
                                                      ConstantString.starIcon,
                                                      height: 16,
                                                      colorFilter:
                                                          const ColorFilter
                                                              .mode(
                                                              CustomColors
                                                                  .ratingYellow,
                                                              BlendMode.srcIn),
                                                    ),
                                                  ],
                                                )
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            semiBoldText('Three', fontSize: 20),
            regularText('Three', fontSize: 20),
            w500Text('Three', fontSize: 20),
            boldText('Three', fontSize: 20),
          ],
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            semiBoldText('Four', fontSize: 20),
            regularText('Four', fontSize: 20),
            w500Text('Four', fontSize: 20),
            boldText('Four', fontSize: 20),
          ],
        ),
      ),
      Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            semiBoldText('Four', fontSize: 20),
            regularText('Four', fontSize: 20),
            w500Text('Four', fontSize: 20),
            boldText('Four', fontSize: 20),
          ],
        ),
      ),
    ];
    return PopScope(
      // },
      canPop: false,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          // resizeToAvoidBottomInset: false,

          bottomNavigationBar: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Divider(
                color: CustomColors.dividerGreyColor,
                height: 0,
              ),
              verticalSpacer(10),
              BottomAppBar(
                // notchMargin: 100,
                // notchMargin: 1,
                // height: 80,
                elevation: 0,
                padding: const EdgeInsets.only(right: 15, left: 15, bottom: 5),
                color: Colors.transparent,

                // surfaceTintColor: Colors.white,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  // mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 0;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 300),
                          // curve: Curves.decelerate,
                          padding:
                              // index == 0
                              //     ?
                              const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          // : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ConstantString.pulseIcon,
                                height: 25,
                                colorFilter: index == 0
                                    ? const ColorFilter.mode(
                                        CustomColors.mainPink, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        CustomColors.darkIcon, BlendMode.srcIn),
                              ),
                              w500Text(
                                "Activity",
                                fontSize: 14.5,
                                color: index == 0
                                    ? CustomColors.mainPink
                                    : CustomColors.darkIcon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 1;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 300),
                          // curve: Curves.decelerate,
                          padding:
                              // index == 0
                              //     ?
                              const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          // : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ConstantString.cardsIcon,
                                height: 25,
                                colorFilter: index == 1
                                    ? const ColorFilter.mode(
                                        CustomColors.mainPink, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        CustomColors.darkIcon, BlendMode.srcIn),
                              ),
                              w500Text(
                                "Explore",
                                fontSize: 14.5,
                                color: index == 1
                                    ? CustomColors.mainPink
                                    : CustomColors.darkIcon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 2;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 300),
                          // curve: Curves.decelerate,
                          padding:
                              // index == 0
                              //     ?
                              const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          // : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ConstantString.starIcon,
                                height: 25,
                                colorFilter: index == 2
                                    ? const ColorFilter.mode(
                                        CustomColors.mainPink, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        CustomColors.darkIcon, BlendMode.srcIn),
                              ),
                              w500Text(
                                "Favourite",
                                fontSize: 14.5,
                                color: index == 2
                                    ? CustomColors.mainPink
                                    : CustomColors.darkIcon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 3;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 300),
                          // curve: Curves.decelerate,
                          padding:
                              // index == 0
                              //     ?
                              const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          // : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ConstantString.chatIcon,
                                height: 25,
                                colorFilter: index == 3
                                    ? const ColorFilter.mode(
                                        CustomColors.mainPink, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        CustomColors.darkIcon, BlendMode.srcIn),
                              ),
                              w500Text(
                                "Chats",
                                fontSize: 14.5,
                                color: index == 3
                                    ? CustomColors.mainPink
                                    : CustomColors.darkIcon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          setState(() {
                            index = 4;
                          });
                        },
                        child: Container(
                          // duration: const Duration(milliseconds: 300),
                          // curve: Curves.decelerate,
                          padding:
                              // index == 0
                              //     ?
                              const EdgeInsets.symmetric(
                            horizontal: 8.0,
                            vertical: 10,
                          ),
                          // : EdgeInsets.zero,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(24),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              SvgPicture.asset(
                                ConstantString.moreIcon,
                                height: 25,
                                colorFilter: index == 4
                                    ? const ColorFilter.mode(
                                        CustomColors.mainPink, BlendMode.srcIn)
                                    : const ColorFilter.mode(
                                        CustomColors.darkIcon, BlendMode.srcIn),
                              ),
                              w500Text(
                                "More",
                                fontSize: 14.5,
                                color: index == 4
                                    ? CustomColors.mainPink
                                    : CustomColors.darkIcon,
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          body: screenLists[index],
        ),
      ),
    );
  }
}
