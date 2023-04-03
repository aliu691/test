import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_test_application/helpers/custom_color.g.dart';
import 'package:flutter_test_application/helpers/images.dart';
import 'package:flutter_test_application/widgets/expandable_product_widget.dart';

class ProductDetailsScreen extends StatefulWidget {
  const ProductDetailsScreen({super.key});

  @override
  State<ProductDetailsScreen> createState() => _ProductDetailsScreenState();
}

final size = [
  'Small',
  'Medium',
  'Large',
];

final images = [
  AppImages.image1,
  AppImages.image2,
  AppImages.image3,
  AppImages.image4
];

class _ProductDetailsScreenState extends State<ProductDetailsScreen> {
  ScrollController controller = ScrollController();
  bool _visible = true;

  bool isSelected = false;

  int? _value = 1;

  @override
  void initState() {
    controller.addListener(() {
      if (controller.position.userScrollDirection == ScrollDirection.reverse) {
        if (_visible) {
          setState(() {
            _visible = false;
          });
        }
      } else if (controller.position.userScrollDirection ==
          ScrollDirection.forward) {
        if (!_visible) {
          setState(() {
            _visible = true;
          });
        }
      }
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.close),
        title: const Text(
          'Product Name',
        ),
      ),
      body: SingleChildScrollView(
        controller: controller,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Card(
                    elevation: 6,
                    child: AspectRatio(
                      aspectRatio: 1,
                      child: Container(
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16),
                          color: Theme.of(context)
                              .extension<CustomColors>()!
                              .containerBackground,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 36,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.5,
                        child: Text(
                          'AHA BHA PHA 30 Days Miracle Starter Kit',
                          style:
                              Theme.of(context).textTheme.bodyLarge!.copyWith(
                                    fontSize: 18,
                                    color: Theme.of(context)
                                        .extension<CustomColors>()!
                                        .productNameColor,
                                  ),
                        ),
                      ),
                      const SizedBox(
                        width: 15,
                      ),
                      Card(
                        elevation: 6,
                        color: Theme.of(context)
                            .extension<CustomColors>()!
                            .containerBackground,
                        child: Container(
                          width: 124,
                          height: 124,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Theme.of(context)
                                .extension<CustomColors>()!
                                .containerBackground,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(10),
                            child: Column(
                              children: [
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Icon(
                                      Icons.sell,
                                      color: Theme.of(context)
                                          .extension<ColorScheme>()
                                          ?.onSecondaryContainer,
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.end,
                                      children: [
                                        Text(
                                          '40% Off',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .extension<CustomColors>()!
                                                    .discountTextColor,
                                              ),
                                        ),
                                        Text(
                                          '7.99',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                color: Theme.of(context)
                                                    .extension<CustomColors>()!
                                                    .discountTextColor,
                                              ),
                                        ),
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Padding(
                                  padding: const EdgeInsets.only(left: 12),
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            '4.5',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayMedium!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .extension<ColorScheme>()
                                                      ?.onSecondaryContainer,
                                                ),
                                          ),
                                          Text(
                                            'OMR',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  color: Theme.of(context)
                                                      .extension<ColorScheme>()
                                                      ?.onSecondaryContainer,
                                                ),
                                          ),
                                        ],
                                      ),
                                      Text(
                                        'Include VAT',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Theme.of(context)
                                                  .extension<ColorScheme>()
                                                  ?.onSecondaryContainer,
                                            ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 2,
                  ),
                  Row(children: [
                    Container(
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: const Color(0XFFD4E3FF),
                        borderRadius: BorderRadius.circular(24),
                      ),
                      child: const Icon(
                        Icons.done,
                        color: Color(0XFF195FA7),
                      ),
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Text(
                      'Brand Name',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .extension<CustomColors>()
                                ?.brandNameColor,
                          ),
                    ),
                  ]),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 43, vertical: 12),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Out of Stock',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        color: Theme.of(context)
                                            .extension<CustomColors>()
                                            ?.sourceError,
                                      ),
                                ),
                                const SizedBox(
                                  width: 15,
                                ),
                                Icon(
                                  Icons.close,
                                  color: Theme.of(context)
                                      .extension<CustomColors>()
                                      ?.sourceError,
                                  size: 16,
                                ),
                              ],
                            ),
                            Text(
                              'SKU: 235898464165',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(color: const Color(0XFF43474E)),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Divider(
                          color: Theme.of(context)
                              .extension<CustomColors>()
                              ?.dividerColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 23,
                  ),
                  Text(
                    'Colours:',
                    style: Theme.of(context).textTheme.labelLarge!.copyWith(
                          color: Theme.of(context)
                              .extension<CustomColors>()
                              ?.titleTextColor,
                        ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 25,
                    child: Center(
                      child: ListView.separated(
                        shrinkWrap: true,
                        itemCount: 5,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          return Container(
                            width: 23,
                            height: 23,
                            decoration: BoxDecoration(
                                color: const Color(0XFFD9D9D9),
                                borderRadius: BorderRadius.circular(26)),
                          );
                        },
                        separatorBuilder: (BuildContext context, int index) {
                          return const SizedBox(
                            width: 8,
                          );
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30, bottom: 15),
                    child: Text(
                      'Size:',
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Theme.of(context)
                                .extension<CustomColors>()
                                ?.titleTextColor,
                          ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 43, vertical: 12),
                    child: Column(
                      children: [
                        Wrap(
                          spacing: 8.0,
                          children: List<Widget>.generate(
                            3,
                            (int index) {
                              return ChoiceChip(
                                selectedColor: Theme.of(context)
                                    .extension<ColorScheme>()
                                    ?.primaryContainer,
                                label: Text(size[index]),
                                selected: _value == index,
                                onSelected: (bool selected) {
                                  setState(() {
                                    _value = selected ? index : null;
                                  });
                                },
                              );
                            },
                          ).toList(),
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Divider(
                          color: Theme.of(context)
                              .extension<CustomColors>()
                              ?.dividerColor,
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.local_shipping,
                              size: 12,
                              color: Theme.of(context)
                                  .extension<CustomColors>()
                                  ?.shippingDetailsColor,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Shipping By ASYAD',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 8,
                                    color: Theme.of(context)
                                        .extension<CustomColors>()
                                        ?.shippingDetailsColor,
                                  ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          children: [
                            Icon(
                              Icons.credit_card,
                              size: 12,
                              color: Theme.of(context)
                                  .extension<CustomColors>()
                                  ?.shippingDetailsColor,
                            ),
                            const SizedBox(
                              width: 8,
                            ),
                            Text(
                              'Cash In Delivery',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelSmall!
                                  .copyWith(
                                    fontSize: 8,
                                    color: Theme.of(context)
                                        .extension<CustomColors>()
                                        ?.shippingDetailsColor,
                                  ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 64,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Shipping estimate',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .extension<CustomColors>()
                                        ?.shippingEstimateColor,
                                  ),
                            ),
                            Text(
                              'Register / Login',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color: Theme.of(context)
                                        .extension<CustomColors>()!
                                        .sourceError,
                                  ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 12,
                        ),
                        Divider(
                          color: Theme.of(context)
                              .extension<CustomColors>()
                              ?.dividerColor,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Column(
                    children: const [
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ExpandableProductWidget(
                          label: 'Description',
                          content:
                              'If you have sensitive skin that causes problems, even if you\'re a little tired, follow Miracle Kit\'s 4-STEP solution.',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ExpandableProductWidget(
                          label: 'Ingredients',
                          content:
                              'If you have sensitive skin that causes problems, even if you\'re a little tired, follow Miracle Kit\'s 4-STEP solution.',
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(vertical: 16),
                        child: ExpandableProductWidget(
                          label: 'Description',
                          content:
                              'If you have sensitive skin that causes problems, even if you\'re a little tired, follow Miracle Kit\'s 4-STEP solution.',
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            ListView.builder(
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Image.asset(
                    images[index],
                    width: double.infinity,
                  );
                }),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 10,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Center(
                      child: Image.asset(
                        AppImages.supportedImage,
                        width: 300,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 46),
                    child: Divider(
                      color: Theme.of(context)
                          .extension<CustomColors>()
                          ?.dividerColor,
                    ),
                  ),
                  const SizedBox(
                    height: 32,
                  )
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          children: [
            const Icon(Icons.share),
            const SizedBox(width: 32),
            const Icon(Icons.favorite_border),
            const Spacer(),
            FloatingActionButton(
              onPressed: () {},
              child: const Icon(Icons.add_shopping_cart),
            ),
          ],
        ),
      ),
      floatingActionButton: AnimatedScale(
        scale: _visible ? 1 : 0,
        duration: const Duration(milliseconds: 300),
        child: FloatingActionButton.extended(
          label: Text(
            'Buy Now',
            style: Theme.of(context).textTheme.labelLarge,
          ),
          icon: const Icon(
            Icons.shopping_cart_checkout,
          ),
          onPressed: () {},
        ),
      ),
    );
  }
}
