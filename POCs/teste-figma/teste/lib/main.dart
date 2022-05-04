import 'package:flutter/material.dart';
import 'package:flutterapp/testeapp/generatedhomescreenwidget/GeneratedHomeScreenWidget.dart';
import 'package:flutterapp/testeapp/generatedintro1widget/GeneratedIntro1Widget.dart';
import 'package:flutterapp/testeapp/generatedsplashscreenwidget/GeneratedSplashscreenWidget.dart';
import 'package:flutterapp/testeapp/generatedintro2widget/GeneratedIntro2Widget.dart';
import 'package:flutterapp/testeapp/generatedintro3widget/GeneratedIntro3Widget.dart';
import 'package:flutterapp/testeapp/generatednotfoundwidget/GeneratedNotfoundWidget.dart';
import 'package:flutterapp/testeapp/generatedloginwidget/GeneratedLoginWidget.dart';
import 'package:flutterapp/testeapp/generatedsignupwidget/GeneratedSignupWidget.dart';
import 'package:flutterapp/testeapp/generatedresultswidget/GeneratedResultsWidget.dart';
import 'package:flutterapp/testeapp/generatedproductdetailwidget/GeneratedProductDetailWidget.dart';
import 'package:flutterapp/testeapp/generatednotsavedwidget/GeneratedNotSavedWidget.dart';
import 'package:flutterapp/testeapp/generatedprofilewidget1/GeneratedProfileWidget1.dart';
import 'package:flutterapp/testeapp/generatedsettingswidget/GeneratedSettingsWidget.dart';
import 'package:flutterapp/testeapp/generatedyourcourseswidget/GeneratedYourCoursesWidget.dart';
import 'package:flutterapp/testeapp/generatedcourselessonwidget/GeneratedCourseLessonWidget.dart';
import 'package:flutterapp/testeapp/generatedcoursetestswidget/GeneratedCourseTestsWidget.dart';
import 'package:flutterapp/testeapp/generatedtestquestionwidget/GeneratedTestQuestionWidget.dart';
import 'package:flutterapp/testeapp/generatedresultswidget1/GeneratedResultsWidget1.dart';
import 'package:flutterapp/testeapp/generatedresultswidget2/GeneratedResultsWidget2.dart';
import 'package:flutterapp/testeapp/generatedchooselessonscoursewidget/GeneratedChooseLessonsCourseWidget.dart';
import 'package:flutterapp/testeapp/generatedsavedwidget/GeneratedSavedWidget.dart';
import 'package:flutterapp/testeapp/generatednopaymentwidget/GeneratedNoPaymentWidget.dart';
import 'package:flutterapp/testeapp/generatedpaymentaddedwidget/GeneratedPaymentAddedWidget.dart';
import 'package:flutterapp/testeapp/generatedinstructionswidget/GeneratedInstructionsWidget.dart';
import 'package:flutterapp/testeapp/generatedcustomizebannerwidget/GeneratedCustomizebannerWidget.dart';
import 'package:flutterapp/testeapp/generatedtextstyleswidget/GeneratedTextStylesWidget.dart';
import 'package:flutterapp/testeapp/generatedtextwidget45/GeneratedTextWidget45.dart';
import 'package:flutterapp/testeapp/generatedtextwidget46/GeneratedTextWidget46.dart';
import 'package:flutterapp/testeapp/generatedtextwidget47/GeneratedTextWidget47.dart';
import 'package:flutterapp/testeapp/generatedtextwidget48/GeneratedTextWidget48.dart';
import 'package:flutterapp/testeapp/generatedtextwidget49/GeneratedTextWidget49.dart';
import 'package:flutterapp/testeapp/generatedtextwidget50/GeneratedTextWidget50.dart';
import 'package:flutterapp/testeapp/generatedtextwidget51/GeneratedTextWidget51.dart';
import 'package:flutterapp/testeapp/generatedtextwidget52/GeneratedTextWidget52.dart';
import 'package:flutterapp/testeapp/generatedtextwidget53/GeneratedTextWidget53.dart';
import 'package:flutterapp/testeapp/generatedtextwidget54/GeneratedTextWidget54.dart';
import 'package:flutterapp/testeapp/generatedsystembarswidget/GeneratedSystemBarsWidget.dart';
import 'package:flutterapp/testeapp/generatedfieldswidget/GeneratedFieldsWidget.dart';
import 'package:flutterapp/testeapp/generatedsegmentcontrolwidget3/GeneratedSegmentControlWidget3.dart';
import 'package:flutterapp/testeapp/generatedcolorswidget/GeneratedColorsWidget.dart';
import 'package:flutterapp/testeapp/generatedheaderswidget15/GeneratedHeadersWidget15.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget/GeneratedThumbnailWidget.dart';
import 'package:flutterapp/testeapp/generatedthumbnailwidget1/GeneratedThumbnailWidget1.dart';

void main() {
  runApp(testeApp());
}

class testeApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/GeneratedColorsWidget',
      routes: {
        '/GeneratedHomeScreenWidget': (context) => GeneratedHomeScreenWidget(),
        '/GeneratedIntro1Widget': (context) => GeneratedIntro1Widget(),
        '/GeneratedSplashscreenWidget': (context) =>
            GeneratedSplashscreenWidget(),
        '/GeneratedIntro2Widget': (context) => GeneratedIntro2Widget(),
        '/GeneratedIntro3Widget': (context) => GeneratedIntro3Widget(),
        '/GeneratedNotfoundWidget': (context) => GeneratedNotfoundWidget(),
        '/GeneratedLoginWidget': (context) => GeneratedLoginWidget(),
        '/GeneratedSignupWidget': (context) => GeneratedSignupWidget(),
        '/GeneratedResultsWidget': (context) => GeneratedResultsWidget(),
        '/GeneratedProductDetailWidget': (context) =>
            GeneratedProductDetailWidget(),
        '/GeneratedNotSavedWidget': (context) => GeneratedNotSavedWidget(),
        '/GeneratedProfileWidget1': (context) => GeneratedProfileWidget1(),
        '/GeneratedSettingsWidget': (context) => GeneratedSettingsWidget(),
        '/GeneratedYourCoursesWidget': (context) =>
            GeneratedYourCoursesWidget(),
        '/GeneratedCourseLessonWidget': (context) =>
            GeneratedCourseLessonWidget(),
        '/GeneratedCourseTestsWidget': (context) =>
            GeneratedCourseTestsWidget(),
        '/GeneratedTestQuestionWidget': (context) =>
            GeneratedTestQuestionWidget(),
        '/GeneratedResultsWidget1': (context) => GeneratedResultsWidget1(),
        '/GeneratedResultsWidget2': (context) => GeneratedResultsWidget2(),
        '/GeneratedChooseLessonsCourseWidget': (context) =>
            GeneratedChooseLessonsCourseWidget(),
        '/GeneratedSavedWidget': (context) => GeneratedSavedWidget(),
        '/GeneratedNoPaymentWidget': (context) => GeneratedNoPaymentWidget(),
        '/GeneratedPaymentAddedWidget': (context) =>
            GeneratedPaymentAddedWidget(),
        '/GeneratedInstructionsWidget': (context) =>
            GeneratedInstructionsWidget(),
        '/GeneratedCustomizebannerWidget': (context) =>
            GeneratedCustomizebannerWidget(),
        '/GeneratedTextStylesWidget': (context) => GeneratedTextStylesWidget(),
        '/GeneratedTextWidget45': (context) => GeneratedTextWidget45(),
        '/GeneratedTextWidget46': (context) => GeneratedTextWidget46(),
        '/GeneratedTextWidget47': (context) => GeneratedTextWidget47(),
        '/GeneratedTextWidget48': (context) => GeneratedTextWidget48(),
        '/GeneratedTextWidget49': (context) => GeneratedTextWidget49(),
        '/GeneratedTextWidget50': (context) => GeneratedTextWidget50(),
        '/GeneratedTextWidget51': (context) => GeneratedTextWidget51(),
        '/GeneratedTextWidget52': (context) => GeneratedTextWidget52(),
        '/GeneratedTextWidget53': (context) => GeneratedTextWidget53(),
        '/GeneratedTextWidget54': (context) => GeneratedTextWidget54(),
        '/GeneratedSystemBarsWidget': (context) => GeneratedSystemBarsWidget(),
        '/GeneratedFieldsWidget': (context) => GeneratedFieldsWidget(),
        '/GeneratedSegmentControlWidget3': (context) =>
            GeneratedSegmentControlWidget3(),
        '/GeneratedColorsWidget': (context) => GeneratedColorsWidget(),
        '/GeneratedHeadersWidget15': (context) => GeneratedHeadersWidget15(),
        '/GeneratedThumbnailWidget': (context) => GeneratedThumbnailWidget(),
        '/GeneratedThumbnailWidget1': (context) => GeneratedThumbnailWidget1(),
      },
    );
  }
}
