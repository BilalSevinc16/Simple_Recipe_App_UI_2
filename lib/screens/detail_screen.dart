import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:simple_recipe_app_ui_2/exp.dart';
import 'package:simple_recipe_app_ui_2/star.dart';

class DetailScreen extends StatelessWidget {
  final String image;

  const DetailScreen(this.image, {super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: <Widget>[
            Hero(
              tag: image,
              child: SizedBox(
                height: size.height * 0.55,
                child: Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            DraggableScrollableSheet(
              maxChildSize: 1,
              initialChildSize: 0.6,
              minChildSize: 0.6,
              builder: (context, controller) {
                return SingleChildScrollView(
                  controller: controller,
                  child: Container(
                    padding: const EdgeInsets.all(24),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Crispy Fried Chicken",
                              style: GoogleFonts.roboto(
                                fontSize: 22,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Spacer(),
                            IconButton(
                              icon: const Icon(Icons.favorite),
                              color: Colors.redAccent,
                              iconSize: 30,
                              onPressed: () {},
                            )
                          ],
                        ),
                        Text(
                          "By Bilal",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Row(
                          children: <Widget>[
                            const Star(color: Colors.orange),
                            const Star(color: Colors.orange),
                            const Star(color: Colors.orange),
                            const Star(color: Colors.orange),
                            Star(
                              color: Colors.grey.shade400,
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Row(
                          children: const <Widget>[
                            Exp(
                              text1: "Calories",
                              text2: "174KCal",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Exp(
                              text1: "Ingredients",
                              text2: "06",
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Exp(
                              text1: "Time",
                              text2: "3 Hours",
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "About Recipe",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                        const SizedBox(
                          height: 24,
                        ),
                        Text(
                          "Cooking Method",
                          style: GoogleFonts.roboto(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nam gravida mauris ut semper posuere. Fusce volutpat neque non elementum rutrum. Phasellus et lacus et lacus accumsan commodo ac quis felis. Proin quam lorem, pellentesque in pretium ac, convallis et massa. Donec in nisi magna. In rutrum, nibh id interdum auctor, nisl elit ultricies arcu, ut ullamcorper ipsum mauris quis eros. Aenean ex tortor, pretium eu vulputate a, consectetur vel diam. Cras nulla nisl, euismod eu purus ac, sagittis viverra elit. Duis pulvinar sem quis fermentum iaculis. Quisque pharetra turpis velit, ut hendrerit tortor finibus id. Sed eu pretium libero.Vestibulum semper justo eu purus suscipit scelerisque. Proin eget rhoncus ex. Nam eget egestas nisi. Morbi molestie imperdiet sapien, ut ornare est laoreet in. Nam fermentum venenatis lorem, et scelerisque ante fermentum eget. Vestibulum eget urna ullamcorper, consequat odio et, efficitur arcu. Ut molestie feugiat tristique. Ut lectus erat, malesuada eget elit et, laoreet commodo augue. Nullam at velit vel ipsum tristique rhoncus. Fusce euismod facilisis lorem nec consequat. Donec in turpis tellus. Nunc at massa et sapien hendrerit volutpat. Curabitur condimentum, nibh hendrerit fermentum suscipit, justo lacus pellentesque felis, vitae rhoncus mi est sit amet massa. Donec id hendrerit felis, at blandit ex. Lorem ipsum dolor sit amet, consectetur adipiscing elit.",
                          style: GoogleFonts.roboto(
                            fontWeight: FontWeight.w300,
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
