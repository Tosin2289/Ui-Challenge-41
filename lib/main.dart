import "package:flutter/material.dart";
import "package:flutter/services.dart";

void main() {
  // HIDING STATUS BAR
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark.copyWith(
    systemNavigationBarColor: Colors.black,
    statusBarColor: Colors.transparent,
  ));
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: "UI Challenges",
    home: UI1(),
  ));
}

class UI1 extends StatefulWidget {
  const UI1({Key? key}) : super(key: key);

  @override
  State<UI1> createState() => _UI1State();
}

class _UI1State extends State<UI1> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double conHt = height * 0.11;
    double sbxHt = height * 0.017;
    double h1Font = MediaQuery.of(context).size.height * 0.05;
    double h2Font = MediaQuery.of(context).size.height * 0.017;
    double h3Font = MediaQuery.of(context).size.height * 0.02;
    return Scaffold(
        body: Column(
      children: [
// MAIN TOP IMAGE CONTAINER
        ShaderMask(
          blendMode: BlendMode.srcATop,
          shaderCallback: (Rect bounds) {
            return LinearGradient(colors: const [
              Colors.black,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
              Colors.transparent,
            ], begin: Alignment.bottomCenter, end: Alignment.topCenter)
                .createShader(bounds);
          },
          child: Container(
            padding: EdgeInsets.all(sbxHt + 7),
            alignment: Alignment.topCenter,
            decoration: BoxDecoration(
              color: Colors.black,
              image: DecorationImage(
                  image: AssetImage(
                    "assets/bg.jpg",
                  ),
                  fit: BoxFit.fitHeight),
            ),
            height: MediaQuery.of(context).size.height * 0.6,
            child: Row(
              children: [
                IconButton(
                    icon: Icon(Icons.arrow_back_ios_new_sharp,
                        color: Colors.white),
                    onPressed: () {},
                    tooltip: "back"),
                Expanded(child: Container(height: sbxHt)),
                IconButton(
                  icon: Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {},
                  tooltip: "back",
                ),
              ],
            ),
          ),
        ),
        Expanded(
            child: Container(
                padding: EdgeInsets.fromLTRB(sbxHt + 7, 0, sbxHt + 7, 0),
                width: MediaQuery.of(context).size.width,
                color: Colors.black,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Row(
                      children: [
                        Text("DUNKIRK ",
                            style: TextStyle(
                                fontSize: h1Font,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                                letterSpacing: 2)),
                        Icon(
                          Icons.bookmark,
                          color: Colors.red,
                          size: conHt / 3,
                        )
                      ],
                    ),
                    Text("Trailer / Adventure / Action / Mystery",
                        style: TextStyle(
                            fontSize: h3Font,
                            fontStyle: FontStyle.italic,
                            color: Colors.white)),
                    SizedBox(height: sbxHt),

                    Text("WATCH TRAILER",
                        style: TextStyle(
                            fontSize: h2Font + 5,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.5)),
                    SizedBox(height: sbxHt),
// CONTAINER 1
                    Container(
                        height: conHt,
                        child: ListView(
                          scrollDirection: Axis.horizontal,
                          children: [
                            Container(
                              width: conHt,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage("assets/img1.jpg"),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: sbxHt),

//CONTAINER 2
                            Container(
                              width: conHt,
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img2.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            SizedBox(width: sbxHt),

//CONTAINER 3
                            Container(
                                width: conHt,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img3.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                ))),
                            SizedBox(width: sbxHt),

// CONTAINER 4
                            Container(
                                width: conHt,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                  image: AssetImage(
                                    "assets/img4.jpg",
                                  ),
                                  fit: BoxFit.cover,
                                )))
                          ],
                        )),
                    SizedBox(height: sbxHt),
                    Text(
                        "Trapped on the beach with their backs to the sea."
                        "British and Allied troops are surrounded by enemy forces "
                        "facing a fierce battle in World War ||",
                        style: TextStyle(
                            fontSize: h2Font + 1.5,
                            color: Colors.white,
                            letterSpacing: 0.7)),
                  ],
                )))
      ],
    ));
  }
}
