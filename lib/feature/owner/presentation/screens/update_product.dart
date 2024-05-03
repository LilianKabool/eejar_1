import 'package:eejar/feature/owner/entity/my_products_entity.dart';
import 'package:eejar/feature/owner/presentation/manager/update_product_cubit.dart';
import 'package:eejar/feature/owner/presentation/screens/test.dart';
import 'package:eejar/feature/user/presentation/manager/get_full_countries_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intl/intl.dart';

import '../../../../core/constant/colors.dart';
import '../widgets/divider_item.dart';
import '../widgets/space_item.dart';

class OwnerEditProductScreen extends StatefulWidget {
  final ProductData productData;

  const OwnerEditProductScreen({
    super.key,
    required this.productData,
  });

  @override
  State<OwnerEditProductScreen> createState() => _OwnerEditProductScreenState();
}

String caption = 'fghjkmdrfgvhbjfcgvhb rdftghfgvbhjn ftghbcfgvbh';
String price = '500';
String start_date = '25-07-2009';
String feature_name = 'Gasoline';
String editedName = '';
String editedCaption = '';
String editPrice = '';
bool showDate = false;
DateTime selectedDate = DateTime.now();
var editing_date = 'Enter Date';

var selectCountry = ["Syria", "Lebanon", "Egypt", ""];
var selectedCountry = "";

var selectCity = ["Damascus", "Homs", "Hama", ""];
var selectedCity = "";

class _OwnerEditProductScreenState extends State<OwnerEditProductScreen> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Edit Product',
          style: TextStyle(
            color: AppColors.semiDarkGolden,
            fontFamily: 'Bahnschrift',
            fontSize: 20.sp,
          ),
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => OwnerPostDetailsScreen()));
          },
          icon: Icon(
            Icons.chevron_left,
            color: AppColors.semiDarkGolden,
          ),
        ),
        actions: [
          BlocConsumer<UpdateProductCubit, UpdateProductState>(
            listener: (context, state) {
              // TODO: implement listener
            },
            builder: (context, state) {
              return IconButton(
                onPressed: () {
                  ///todo: request here
                },
                icon: Icon(
                  Icons.check,
                  color: AppColors.semiDarkGolden,
                ),
              );
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(1.0),
          child: DividerItem(),
        ),
      ),
      body: ListView(
        children: [
          SpaceItem(),
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Image.network(
                widget.productData.image,
                width: double.infinity,
                height: 200.h,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    height: 30.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(5.r),
                        bottomRight: Radius.circular(5.r),
                      ),
                      color: AppColors.mediumGolden1,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        //todo: here requset image picker
                      },
                      child: Icon(
                        Icons.edit,
                        color: AppColors.pureWhite,
                      ),
                      elevation: 0.0,
                      backgroundColor: AppColors.mediumGolden1,
                    ),
                  ),
                  Container(
                    height: 30.h,
                    width: 40.w,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(5.r),
                        bottomLeft: Radius.circular(5.r),
                      ),
                      color: AppColors.mediumGolden1,
                    ),
                    child: FloatingActionButton(
                      onPressed: () {
                        showDialog(
                          context: context,
                          builder: (context) => AlertDialog(
                            title: Text(
                              "do you want to delete this customer ?",
                              style: TextStyle(
                                fontFamily: 'bahnschrift',
                                color: AppColors.semiBlack,
                                fontSize: 16.sp,
                              ),
                            ),
                            content: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceAround,
                              children: [
                                TextButton(
                                  onPressed: () {
                                    //todo:reguset here
                                  },
                                  child: Text(
                                    'Yes',
                                    style: TextStyle(
                                      color: AppColors.mediumGolden1,
                                      fontFamily: 'bahnschrift',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {
                                    //todo:request here
                                  },
                                  child: Text(
                                    'No',
                                    style: TextStyle(
                                      color: AppColors.mediumGolden1,
                                      fontFamily: 'bahnschrift',
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      },
                      child: Icon(
                        Icons.delete,
                        color: AppColors.pureWhite,
                      ),
                      elevation: 0.0,
                      backgroundColor: AppColors.mediumGolden1,
                    ),
                  ),
                ],
              ),
            ],
          ),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.mediumGray,
                    fontSize: 16.sp,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.productData.name,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        String owner_name = widget.productData.name;
                        TextEditingController owner_name_controller =
                            TextEditingController(text: owner_name);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'Edit Name',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.mediumGolden1,
                                ),
                              ),
                              content: TextField(
                                controller: owner_name_controller,
                                onChanged: (value) {
                                  editedName = value;
                                },
                              ),
                              actions: [
                                FloatingActionButton(
                                  backgroundColor: AppColors.mediumGolden1,
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
                                      fontFamily: 'bahnschrift',
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      owner_name = editedName;
                                    });
                                    owner_name_controller.text = owner_name;
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Caption',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.mediumGray,
                    fontSize: 16.sp,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100.h,
                        padding: EdgeInsets.symmetric(horizontal: 10.0),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.productData.description,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        TextEditingController car_caption_controller =
                            TextEditingController(text: caption);
                        showDialog(
                          context: context,
                          builder: (BuildContext context) {
                            return AlertDialog(
                              title: Text(
                                'Edit Caption',
                                style: TextStyle(
                                  fontFamily: 'bahnschrift',
                                  color: AppColors.mediumGolden1,
                                ),
                              ),
                              content: TextField(
                                controller: car_caption_controller,
                                onChanged: (value) {
                                  editedCaption = value;
                                },
                              ),
                              actions: [
                                FloatingActionButton(
                                  backgroundColor: AppColors.mediumGolden1,
                                  child: Text(
                                    'Save',
                                    style: TextStyle(
                                      color: AppColors.pureWhite,
                                      fontFamily: 'bahnschrift',
                                    ),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      caption = editedCaption;
                                    });
                                    car_caption_controller.text = caption;
                                    Navigator.of(context).pop();
                                  },
                                ),
                              ],
                            );
                          },
                        );
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Start Date',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.mediumGray,
                    fontSize: 16.sp,
                  ),
                ),
                Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 40.h,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.r),
                          border: Border.all(
                            color: AppColors.mediumGolden1,
                          ),
                        ),
                        child: Center(
                          child: Text(
                            widget.productData.startDate,
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              fontSize: 16.sp,
                            ),
                          ),
                        ),
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime(2018),
                          lastDate: DateTime(2100),
                        ).then((value) {
                          if (value == null) {
                            return;
                          }
                          setState(() {
                            selectedDate = value;
                            editing_date =
                                DateFormat('yyyy-MM-dd').format(selectedDate);
                            showDate = true;
                            // print('Selected date: ${DateFormat.yMMMd().format(selectedDate)}');
                          });
                        });
                      },
                      icon: Icon(
                        Icons.edit,
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          BlocBuilder<GetFullCountriesCubit, GetFullCountriesState>(
            builder: (context, state) {
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Location',
                      style: TextStyle(
                        color: AppColors.pureBlack,
                        fontSize: 16.0.sp,
                        fontFamily: 'Bahnschrift',
                      ),
                    ),
                    SpaceItem(),
                    Container(
                      height: 55.h,
                      child: DropdownButtonFormField<String>(
                        isDense: true,
                        value: selectedCountry,
                        onChanged: (newValue) {},
                        items: selectCountry.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                color: AppColors.mediumGray,
                                fontFamily: 'Bahnschrift',
                              ),
                            ),
                          );
                        }).toList(),
                        borderRadius: BorderRadius.circular(31.0),
                        decoration: const InputDecoration(
                          labelText: 'County',
                          labelStyle: TextStyle(
                            color: AppColors.mediumGray,
                            fontFamily: 'Bahnschrift',
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.gray,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.gray,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                    SpaceItem(),
                    Container(
                      height: 55.h,
                      child: DropdownButtonFormField<String>(
                        isDense: true,
                        value: selectedCity,
                        onChanged: (newValue) {},
                        items: selectCity.map((String item) {
                          return DropdownMenuItem<String>(
                            value: item,
                            child: Text(
                              item,
                              style: TextStyle(
                                color: AppColors.mediumGray,
                                fontFamily: 'Bahnschrift',
                              ),
                            ),
                          );
                        }).toList(),
                        borderRadius: BorderRadius.circular(31.0),
                        decoration: const InputDecoration(
                          labelText: 'City',
                          labelStyle: TextStyle(
                            color: AppColors.mediumGray,
                            fontFamily: 'Bahnschrift',
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.gray,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(
                              color: AppColors.gray,
                            ),
                            borderRadius: BorderRadius.all(
                              Radius.circular(5.0),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              );
            },
          ),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              children: [
                Text(
                  'Price',
                  style: TextStyle(
                    fontFamily: 'bahnschrift',
                    color: AppColors.mediumGray,
                    fontSize: 16.sp,
                  ),
                ),
                SizedBox(
                  width: 10.w,
                ),
                Expanded(
                  child: Container(
                    height: 40.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      border: Border.all(
                        color: AppColors.mediumGolden1,
                      ),
                    ),
                    child: Center(
                      child: Text(
                        widget.productData.price,
                        style: TextStyle(
                          fontFamily: 'bahnschrift',
                          fontSize: 16.sp,
                        ),
                      ),
                    ),
                  ),
                ),
                IconButton(
                  onPressed: () {
                    TextEditingController price_controller =
                        TextEditingController(text: price);
                    showDialog(
                      context: context,
                      builder: (BuildContext context) {
                        return AlertDialog(
                          title: Text(
                            'Edit Price',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.mediumGolden1,
                            ),
                          ),
                          content: TextField(
                            controller: price_controller,
                            onChanged: (value) {
                              editedName = value;
                            },
                          ),
                          actions: [
                            FloatingActionButton(
                              backgroundColor: AppColors.mediumGolden1,
                              child: Text(
                                'Save',
                                style: TextStyle(
                                  color: AppColors.pureWhite,
                                  fontFamily: 'bahnschrift',
                                ),
                              ),
                              onPressed: () {
                                setState(() {
                                  price = editPrice;
                                });
                                price_controller.text = price;
                                Navigator.of(context).pop();
                              },
                            ),
                          ],
                        );
                      },
                    );
                  },
                  icon: Icon(
                    Icons.edit,
                    color: AppColors.mediumGolden1,
                  ),
                ),
              ],
            ),
          ),
          SpaceItem(),
          DividerItem(),
          SpaceItem(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              'Features',
              style: TextStyle(
                fontFamily: 'bahnschrift',
                color: AppColors.mediumGray,
                fontSize: 16.sp,
              ),
            ),
          ),
          SizedBox(
            height: 5.h,
          ),
          Container(
            height: 250.h,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.pureBlack,
                        ),
                        borderRadius: BorderRadius.circular(20.r),
                        // color: AppColors.mediumGolden1,
                      ),
                      child: Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.only(
                              topRight: Radius.circular(20.r),
                              topLeft: Radius.circular(20.r),
                            ),
                            child: Image(
                              image: AssetImage('assets/images/girl.png'),
                            ),
                          ),
                          SizedBox(
                            height: 5.h,
                          ),
                          Text(
                            '${feature_name}',
                            style: TextStyle(
                              fontFamily: 'bahnschrift',
                              color: AppColors.pureBlack,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
              itemCount: 15,
            ),
          ),
        ],
      ),
    );
  }
}
