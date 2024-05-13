import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/model/app_user_model.dart';
import '../../../../../core/utils/name_capitalize.dart';
import '../../../../../core/widgets/circle_profile_picture_widget.dart';
import '../../../../../core/widgets/home_padding.dart';
import 'widgets/profile_location_widget.dart';

class ProfileCard extends StatelessWidget {
  final UserModel userModel;
  const ProfileCard({
    required this.userModel,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 25.h, bottom: 35.h),
      child: HomePadding(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            //Section 1 begin
            SizedBox(width: 15.h),
            const CircleProfilePicWidget(
              height: 100,
              width: 100,
            ),
            SizedBox(width: 25.h),
            //Section 1 end
            SizedBox(
              width: MediaQuery.of(context).size.width / 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      _ProfileNameWidget(name: capitalize(userModel.firstName)),
                      const SizedBox(width: 10),
                      _ProfileNameWidget(name: capitalize(userModel.lastName)),
                    ],
                  ),
                  SizedBox(height: 5.h),
                  Text("@ ${userModel.userName.toLowerCase()}"),
                  // const RatingWidget(
                  //   firstStar: true,
                  //   secondStar: true,
                  //   thirdStar: true,
                  //   fourthStar: true,
                  //   fifthStar: true,
                  // ),
                  SizedBox(height: 10.h),
                  //location start
                  ProfileLocationWidget(location: userModel.location),
                  //location end
                ],
              ),
            ),

            SizedBox(width: 15.h),
          ],
        ),
      ),
    );
  }
}

class _ProfileNameWidget extends StatelessWidget {
  final String name;
  const _ProfileNameWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text(
      name,
      style: Theme.of(context).textTheme.displaySmall,
      overflow: TextOverflow.fade,
      maxLines: 2,
    );
  }
}
