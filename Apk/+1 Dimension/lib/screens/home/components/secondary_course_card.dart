import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:external_app_launcher/external_app_launcher.dart';

class SecondaryCourseCard extends StatelessWidget {
  const SecondaryCourseCard({
    Key? key,
    required this.title,
    this.package = "com.instagram.android",
    this.iconsSrc = "assets/icons/ios.svg",
    this.colorl = const Color(0xFF7553F6),
  }) : super(key: key);

  final String title, iconsSrc,package;
  final Color colorl;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(onTap: ()async {
      await LaunchApp.openApp(
        androidPackageName: package,
        iosUrlScheme: 'pulsesecure://',
        appStoreLink: 'itms-apps://itunes.apple.com/us/app/pulse-secure/id945832041',
        // openStore: false
      );

    },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
        decoration: BoxDecoration(
            color: colorl,
            borderRadius: const BorderRadius.all(Radius.circular(20))),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    "Click to open AR-View",
                    style: TextStyle(
                      color: Colors.white60,
                      fontSize: 16,
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 40,
              child: VerticalDivider(
                // thickness: 5,
                color: Colors.white70,
              ),
            ),
            const SizedBox(width: 8),
            SvgPicture.asset(iconsSrc,height: 50, width: 50,
            )
          ],
        ),
      ),
    );
  }
}
