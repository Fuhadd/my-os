import 'package:flutter/material.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:my_os/constants/custom_string.dart';
import 'package:my_os/utils/spacers.dart';
import 'package:my_os/widgets/custom_text_widget.dart';

class ProfileDetailsScreen extends StatefulHookConsumerWidget {
  static const routeName = '/ProfileDetailsScreen';

  const ProfileDetailsScreen({
    super.key,
  });

  @override
  ConsumerState<ProfileDetailsScreen> createState() =>
      _ProfileDetailsScreenState();
}

class _ProfileDetailsScreenState extends ConsumerState<ProfileDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: false,
      child: SafeArea(
        top: false,
        bottom: false,
        child: Scaffold(
          body: Container(
            child: Padding(
              padding: EdgeInsets.only(
                  top: MediaQuery.of(context).padding.top + 20,
                  left: 10,
                  right: 10),
              child: Column(
                children: [
                  Row(
                    children: [
                      const Icon(
                        Icons.arrow_back_ios,
                        size: 22,
                      ),
                      // horizontalSpacer(width)
                      w500Text(
                        "Back",
                        fontSize: 15,
                      )
                    ],
                  ),
                  verticalSpacer(20),
                  Container(
                    height: MediaQuery.of(context).size.height * 0.6,
                    decoration: BoxDecoration(
                      image: const DecorationImage(
                        image: AssetImage(
                          ConstantString.splashScreen,
                        ),
                        fit: BoxFit.cover,
                      ),
                      borderRadius: BorderRadius.circular(5),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
