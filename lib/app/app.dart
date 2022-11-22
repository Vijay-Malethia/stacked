import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:this_demo_stack/second/second_view.dart';

import '../initial/home_view.dart';

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView, initial: true),
    MaterialRoute(page: SecondView)
  ],
  dependencies: [LazySingleton(classType: NavigationService)]
)
class App {
  /** This class has no puporse besides housing the annotation that generates the required functionality **/
}
