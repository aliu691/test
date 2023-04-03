import 'package:dynamic_color/dynamic_color.dart';
import 'package:flutter/material.dart';

const error = Color(0xFFBA1A1A);

CustomColors lightCustomColors = const CustomColors(
  sourceError: Color(0xFFBA1A1A),
  error: Color(0xFFBA1A1A),
  onError: Color(0xFFFFFFFF),
  errorContainer: Color(0xFFFFDAD5),
  onErrorContainer: Color(0xFF410002),
  containerBackground: Color(0XFFFBFCFE),
  productNameColor: Color(0XFF6C7C95),
  discountTextColor: Color(0XFF195FA7),
  dividerColor: Color(0XFFC3C6CF),
  shippingDetailsColor: Color(0XFF195FA7),
  shippingEstimateColor: Color(0XFF001C3A),
  titleTextColor: Color(0XFF6C7C95),
  brandNameColor: Color(0XFF545F71),
);

CustomColors darkCustomColors = const CustomColors(
  sourceError: Color(0xFFBA1A1A),
  error: Color(0xFFFFB4AB),
  onError: Color(0xFF690004),
  errorContainer: Color(0xFF930009),
  onErrorContainer: Color(0xFFFFDAD5),
  containerBackground: Color(0XFF191C1E),
  productNameColor: Color(0XFFA4C9FF),
  discountTextColor: Color(0XFFA4C8FF),
  dividerColor: Color(0XFF43474E),
  shippingDetailsColor: Color(0XFFA4C8FF),
  shippingEstimateColor: Color(0XFFD4E3FF),
  titleTextColor: Color(0XFFA4C9FF),
  brandNameColor: Color(0XFFD4E3FF),
);

/// Defines a set of custom colors, each comprised of 4 complementary tones.
///
/// See also:
///   * <https://m3.material.io/styles/color/the-color-system/custom-colors>
@immutable
class CustomColors extends ThemeExtension<CustomColors> {
  const CustomColors({
    required this.sourceError,
    required this.error,
    required this.onError,
    required this.errorContainer,
    required this.onErrorContainer,
    required this.containerBackground,
    required this.productNameColor,
    required this.discountTextColor,
    required this.dividerColor,
    required this.shippingDetailsColor,
    required this.shippingEstimateColor,
    required this.titleTextColor,
    required this.brandNameColor,
  });

  final Color? sourceError;
  final Color? error;
  final Color? onError;
  final Color? errorContainer;
  final Color? onErrorContainer;
  final Color? containerBackground;
  final Color? productNameColor;
  final Color? discountTextColor;
  final Color? dividerColor;
  final Color? shippingDetailsColor;
  final Color? shippingEstimateColor;
  final Color? titleTextColor;
  final Color? brandNameColor;

  @override
  CustomColors copyWith({
    Color? sourceError,
    Color? error,
    Color? onError,
    Color? errorContainer,
    Color? onErrorContainer,
    Color? containerBackground,
    Color? productNameColor,
    Color? discountTextColor,
    Color? dividerColor,
    Color? shippingDetailsColor,
    Color? shippingEstimateColor,
    Color? titleTextColor,
    Color? brandNameColor,
  }) {
    return CustomColors(
      sourceError: sourceError ?? this.sourceError,
      error: error ?? this.error,
      onError: onError ?? this.onError,
      errorContainer: errorContainer ?? this.errorContainer,
      onErrorContainer: onErrorContainer ?? this.onErrorContainer,
      containerBackground: containerBackground ?? this.containerBackground,
      productNameColor: productNameColor ?? this.productNameColor,
      discountTextColor: discountTextColor ?? this.discountTextColor,
      dividerColor: dividerColor ?? this.discountTextColor,
      shippingDetailsColor: shippingDetailsColor ?? this.shippingDetailsColor,
      shippingEstimateColor:
          shippingEstimateColor ?? this.shippingEstimateColor,
      titleTextColor: titleTextColor ?? this.titleTextColor,
      brandNameColor: brandNameColor ?? this.brandNameColor,
    );
  }

  @override
  CustomColors lerp(ThemeExtension<CustomColors>? other, double t) {
    if (other is! CustomColors) {
      return this;
    }
    return CustomColors(
      sourceError: Color.lerp(sourceError, other.sourceError, t),
      error: Color.lerp(error, other.error, t),
      onError: Color.lerp(onError, other.onError, t),
      errorContainer: Color.lerp(errorContainer, other.errorContainer, t),
      onErrorContainer: Color.lerp(onErrorContainer, other.onErrorContainer, t),
      containerBackground:
          Color.lerp(containerBackground, other.containerBackground, t),
      productNameColor: Color.lerp(productNameColor, other.productNameColor, t),
      discountTextColor:
          Color.lerp(discountTextColor, other.discountTextColor, t),
      dividerColor: Color.lerp(dividerColor, other.dividerColor, t),
      shippingDetailsColor:
          Color.lerp(shippingDetailsColor, other.shippingDetailsColor, t),
      shippingEstimateColor:
          Color.lerp(shippingEstimateColor, other.shippingEstimateColor, t),
      titleTextColor: Color.lerp(titleTextColor, other.titleTextColor, t),
      brandNameColor: Color.lerp(brandNameColor, other.brandNameColor, t),
    );
  }

  /// Returns an instance of [CustomColors] in which the following custom
  /// colors are harmonized with [dynamic]'s [ColorScheme.primary].
  ///   * [CustomColors.sourceError]
  ///   * [CustomColors.error]
  ///   * [CustomColors.onError]
  ///   * [CustomColors.errorContainer]
  ///   * [CustomColors.onErrorContainer]
  ///
  /// See also:
  ///   * <https://m3.material.io/styles/color/the-color-system/custom-colors#harmonization>
  CustomColors harmonized(ColorScheme dynamic) {
    return copyWith(
      sourceError: sourceError!.harmonizeWith(dynamic.primary),
      error: error!.harmonizeWith(dynamic.primary),
      onError: onError!.harmonizeWith(dynamic.primary),
      errorContainer: errorContainer!.harmonizeWith(dynamic.primary),
      onErrorContainer: onErrorContainer!.harmonizeWith(dynamic.primary),
      containerBackground: containerBackground!.harmonizeWith(dynamic.primary),
      productNameColor: productNameColor!.harmonizeWith(dynamic.primary),
      discountTextColor: discountTextColor!.harmonizeWith(dynamic.primary),
      dividerColor: dividerColor!.harmonizeWith(dynamic.primary),
      shippingDetailsColor:
          shippingDetailsColor!.harmonizeWith(dynamic.primary),
      shippingEstimateColor:
          shippingEstimateColor!.harmonizeWith(dynamic.primary),
      titleTextColor: titleTextColor!.harmonizeWith(dynamic.primary),
      brandNameColor: brandNameColor!.harmonizeWith(dynamic.primary),
    );
  }
}
