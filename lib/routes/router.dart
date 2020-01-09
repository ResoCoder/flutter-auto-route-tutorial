import 'package:auto_route/auto_route_annotations.dart';
import 'package:auto_route/transitions_builders.dart';
import 'package:auto_route_tutorial/pages/initial_page.dart';
import 'package:auto_route_tutorial/pages/second_page.dart';
import 'package:auto_route_tutorial/pages/third_page.dart';

@autoRouter
class $Router {
  @initial
  InitialPage initialPage;
  @MaterialRoute(fullscreenDialog: true)
  SecondPage secondPage;
  @CustomRoute(
    transitionsBuilder: TransitionsBuilders.zoomIn,
    durationInMilliseconds: 200,
  )
  ThirdPage thirdPage;
}
