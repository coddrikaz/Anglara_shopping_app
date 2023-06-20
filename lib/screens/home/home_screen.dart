import 'package:anglara_ecommerce_app/blocs/slider/app_blocs.dart';
import 'package:anglara_ecommerce_app/widgets/category_carousel.dart';
import 'package:anglara_ecommerce_app/widgets/custom_drawer.dart';
import 'package:anglara_ecommerce_app/widgets/slider_carousel_card.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../blocs/slider/app_states.dart';
import '/blocs/blocs.dart';
import '/widgets/widgets.dart';

class HomeScreen extends StatelessWidget {
  static const String routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async => false,
      child: Scaffold(
        appBar: CustomAppBar(
          title: 'Anglara Shopping',
          automaticallyImplyLeading: false,
        ),
        drawer: custom_drawer(),

        bottomNavigationBar: CustomNavBar(screen: routeName),

        body: Column(
          children: [

            // BlocBuilder<UserBloc, UserState>(
            //   builder: (context, state) {
            //     if (state is UserLoadingState) {
            //       return Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }
            //     if (state is UserLoadedState) {
            //       return CarouselSlider(
            //         options: CarouselOptions(
            //           aspectRatio: 1.5,
            //           viewportFraction: 0.9,
            //           enlargeCenterPage: true,
            //           enlargeStrategy: CenterPageEnlargeStrategy.height,
            //         ),
            //         items: state.users
            //             .map((users) => SliderCarouselCard(sliderData: users))
            //             .toList(),
            //       );
            //     } else {
            //       return Text('Something went wrong.');
            //     }
            //   },
            // ),

            BlocBuilder<CategoryBloc, CategoryState>(
              builder: (context, state) {
                if (state is CategoryLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is CategoryLoaded) {
                  return CarouselSlider(
                    options: CarouselOptions(
                      aspectRatio: 1.5,
                      viewportFraction: 0.9,
                      enlargeCenterPage: true,
                      enlargeStrategy: CenterPageEnlargeStrategy.height,
                    ),
                    items: state.categories
                        .map((category) => HeroCarouselCard(category: category))
                        .toList(),
                  );
                } else {
                  return Text('Something went wrong.');
                }
              },
            ),

            // SectionTitle(title: 'Categories'),
            // BlocBuilder<CategoryBloc, CategoryState>(
            //   builder: (context, state) {
            //     if (state is CategoryLoading) {
            //       return Center(
            //         child: CircularProgressIndicator(),
            //       );
            //     }
            //     if (state is CategoryLoaded) {
            //
            //       return CategoryCarousel(
            //         category: state.categories
            //             .where((product) => product.)
            //             .toList(),
            //       );
            //     } else {
            //       return Text('Something went wrong.');
            //     }
            //   },
            // ),

            SectionTitle(title: 'RECOMMENDED'),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                    products: state.products
                        .where((product) => product.isRecommended)
                        .toList(),
                  );
                } else {
                  return Text('Something went wrong.');
                }
              },
            ),
            SectionTitle(title: 'MOST POPULAR'),
            BlocBuilder<ProductBloc, ProductState>(
              builder: (context, state) {
                if (state is ProductLoading) {
                  return Center(
                    child: CircularProgressIndicator(),
                  );
                }
                if (state is ProductLoaded) {
                  return ProductCarousel(
                    products: state.products
                        .where((product) => product.isPopular)
                        .toList(),
                  );
                } else {
                  return Text('Something went wrong.');
                }
              },
            ),
          ],
        ),
      ),
    );
  }
}


