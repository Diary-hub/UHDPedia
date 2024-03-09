// import 'package:get/get.dart';
// import 'package:iconsax/iconsax.dart';
// import 'package:flutter/material.dart';
// import 'package:uhdpedia/utils/constants/sizes.dart';
// import 'package:uhdpedia/utils/constants/colors.dart';
// import 'package:uhdpedia/utils/device/device_utility.dart';
// import 'package:uhdpedia/common/widgets/shimmer_effect.dart';
// import 'package:uhdpedia/common/widgets/see_more_section.dart';
// import 'package:proste_bezier_curve/proste_bezier_curve.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:uhdpedia/featuers/personalization/screens/profile/profile.dart';
// import 'package:uhdpedia/featuers/personalization/controllers/user_controller.dart';
// import 'package:uhdpedia/featuers/personalization/screens/settings/widgets/custom_menu_tile.dart';

// class SettingsScreen extends StatelessWidget {
//   const SettingsScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final screenWidth = KDeviceUtils.getScreenWidht(context);
//     final controller = UserController.instance;
//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: KColors.onBackgroundColor,
//           title: Text(
//             "ڕێکخستن",
//             style: Theme.of(context).textTheme.headlineLarge,
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Column(
//             children: [
//               ClipPath(
//                 clipper: ProsteBezierCurve(
//                   position: ClipPosition.bottom,
//                   list: [
//                     BezierCurveSection(
//                       start: const Offset(0, 110),
//                       top: Offset(screenWidth / 2, 90),
//                       end: Offset(screenWidth / 1, 110),
//                     ),
//                   ],
//                 ),
//                 child: Container(
//                   height: 140,
//                   color: KColors.onBackgroundColor,
//                   child: Column(
//                     children: [
//                       ListTile(
//                         title: Text(
//                           controller.user.value.getFulltName,
//                           style: Theme.of(context).textTheme.headlineSmall,
//                         ),
//                         subtitle: Text(
//                           controller.user.value.email,
//                           style: Theme.of(context).textTheme.bodyMedium,
//                         ),
//                         trailing: IconButton(
//                           onPressed: () => Get.to(() => const ProfileScreen()),
//                           icon: const Icon(
//                             Iconsax.edit,
//                             color: KColors.secondaryColor,
//                           ),
//                         ),
//                         leading: Obx(() {
//                           final userImage = controller.user.value.profilePicture;
//                           final image = userImage.isNotEmpty
//                               ? userImage
//                               : "https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg";

//                           return controller.imageUploading.value
//                               ? const ShimmerEffect(width: 55, height: 55)
//                               : ClipRRect(
//                                   borderRadius: BorderRadius.circular(100),
//                                   child: CachedNetworkImage(
//                                     width: 50,
//                                     height: 50,
//                                     fit: BoxFit.fill,
//                                     imageUrl: image,
//                                     errorWidget: (context, url, error) => const Icon(Icons.error),
//                                     progressIndicatorBuilder: (context, url, downloadProgress) =>
//                                         const ShimmerEffect(width: 55, height: 55),
//                                   ),
//                                 );
//                         }),
//                       )
//                     ],
//                   ),
//                 ),
//               ),
//               SeeMoreSection(
//                 title: "هەژمارەکەم",
//                 titleStyle:
//                     Theme.of(context).textTheme.headlineSmall!.copyWith(color: KColors.primary),
//                 subTitle: "زانیاری تایبەت",
//                 showButton: false,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(KSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     ProfileMenuTile(
//                       onTap: () {
//                         Get.to(() => const ProfileScreen());
//                       },
//                       title: "بینینی پرۆفایل",
//                       subTitle: "زانیاری کەسی",
//                       icon: Iconsax.safe_home,
//                     ),
//                     ProfileMenuTile(
//                       onTap: () {},
//                       title: "دڵخوازەکان",
//                       subTitle: "کۆمیکە دڵخوازەکانت",
//                       icon: Iconsax.search_favorite,
//                     ),
//                     ProfileMenuTile(
//                       onTap: () {},
//                       title: "بینراوەکان",
//                       subTitle: "کۆمیکە بینراوەکانت",
//                       icon: Iconsax.eye,
//                     ),
//                   ],
//                 ),
//               ),
//               SeeMoreSection(
//                 title: "کومیکس",
//                 titleStyle:
//                     Theme.of(context).textTheme.headlineSmall!.copyWith(color: KColors.primary),
//                 subTitle: "ڕیکخستنی بەرنامەکە",
//                 showButton: false,
//               ),
//               Padding(
//                 padding: const EdgeInsets.all(KSizes.defaultSpace),
//                 child: Column(
//                   children: [
//                     ProfileMenuTile(
//                       title: "زمان",
//                       subTitle: "گۆڕینی زمان",
//                       icon: Iconsax.translate,
//                       onTap: () {},
//                     ),
//                     ProfileMenuTile(
//                       title: "کواڵیتی",
//                       subTitle: "کۆمیکەکان بە جوانترین کواڵیتی دابەزێنە",
//                       icon: Iconsax.image,
//                       trailing: Switch(
//                         inactiveTrackColor: KColors.backgroundColor,
//                         value: true,
//                         onChanged: (value) {},
//                       ),
//                     ),
//                     ProfileMenuTile(
//                       onTap: () {},
//                       title: "کۆمیکەکانم",
//                       subTitle: "سڕینەوەی کۆمیکەکانم لە ئامێرەکەدا",
//                       icon: Iconsax.document_text_1,
//                     ),
//                   ],
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
