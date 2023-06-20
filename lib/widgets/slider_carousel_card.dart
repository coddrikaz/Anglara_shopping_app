import 'package:anglara_ecommerce_app/models/slider_model.dart';
import 'package:flutter/material.dart';
import '/models/models.dart';

class SliderCarouselCard extends StatelessWidget {
  final UserModel? sliderData;
  // final Product? product;

  const SliderCarouselCard({
    Key? key,
    this.sliderData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      // onTap: () {
      //   if (this.product == null) {
      //     Navigator.pushNamed(
      //       context,
      //       '/catalog',
      //       arguments: category,
      //     );
      //   }
      // },
      child: Container(
        padding: EdgeInsets.only(
          left: 5,
          right: 5,
          top: 20.0,
          bottom: 10.0,
        ),
        child: Stack(
          children: <Widget>[
            Image.network(
              "${sliderData!.avatar}",
              fit: BoxFit.cover,
              width: 1000.0,
            ),
            this.sliderData == null
                ? Positioned(
              bottom: 0.0,
              left: 0.0,
              right: 0.0,
              child: Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Color.fromARGB(200, 0, 0, 0),
                      Color.fromARGB(0, 0, 0, 0)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.topCenter,
                  ),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: 10.0,
                  horizontal: 20.0,
                ),
                child: Text(
                  sliderData == null ? sliderData!.firstName.toString() : sliderData!.lastName.toString(),
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            )
                : SizedBox(),
          ],
        ),
      ),
    );
  }
}
