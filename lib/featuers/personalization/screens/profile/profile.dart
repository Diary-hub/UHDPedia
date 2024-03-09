// import 'package:get/get.dart';
// import 'package:flutter/material.dart';
// import 'package:uhdpedia/utils/constants/sizes.dart';
// import 'package:uhdpedia/utils/constants/colors.dart';
// import 'package:uhdpedia/utils/formatters/formatter.dart';
// import 'package:uhdpedia/common/widgets/shimmer_effect.dart';
// import 'package:uhdpedia/common/widgets/see_more_section.dart';
// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:uhdpedia/featuers/personalization/controllers/user_controller.dart';
// import 'package:uhdpedia/featuers/personalization/screens/profile/widgets/profile_tile_info.dart';

// class ProfileScreen extends StatelessWidget {
//   const ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     final controller = UserController.instance;

//     return Directionality(
//       textDirection: TextDirection.rtl,
//       child: Scaffold(
//         appBar: AppBar(
//           leading: IconButton(
//             onPressed: () {
//               Get.back();
//             },
//             icon: const Icon(
//               Icons.arrow_back_ios,
//               color: KColors.white,
//             ),
//           ),
//           centerTitle: true,
//           title: Text(
//             "هەژمار",
//             style: Theme.of(context).textTheme.headlineLarge,
//           ),
//         ),
//         body: SingleChildScrollView(
//           child: Padding(
//             padding: const EdgeInsets.all(KSizes.defaultSpace),
//             child: Column(
//               children: [
//                 SizedBox(
//                   width: double.infinity,
//                   child: Column(
//                     children: [
//                       Obx(() {
//                         final userImage = controller.user.value.profilePicture;
//                         final image = userImage.isNotEmpty
//                             ? userImage
//                             : "https://wallpapers.com/images/hd/cool-profile-picture-87h46gcobjl5e4xu.jpg";

//                         return controller.imageUploading.value
//                             ? const ShimmerEffect(width: 55, height: 55)
//                             : ClipRRect(
//                                 borderRadius: BorderRadius.circular(100),
//                                 child: CachedNetworkImage(
//                                   fit: BoxFit.fill,
//                                   imageUrl: image,
//                                   width: 80,
//                                   height: 80,
//                                   errorWidget: (context, url, error) => const Icon(Icons.error),
//                                   progressIndicatorBuilder: (context, url, downloadProgress) =>
//                                       const ShimmerEffect(width: 55, height: 55),
//                                 ),
//                               );
//                       }),
//                       TextButton(
//                         onPressed: () => controller.uploadUserImage(),
//                         child: Text(
//                           "گۆڕینی  ڕەسمی هەژمار",
//                           style: Theme.of(context)
//                               .textTheme
//                               .bodyLarge!
//                               .copyWith(color: KColors.accent),
//                         ),
//                       )
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 const Divider(),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 SeeMoreSection(
//                   title: "زانیاری کەسی",
//                   titleStyle: Theme.of(context)
//                       .textTheme
//                       .headlineSmall!
//                       .copyWith(color: KColors.secondaryColor),
//                   subTitle: "",
//                   showButton: false,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 ProfileTileInfo(
//                   title: "ناو",
//                   value: controller.user.value.getFulltName,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 ProfileTileInfo(
//                   title: "مۆبایل",
//                   value: KFormatter.formatPhoneNumber(controller.user.value.phoneNumber),
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 const Divider(),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 SeeMoreSection(
//                   title: "زانیاری هەژمار",
//                   titleStyle: Theme.of(context)
//                       .textTheme
//                       .headlineSmall!
//                       .copyWith(color: KColors.secondaryColor),
//                   subTitle: "",
//                   showButton: false,
//                 ),
//                 ProfileTileInfo(
//                   title: "ئایدی",
//                   value: controller.user.value.id,
//                   icon: IconButton(onPressed: () {}, icon: const Icon(Icons.copy_all)),
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 ProfileTileInfo(
//                   title: "ئیمەیڵ",
//                   value: controller.user.value.email,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 ProfileTileInfo(
//                   title: "رەگەز",
//                   value: controller.user.value.gender,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 ProfileTileInfo(
//                   title: "بەرواری لەدایکبوون",
//                   value: controller.user.value.dateOfBirth,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 ProfileTileInfo(
//                   title: "بەرواری هەژمار",
//                   value: controller.user.value.dateOfAccount,
//                 ),
//                 const SizedBox(height: KSizes.spaceBetweenItems / 2),
//                 const Divider(),
//                 const SizedBox(height: KSizes.spaceBetweenItems),
//                 TextButton(
//                     onPressed: () => controller.warnUserAccountDelete(),
//                     child: const Text(
//                       "سڕینەوەی هەژمار",
//                       style: TextStyle(fontSize: 16, color: KColors.error),
//                     ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
