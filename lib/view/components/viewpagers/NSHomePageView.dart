import 'package:ecommerce_flutter_new/view/components/banner/top_banner.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';

import '../../../utils/routes/routes_name.dart';

class NsHomeViewPager extends StatefulWidget {
  const NsHomeViewPager({super.key, required this.pagerItems});

  final List<Children> pagerItems;

  @override
  State<NsHomeViewPager> createState() => _NsHomeViewPagerState();
}

class _NsHomeViewPagerState extends State<NsHomeViewPager> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      width: MediaQuery.of(context).size.width,
      child: PageView.builder(
          itemCount: widget.pagerItems.length,
          itemBuilder: (context, index) {
            return InkWell(
              onTap: () {
                Navigator.pushNamed(context, RoutesName.seeAllScreen,
                    arguments: widget.pagerItems[index].action as Object);
              },
              child: ECTopBanner(
                childData: widget.pagerItems[index],
              ),
            );
          }),
    );
  }
}
