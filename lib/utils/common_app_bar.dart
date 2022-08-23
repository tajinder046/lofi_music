import 'package:lofi_music/constants/exports.dart';
import 'package:lofi_music/utils/common_widgets.dart';

commonAppbar({leadingWidget,txt,title,action}){
  return AppBar(
    elevation: margin_0,
    leading: leadingWidget??Container(),
    title: title??text(txt: txt??""),
    centerTitle: true,
    actions:<Widget> [action??Container()],
  );
}