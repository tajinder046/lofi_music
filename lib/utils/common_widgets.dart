import 'package:lofi_music/constants/exports.dart';

Widget assetImage({required String img, height, width, fit, radius}) {
  return ClipRRect(
    clipBehavior: Clip.hardEdge,
    borderRadius: BorderRadius.all(Radius.circular(radius ?? margin_0)),
    child: Image.asset(
      img,
      height: height,
      width: width,
      fit: fit,
    ),
  );
}

Widget text(
    {String? txt, double? fontSize, int? maxline, fontweight, txtColor}) {
  return Text(
    txt ?? "",
    style: TextStyle(
      color: txtColor ?? appTxtColor,
      fontWeight: fontweight ?? FontWeight.normal,
      fontSize: fontSize ?? margin_10,
    ),
    overflow: TextOverflow.ellipsis,
    maxLines: maxline ?? 1,
  );
}

Widget vGap({double? height}) {
  return SizedBox(
    height: height,
  );
}

Widget hGap({double? width}) {
  return SizedBox(
    width: width,
  );
}

Widget oneSidedShadow() {
  return Padding(
    padding: EdgeInsets.only(left: margin_30, right: margin_30, top: margin_50),
    child: Container(
      margin: EdgeInsets.only(bottom: margin_20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(radius_10),
        boxShadow: [
          BoxShadow(
            color: Colors.red.withOpacity(0.95),
            blurRadius: radius_20,
            offset: Offset(0, 2), // changes position of shadow
          ),
        ],
      ),
    ),
  );
}
