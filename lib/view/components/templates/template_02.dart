import 'package:ecommerce_flutter_new/model/home/ExploreHome.dart';
import 'package:ecommerce_flutter_new/utils/routes/routes_name.dart';
import 'package:flutter/material.dart';

class Template_02 extends StatefulWidget {
  final Children childrenData;

  const Template_02({super.key, required this.childrenData});

  @override
  State<Template_02> createState() => _Template_02State();
}

class _Template_02State extends State<Template_02> {
  @override
  Widget build(BuildContext context) {
    const String url = "assets/images/default.png";
    return Container(
      width: 100,
      height: 125,
      margin: const EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
      decoration: BoxDecoration(
        color: const Color(0xFFF2FCF4),
        borderRadius: BorderRadius.circular(10), // Set the border radius here
      ),
      child: InkWell(
        onTap: (){
          Navigator.pushNamed(context, RoutesName.seeAllScreen, arguments: widget.childrenData.action);
        },
        child: Column(
          children: [
            Container(
              height: 80,
              alignment: Alignment.center,
              margin: const EdgeInsets.only(top: 5),
              child:Padding(
                padding: const EdgeInsets.all(10),
                child:  FadeInImage(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height,
                  image: NetworkImage(widget.childrenData.value!.banner4x!),
                  placeholder: const AssetImage(url),
                  imageErrorBuilder:
                      (context, error, stackTrace) {
                    return Image.asset(
                        url,
                        fit: BoxFit.scaleDown);
                  },
                ),
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: Text(widget.childrenData.title!, textAlign: TextAlign.center,
                  maxLines: 1,
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.w500
                  ),),
              ),
            ),
          ],
        ),
      )
    );
  }
}
