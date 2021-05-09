import 'package:fiap_solar_system/main/helpers/contants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:skeleton_text/skeleton_text.dart';

class CategoryList extends StatefulWidget {
  @override
  _CategoryListState createState() => _CategoryListState();
}

class _CategoryListState extends State<CategoryList> {
  int selectedIndex = 0;
  bool loading = true;
  List categories = [
    'All',
    'Terrestrial Planets',
    'Gas Giants',
    'Ice Giants',
    'Dwarf Planets'
  ];
  void initState() {
    super.initState();
    SchedulerBinding.instance.addPostFrameCallback((_) {
      buildLoader();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: appDefaultPadding / 2),
      height: 30,
      child: loading ? buildSkeletonCategoriesList() : buildCategoriesList(),
    );
  }

  ListView buildCategoriesList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = i;
          });
        },
        child: Container(
          alignment: Alignment.center,
          margin: EdgeInsets.only(
            left: appDefaultPadding,
            right: i == categories.length - 1 ? appDefaultPadding : 0,
          ),
          padding: EdgeInsets.symmetric(horizontal: appDefaultPadding),
          decoration: BoxDecoration(
            color: i == selectedIndex
                ? Colors.white.withOpacity(0.4)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Text(
            categories[i],
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }

  ListView buildSkeletonCategoriesList() {
    return ListView.builder(
      scrollDirection: Axis.horizontal,
      itemCount: categories.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          setState(() {
            selectedIndex = i;
          });
        },
        child: Container(
          height: 240,
          width: 100,
          alignment: Alignment.center,
          margin: EdgeInsets.only(left: appDefaultPadding),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(12),
          ),
          child: SkeletonAnimation(
            borderRadius: BorderRadius.circular(10.0),
            shimmerColor: Colors.grey.withOpacity(0.6),
            child: Container(
              height: 30,
              width: MediaQuery.of(context).size.width * 0.35,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.grey[300].withOpacity(0.4),
              ),
            ),
          ),
        ),
      ),
    );
  }

  void buildLoader() async {
    bool delay = await Future.delayed(Duration(seconds: 5), () => false);
    setState(() {
      loading = delay;
    });
  }
}
