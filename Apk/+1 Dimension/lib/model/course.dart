import 'package:flutter/material.dart' show Color;

class Course {
  final String title, description, iconSrc, package;
  final Color color;

  Course({
    required this.title,
    this.package = "com.instagram.android",
    this.description = 'Build and animate an iOS app from scratch',
    this.iconSrc = "assets/icons/ios.svg",
    this.color = const Color(0xFF7553F6),
  });
}

final List<Course> courses = [
  Course(
    title: "Animations in SwiftUI",
  ),
  Course(
    title: "Animations in Flutter",
    iconSrc: "assets/icons/code.svg",
    color: const Color(0xFF80A4FF),
  ),
];

final List<Course> recentCourses = [
  Course(
      title: "Homes",
      iconSrc: "assets/icons/Home.svg",
      package: "com.YourCompany.AR_3_0"),
  Course(
    title: "Flats",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/Flat.svg",
  ),
  Course(
      title: "Buildings",
      iconSrc: "assets/icons/Building.svg"),
  Course(
    title: "Plots",
    color: const Color(0xFF9CC5FF),
    iconSrc: "assets/icons/Plot.svg",
  ),
];
final List<Course> importCourses = [
  Course(
      title: "Open Camera for AR view",
      iconSrc: "assets/icons/yourimport.svg" ),
];
