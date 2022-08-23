import "package:lofi_music/constants/exports.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: commonAppbar(
          leadingWidget: Padding(
            padding: EdgeInsets.only(left: margin_30),
            child: assetImage(img: icMenu),
          ),
          txt: '',
          action: Padding(
            padding: EdgeInsets.only(right: margin_10),
            child: assetImage(img: icSearch),
          )),
      body: SingleChildScrollView(
        child: Column(
          children: [
            vGap(height: height_20),
            Padding(
              padding: EdgeInsets.only(left: margin_30),
              child: Align(
                alignment: Alignment.topLeft,
                child: text(
                    txt: 'Recommended for You',
                    fontSize: margin_20,
                    fontweight: FontWeight.bold),
              ),
            ),
            vGap(height: height_10),
            Container(
              height: height_270,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: margin_20, right: margin_20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => _musicList(),
                  separatorBuilder: (context, index) => hGap(width: width_10),
                  itemCount: 5),
            ),
            _lable(txt: 'My Playlist'),
            Container(
              height: height_270,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: margin_20, right: margin_20),
                  scrollDirection: Axis.horizontal,
                  shrinkWrap: true,
                  itemBuilder: (context, index) => _musicList(),
                  separatorBuilder: (context, index) => hGap(width: width_10),
                  itemCount: 5),
            ),
          ],
        ),
      ),
    );
  }

  _musicList() {
    return Container(
      width: width_180,
      padding: EdgeInsets.all(margin_8),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: width_200,
            height: height_200,
            child: Stack(
              alignment: Alignment.center,
              overflow: Overflow.visible,
              children: [
                oneSidedShadow(),
                assetImage(img: imgSong, fit: BoxFit.cover, radius: radius_10),
              ],
            ),
          ),
          //vGap(height: height_10),
          text(txt: 'Monsters Go Bump', fontSize: margin_19),
          vGap(height: height_10),
          text(
              txt: 'Monsters Go Bump',
              fontSize: margin_15,
              txtColor: appTxtColorTwo),
        ],
      ),
    );
  }

  _lable({txt}) {
    return Padding(
      padding: EdgeInsets.only(left: margin_30),
      child: Align(
        alignment: Alignment.topLeft,
        child: text(txt: txt, fontSize: margin_20, fontweight: FontWeight.bold),
      ),
    );
  }
}
