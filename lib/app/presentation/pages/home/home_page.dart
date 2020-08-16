import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import '../../app_mobx_store.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = Modular.get<AppMobxStore>();
  final String assetGithub = "assets/Octocat.png";
  final String assetLinkedin = "assets/linkedin.png";
  final String textGithub = "github repository";
  final String textLinkedin = "follow me on linkedin";
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height - MediaQuery.of(context).padding.top;
    double width = size.width;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
          ),
          SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Container(
                  height: height * .3,
                  child: Center(
                    child: Text(
                      "Welcome to themed_application",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.headline1,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 5),
                  decoration: BoxDecoration(
                    color: Theme.of(context).backgroundColor,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(45),
                      topRight: Radius.circular(45),
                    ),
                  ),
                  height: height * .7,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _switchField(),
                      _fieldsUrlAndIcons(
                        image1: assetGithub,
                        text1: textGithub,
                        image2: assetLinkedin,
                        text2: textLinkedin,
                        height: height * .18,
                      ),
                      _columnButtonsField((width*.8)),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _switchField() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Observer(builder: (_) {
          return Switch(
            onChanged: controller.changeTheme,
            value: controller.isDarkTheme,
          );
        }),
        Text(
          controller.isDarkTheme
              ? "dark theme".toUpperCase()
              : "light theme".toUpperCase(),
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }

  Widget _fieldUrlAndText({String text, String image}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40.0, vertical: 7.5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            height: 45,
            width: 45,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(image),
                fit: BoxFit.cover,
              ),
              borderRadius: BorderRadius.all(
                Radius.circular(15),
              ),
              color: Theme.of(context).accentColor,
            ),
          ),
          Expanded(
            child: Text(
              text.toUpperCase(),
              style: Theme.of(context).textTheme.bodyText1,
              textAlign: TextAlign.end,
            ),
          ),
        ],
      ),
    );
  }

  Widget _fieldsUrlAndIcons(
      {String text1,
      String image1,
      String text2,
      String image2,
      double height}) {
    return Container(
      child: Column(
        children: [
          _fieldUrlAndText(text: text1, image: image1),
          _fieldUrlAndText(text: text2, image: image2),
        ],
      ),
    );
  }

  Widget _columnButtonsField(double width) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2),
          child: _button(width,"sign up"),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            "Or".toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            "alredy have an account?".toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: _button(width,"sign in"),
        ),
      ],
    );
  }

  Widget _button(double width,String label) {
    return Container(
      height: 40,
      width: width,
      child: RaisedButton(
        onPressed: () {},
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        child: Text(
          label.toUpperCase(),
          style: Theme.of(context).textTheme.button,
        ),
      ),
    );
  }
}
