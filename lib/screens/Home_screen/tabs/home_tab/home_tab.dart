import 'package:flutter/material.dart';
import 'package:movies_app/core/theme/my_theme_data.dart';
import 'package:movies_app/models/film_model.dart';
import 'package:movies_app/screens/Home_screen/tabs/home_tab/horizontalListWidget.dart';

class HomeTab extends StatelessWidget {
  const HomeTab({super.key});
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(12.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Flexible(
                      child: Image.asset(
                        "assets/images/header.png",
                        height: height * 0.07,
                        width: width * 0.9,
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),

                // عرض 4 أفلام فقط من filmsList
                SizedBox(
                  height: 350,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Hhorizontallistwidget(
                        model: filmsList[index],
                        containerHeight: 350,
                        containerWidth: 230,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(width: 20),
                    itemCount: 4, // عرض أول 4 أفلام فقط
                  ),
                ),

                Center(
                  child: Image.asset(
                    "assets/images/watch_now.png",
                    height: height * 0.15,
                    width: width * 0.9,
                    fit: BoxFit.contain,
                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Action"),
                    InkWell(
                      onTap: () {},
                      child: Row(
                        children: [
                          Text(
                            "See More",
                            style: TextStyle(color: MyThemeData.commonColor),
                          ),
                          const SizedBox(width: 2),
                          Icon(
                            Icons.arrow_forward_outlined,
                            color: MyThemeData.commonColor,
                            size: 20,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(height: MediaQuery.of(context).size.height * 0.01),

                SizedBox(
                  height: 180,
                  child: ListView.separated(
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return Hhorizontallistwidget(
                        model: filmsList[index],
                        containerHeight: 180,
                        containerWidth: 100,
                      );
                    },
                    separatorBuilder: (context, index) => const SizedBox(width: 20),
                    itemCount: filmsList.length,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
