import '../models/dev_data.dart';
import '../utils/app_str.dart';
import '../widgets/contact_card.dart';
import 'package:flutter/material.dart';

class SecondView extends StatelessWidget {
  const SecondView({super.key, required this.nextPage});

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);

    return SafeArea(
      child: ListView(
        children: [
          SizedBox(height: size.height * 0.05),
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenBio,
                  style: theme.textTheme.bodyLarge,
                ),
                Text(
                  MyPersonalData.devBio,
                  style: theme.textTheme.bodyMedium,
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenHobbies,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(height: size.height * .01),
                SizedBox(
                  width: size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: List.generate(
                      MyPersonalData.devData.hobbies.length,
                      (index) => Text(
                        "$index. ${MyPersonalData.devData.hobbies[index]}",
                        style: theme.textTheme.bodyMedium,
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),

          /// Contact
          Container(
            margin: EdgeInsets.all(size.height * .01),
            padding: EdgeInsets.symmetric(
              horizontal: size.width * .03,
              vertical: size.height * .01,
            ),
            width: size.width,
            decoration: BoxDecoration(
              color: theme.cardColor,
              borderRadius: BorderRadius.circular(30),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.secondScreenContact,
                  style: theme.textTheme.bodyLarge,
                ),
                SizedBox(
                  height: size.height * .01
                ),
                ContactCard(
                    title: MyPersonalData.devData.number, icon: Icons.phone),
                ContactCard(
                    title: MyPersonalData.devData.mail, icon: Icons.mail),
              ],
            ),
          ),

          /// Empty Space
          Expanded(child: Container()),

          /// Next Page
          IconButton(
            color: theme.canvasColor,
            onPressed: nextPage,
            icon: const Icon(Icons.arrow_upward_outlined,size:35),
          ),

          /// Empty Space
          SizedBox(height: size.height * 0.05),
        ],
      ),
    );
  }
}
