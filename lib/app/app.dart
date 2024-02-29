import 'package:my_first_app/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:my_first_app/ui/common/custom_route_transition.dart';
import 'package:my_first_app/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:my_first_app/ui/views/home/home_view.dart';
import 'package:my_first_app/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:my_first_app/ui/views/counter/counter_view.dart';
import 'package:my_first_app/ui/views/login/login_view.dart';
import 'package:my_first_app/services/authentication_service.dart';
import 'package:my_first_app/ui/views/text_reverse/text_reverse_view.dart';
import 'package:my_first_app/services/api_service.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    //MaterialRoute(page: CounterView),
    MaterialRoute(page: LoginView),
    CustomRoute(
        page: CounterView,
        transitionsBuilder: CustomRouteTransition.sharedAxis),
    MaterialRoute(page: TextReverseView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    LazySingleton(classType: AuthenticationService),
    LazySingleton(classType: ApiService),
// @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}