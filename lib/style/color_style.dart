import 'dart:ui';

class ColorStyle {
  // region gray
  static Color get gray10 => const Color.fromRGBO(253, 254, 255, 1);

  static Color get gray20 => const Color.fromRGBO(242, 243, 244, 1);

  static Color get gray30 => const Color.fromRGBO(225, 228, 230, 1);

  static Color get gray40 => const Color.fromRGBO(206, 211, 214, 1);

  static Color get gray50 => const Color.fromRGBO(169, 175, 179, 1);

  static Color get gray60 => const Color.fromRGBO(135, 141, 145, 1);

  static Color get gray70 => const Color.fromRGBO(94, 99, 103, 1);

  static Color get gray80 => const Color.fromRGBO(54, 58, 61, 1);

  static Color get gray90 => const Color.fromRGBO(40, 44, 45, 1);

  static Color get gray100 => const Color.fromRGBO(0, 0, 0, 1);

  static Color get transparent => const Color.fromRGBO(0, 0, 0, 0);

  // endregion

  // region blue
  static Color get blue10 => const Color.fromRGBO(236, 241, 254, 1);

  static Color get blue20 => const Color.fromRGBO(177, 200, 250, 1);

  static Color get blue30 => const Color.fromRGBO(126, 162, 248, 1);

  static Color get blue40 => const Color.fromRGBO(77, 126, 246, 1);

  static Color get blue50 => const Color.fromRGBO(37, 87, 246, 1);

  static Color get blue60 => const Color.fromRGBO(29, 73, 201, 1);

  static Color get blue70 => const Color.fromRGBO(21, 56, 158, 1);

  static Color get blue80 => const Color.fromRGBO(14, 41, 113, 1);

  static Color get blue90 => const Color.fromRGBO(7, 24, 68, 1);

  static Color get blue100 => const Color.fromRGBO(1, 8, 27, 1);

  // endregion

  // region yellow
  static Color get yellow10 => const Color.fromRGBO(254, 247, 230, 1);

  static Color get yellow20 => const Color.fromRGBO(251, 232, 178, 1);

  static Color get yellow30 => const Color.fromRGBO(248, 216, 130, 1);

  static Color get yellow40 => const Color.fromRGBO(246, 198, 89, 1);

  static Color get yellow50 => const Color.fromRGBO(243, 173, 61, 1);

  static Color get yellow60 => const Color.fromRGBO(200, 149, 49, 1);

  static Color get yellow70 => const Color.fromRGBO(156, 116, 38, 1);

  static Color get yellow80 => const Color.fromRGBO(112, 83, 24, 1);

  static Color get yellow90 => const Color.fromRGBO(68, 51, 12, 1);

  static Color get yellow100 => const Color.fromRGBO(41, 28, 2, 1);

  // endregion

  // region red
  static Color get red100 => const Color.fromRGBO(255, 93, 93, 1);

  // endregion

  // region orange
  static Color get orange => const Color.fromRGBO(251, 135, 59, 1);

  // endregion

  // region dustMoth
  static Color get dustmothPink => const Color.fromRGBO(255, 248, 248, 1);

  static Color get dustmothRed => const Color.fromRGBO(237, 132, 145, 1);

  static Color get dustmothGray => const Color.fromRGBO(147, 149, 152, 1);

  // endregion

  // region black and white
  static Color get black => const Color.fromRGBO(0, 0, 0, 1);

  static Color get white => const Color.fromRGBO(255, 255, 255, 1);

  // endregion

  // region gradient
  // static List<Color> get redGradient => [const Color.fromRGBO(253, 119, 81, 1), const Color.fromRGBO(252, 38, 126, 1)];

  static List<Color> redGradient({double opacity = 1}) {
    return [
      Color.fromRGBO(253, 119, 81, opacity),
      Color.fromRGBO(252, 38, 126, opacity),
    ];
  }
// endregion
}
