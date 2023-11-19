import '../models/dev_data.dart';
import '../utils/app_colors.dart';
import '../utils/app_str.dart';
import '../widgets/skills_box.dart';
import '../widgets/skills_progress.dart';
import 'package:flutter/material.dart';

class FirstView extends StatelessWidget {
  const FirstView({
    super.key,
    required this.nextPage,
  });

  final VoidCallback nextPage;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    ThemeData theme = Theme.of(context);
    return ListView(
      scrollDirection: Axis.vertical,
      physics: AlwaysScrollableScrollPhysics(),
      children: [
        SizedBox(height: size.height * 0.1),

        /// Developer Avatar
        Container(
          // padding: EdgeInsets.all(size.height * .01),
          decoration: BoxDecoration(
            color: theme.cardColor,
            shape: BoxShape.circle,
          ),
          child: CircleAvatar(
            radius: size.height * .12,
            // backgroundColor: AppColors.appPrimary,
            backgroundImage: const AssetImage("assets/images/user.jpg"),
          ),
        ),
        SizedBox(height: size.height * 0.01),
        Center(
          child: Text(
            // textAlign: TextAlign.center,
            MyPersonalData.devData.name,
            style: theme.textTheme.displayLarge,
          ),
        ),
        SizedBox(height: size.height * 0.02),
        Wrap(
          crossAxisAlignment: WrapCrossAlignment.center,
          alignment: WrapAlignment.center,
          spacing: size.width * .05,
          runSpacing: size.width * .03,
          children: List.generate(
            MyPersonalData.devData.skillsAndProgress.length,
            (index) => SkillBox(
              text: MyPersonalData.devData.skillsAndProgress[index].name,
            ),
          ),
        ),
        SizedBox(height: size.height * 0.03),

        /// Skills Progress
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: List.generate(
            MyPersonalData.devData.skillsAndProgress.length,
            (index) => SkillsProgress(
              progress:
                  MyPersonalData.devData.skillsAndProgress[index].progress,
              title: MyPersonalData.devData.skillsAndProgress[index].name,  ),
          ),
        ),
        // Empty Space
        Expanded(child: Container()),

        /// Next Page
        IconButton(
          color: theme.canvasColor,
          onPressed: nextPage,
          icon: const Icon(Icons.arrow_downward_outlined,size:30),
        ),

        SizedBox(height: size.height * 0.05),
      ],
    );
  }
}
