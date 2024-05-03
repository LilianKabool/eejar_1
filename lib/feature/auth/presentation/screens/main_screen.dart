import 'package:country_list_pick/country_list_pick.dart';
import 'package:eejar/feature/owner/presentation/widgets/profile_widget.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constant/colors.dart';

class MainScreen extends StatefulWidget {
  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  var searchController = TextEditingController();

  Color buttonColor = AppColors.mediumGolden1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            //alignment: AlignmentDirectional.topStart,
            width: 40.w,
            height: 40.h,
            decoration: BoxDecoration(
              color: AppColors.mediumGolden1,
              shape: BoxShape.circle,
              border: Border.all(
                color: AppColors.mediumGolden1,
              ),
            ),
            child: IconButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(
                    builder: (context) => OwnerProfileScreen()),);
              },
              icon: Icon(Icons.person, color: AppColors.pureWhite),
            ),
          ),
        ),
        actions: [
          Image(
            alignment: AlignmentDirectional.topStart,
            width: 150.0.w,
            image: AssetImage("assets/images/logo2.jpg"),
          ),
          Drawer(
            width: 44.w,
            child: Icon(Icons.menu, color: AppColors.mediumGolden1, size: 26),
            backgroundColor: AppColors.pureWhite,
          ),
        ],
      ),
      endDrawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Row(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.gray,
                      ),
                    ),
                    width: 160.w,
                    height: 50.h,
                    child: CountryListPick(
                      theme: CountryTheme(
                        alphabetTextColor: AppColors.mediumGolden1,
                        alphabetSelectedBackgroundColor:
                        AppColors.mediumGolden1,
                        labelColor: AppColors.mediumGolden1,
                        isShowCode: false,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0.w,
                  ),
                  Container(
                    //alignment: AlignmentDirectional.topStart,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.gray,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.add_road_rounded,
                        color: AppColors.mediumGolden1,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    //alignment: AlignmentDirectional.topStart,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.gray,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(
                        Icons.language,
                        color: AppColors.mediumGolden1,
                        size: 35,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Container(
                    //alignment: AlignmentDirectional.topStart,
                    width: 50.w,
                    height: 50.h,
                    decoration: BoxDecoration(
                      shape: BoxShape.rectangle,
                      border: Border.all(
                        color: AppColors.gray,
                      ),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Icon(Icons.add_alert_outlined,
                          size: 35, color: AppColors.mediumGolden1),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10.0.h,
            ),
            Padding(
              padding: const EdgeInsets.all(18.0),
              child: TextFormField(
                controller: searchController,
                keyboardType: TextInputType.text,
                validator: (value) {
                  if (value!.isEmpty) {
                    return "enter to search ";
                  } else {
                    searchController.text = value;
                  }
                },
                decoration: InputDecoration(
                  prefixIcon:
                  Icon(Icons.search, color: AppColors.mediumGolden1),
                  hintText: 'search',
                  hintStyle: TextStyle(
                    fontFamily: 'BAHNSCHRIF',
                    fontSize: 14.sp,
                    color: AppColors.mediumGray,
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(
                      4.0,
                    ),
                    borderSide: BorderSide(
                      width: 354.w,
                    ),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0.r),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(4.0.r),
                    borderSide: BorderSide(
                      color: AppColors.gray,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Container(
                alignment: AlignmentDirectional.topStart,
                child: Text(
                  'categories',
                  style: TextStyle(
                    color: AppColors.brown,
                    fontSize: 16.sp,
                    fontFamily: 'BAHNSCHRIF',
                  ),
                ),
              ),
            ),
         ListView(children: [
           Row(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Container(
                 width: 164.w,
                 decoration: BoxDecoration(
                   border: Border.all(
                     color: AppColors.mediumGolden1,
                   ),
                   borderRadius: BorderRadius.circular(4.0.r),
                 ),
                 child: TextButton(
                   onPressed: () {
                     setState(() {
                       buttonColor = AppColors.pureWhite;
                     });
                   },
                   child: Text(
                     'land vehicle',
                     style: TextStyle(
                       color: AppColors.pureBlack,
                       fontSize: 17.sp,
                       fontFamily: 'BAHNSCHRIF',
                     ),
                   ),
                 ),
               ),
               SizedBox(width: 5.0.w),

             ],
           )
         ]),


            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Row(
                children: [
                  Text(
                    'Recent on Ejar',
                    style: TextStyle(
                      color: AppColors.pureBlack,
                      fontSize: 18.sp,
                    ),
                  ),
                  Spacer(),
                  TextButton(
                    onPressed: () {},
                    child: Text(
                      'Show All',
                      style: TextStyle(
                        color: AppColors.gray,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                itemBuilder: (context, index) {
                  return Container(
                    decoration: BoxDecoration(
                      // color: AppColors.gray,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Image(
                      image: NetworkImage(
                          "data:image/jpeg;base64,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"),
                    ),
                  );
                }),
          ],
        ),
      ),
    );
  }
}
