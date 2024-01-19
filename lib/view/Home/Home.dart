import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:get/get.dart';
import 'package:servaid/reusable_components/list_of_home_products_item/list_of_home_products_item.dart';
import 'package:servaid/reusable_components/shop_by_health_concerns_items/shop_by_health_concerns_items.dart';
import 'package:servaid/constants/colors_constants/colors_constants.dart';
import 'package:servaid/constants/fonts_size_constant/fonts_size_constant.dart';
import 'package:servaid/controller/home_Controller/home_Controller.dart';

import '../../reusable_components/home_Ad_card_item/home_Ad_card_item.dart';
import '../../reusable_components/home_category_name/home_category_name.dart';
import '../../reusable_components/list_of_immunity_boosters_products/list_of_immunity_boosters_products.dart';
import '../../images/images.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    HomeController homeController = Get.put(HomeController());
    var heightt = MediaQuery.of(context).size.height * 1;
    var widthh = MediaQuery.of(context).size.width * 1;
    return Scaffold(
      backgroundColor: App_Constants_Colors.app_background_color,
      body: Column(
        children: [
          Stack(
            alignment: Alignment.bottomCenter,
            children: [
              ListView(shrinkWrap: true, children: <Widget>[
                ClipPath(
                  clipper: OvalBottomBorderClipper(),
                  child: Container(
                    alignment: Alignment.topLeft,
                    height: heightt * 0.18,
                    width: widthh * 1,
                    color: App_Constants_Colors.app_blue_color,
                    child: Image(image: AssetImage(App_Images.app_logo)),
                  ),
                ),
              ]),
              Positioned(
                  child: Padding(
                padding: EdgeInsets.only(left: 10, right: 10),
                child: Form(
                  key: homeController.formKey,
                  child: Material(
                    elevation: 20.0,
                    borderRadius: BorderRadius.circular(30),
                    shadowColor: App_Constants_Colors.app_white_color,
                    child: TextFormField(
                      controller: homeController.searchEditingController,
                      focusNode: homeController.focusNode1,
                      onFieldSubmitted: (value) {
                        FocusScope.of(context)
                            .requestFocus(homeController.focusNode2);
                      },
                      style: TextStyle(
                          color: App_Constants_Colors.app_black_color),
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: App_Constants_Colors.app_white_color,
                        hintText: 'Search Products Here',
                        hintStyle: TextStyle(
                            color: App_Constants_Colors.app_blue_color),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(30),
                          borderSide: const BorderSide(
                            width: 2,
                            color: Colors.white,
                          ),
                        ),
                        enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: BorderSide(
                                color: App_Constants_Colors.app_white_color)),
                        prefixIcon: Icon(Icons.search,
                            color: App_Constants_Colors.app_blue_color),
                      ),
                    ),
                  ),
                ),
              ))
            ],
          ),
          SizedBox(
            height: heightt * 0.02,
          ),
          Expanded(
              child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: heightt * 0.2,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: adcarditem.length,
                      itemBuilder: (context, index) {
                        return buildCard(adcarditem: adcarditem[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: widthh * 0.03,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: heightt * 0.03,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                height: heightt * 0.2,
                                width: widthh * 0.45,
                                color: App_Constants_Colors.app_pink_color,
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Place your order istantly within seconds.",
                                        style: TextStyle(
                                            color: App_Constants_Colors
                                                .app_white_color,
                                            fontFamily: App_Fonts_Constants
                                                .regular_font_family),
                                      ),
                                      SizedBox(
                                        height: heightt * 0.02,
                                      ),
                                      ListTile(
                                          leading: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: App_Constants_Colors
                                                .app_white_color,
                                          ),
                                          trailing: Image.asset(
                                            App_Images.clock,
                                          ))
                                    ],
                                  ),
                                )),
                          ),
                        ),
                        SizedBox(
                          width: widthh * 0.02,
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(20),
                            child: Container(
                                height: heightt * 0.2,
                                width: widthh * 0.45,
                                color: Color(0xff26ACA1),
                                child: Padding(
                                  padding: const EdgeInsets.all(12.0),
                                  child: Column(
                                    children: [
                                      Text(
                                        "Got a prescription?\nUpload and get your meds now!.",
                                        style: TextStyle(
                                            color: App_Constants_Colors
                                                .app_white_color,
                                            fontFamily: App_Fonts_Constants
                                                .regular_font_family),
                                      ),
                                      SizedBox(
                                        height: heightt * 0.02,
                                      ),
                                      ListTile(
                                          leading: Icon(
                                            Icons.arrow_forward_ios_outlined,
                                            color: App_Constants_Colors
                                                .app_white_color,
                                          ),
                                          trailing: Image.asset(
                                            App_Images.notes,
                                          ))
                                    ],
                                  ),
                                )),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: heightt * 0.03,
                ),
                homeCategoryName(
                  "Baby Care",
                ),
                SizedBox(
                  height: heightt * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: heightt * 0.42,
                    width: double.infinity,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listOfHomeProductsItem.length,
                      itemBuilder: (context, index) {
                        return buildHomeProductsItem(
                            height: heightt * 0.2,
                            width: widthh * 0.5,
                            listOfHomeProductsItem:
                                listOfHomeProductsItem[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: widthh * 0.02,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: heightt * 0.02,
                ),
                homeCategoryName(
                  "Shop by Health Concerns",
                ),
                SizedBox(
                  height: heightt * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: heightt * 0.2,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: adcarditem.length,
                      itemBuilder: (context, index) {
                        return buildShopByHealthCard(
                            shopbyHealthConcernsItems:
                                shopbyHealthConcernsItems[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: widthh * 0.03,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: heightt * 0.03,
                ),
                homeCategoryName(
                  "Immunity Boosters",
                ),
                SizedBox(
                  height: heightt * 0.02,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10, right: 10),
                  child: Container(
                    height: heightt * 0.42,
                    width: double.infinity,
                    child: ListView.separated(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemCount: listofImmunityBoosters.length,
                      itemBuilder: (context, index) {
                        return buildImmunityBoosters(
                            height: heightt * 0.2,
                            width: widthh * 0.5,
                            List_of_ImmunityBoosters:
                                listofImmunityBoosters[index]);
                      },
                      separatorBuilder: (context, index) => SizedBox(
                        width: widthh * 0.02,
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: heightt * 0.02,
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
