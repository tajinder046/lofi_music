import "package:lofi_music/constants/exports.dart";

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: _drawer(),
      appBar: _appBar(),
      body: _body(),
    );
  }

  _drawer() {
    return Drawer(
      backgroundColor: appColor,
      child: ListView(
        padding: EdgeInsets.symmetric(vertical: margin_50),
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: margin_20),
            child: Row(
              children: [
                assetImage(
                  img: icCross,
                ),
                Spacer(),
                assetImage(
                  img: icMoon,
                )
              ],
            ),
          ),
          vGap(height: height_30),
          ListTile(
            leading: assetImage(
              img: icUser,
            ),
            title: text(
              txt: "Profile",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: assetImage(
              img: icHeart,
            ),
            title: text(
              txt: "Liked Songs",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: assetImage(
              img: icGlobe,
            ),
            title: text(
              txt: "Language",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: assetImage(
              img: icMessage,
            ),
            title: text(
              txt: "Contact us",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: assetImage(
              img: icBulb,
            ),
            title: text(
              txt: "FAQs",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
          ListTile(
            leading: assetImage(
              img: icSetting,
            ),
            title: text(
              txt: "Settings",
              fontSize: margin_20,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }

  _body() {
    return SingleChildScrollView(
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
          //vGap(height: height_10),
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
    );
  }

  _appBar() {
    return commonAppbar(
        leadingWidget: Padding(
          padding: EdgeInsets.only(left: margin_30),
          child: InkWell(
              focusColor: Colors.transparent,
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                setState(() {
                  _scaffoldKey.currentState?.openDrawer();
                });
              },
              child: assetImage(img: icMenu)),
        ),
        txt: '',
        action: Padding(
          padding: EdgeInsets.only(right: margin_10),
          child: assetImage(img: icSearch),
        ));
  }

  _musicList() {
    return Container(
      width: width_180,
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
                Container(
                  height: height_150,
                  width: width_150,
                  child: assetImage(
                      img: imgSong, fit: BoxFit.cover, radius: radius_10),
                ),
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
