import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'home_controller.dart';
import 'strings.dart';
import 'widgets/button_widget.dart';
import 'widgets/icon_text_widget.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage,HomeController> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    double height = size.height - MediaQuery.of(context).padding.top;
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: Theme.of(context).primaryColor,
          ),
          SafeArea(
            child: Column(children: <Widget>[
              Expanded(
                child: Center(
                  child: Text(
                    title,
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
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal:20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      _switchField(),
                      _fieldsUrlAndIcons(
                        image1: assetGithub,
                        text1: textGithub,
                        image2: assetLinkedin,
                        text2: textLinkedin,
                      ),
                      _columnButtonsField(),
                    ],
                  ),
                ),
              ),
            ],),
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
            onChanged: controller.changeThemeWithSwitch,
            value: controller.isDarkTheme,
          );
        }),
        Text(
          controller.themeText,
          style: Theme.of(context).textTheme.bodyText2,
        )
      ],
    );
  }

  Widget _fieldsUrlAndIcons({String text1,String image1,String text2,String image2,}) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5,horizontal: 10),
          child: IconTextWidget(image: image1,text: text1,onTap: controller.openUrlGitHub,),
        ), 
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 7.5,horizontal: 10),
          child: IconTextWidget(image: image2,text: text2,onTap: controller.openUrlLinkedin,),
        ),
      ],
    );
  }

  Widget _columnButtonsField() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 2,),
          child: ButtonWidget(label: buttonSignup,onPressed: (){},),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            textDivisorButtons1.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: Text(
            textDivisorButtons2.toUpperCase(),
            style: Theme.of(context).textTheme.bodyText1,
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 6),
          child: ButtonWidget(label: buttonSignup,onPressed: (){},),
        ),
      ],
    );
  }
}
