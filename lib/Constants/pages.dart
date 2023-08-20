import 'package:get/get.dart';
import 'package:mr_thinker/Constants/routes.dart';

import '../PresentationalLayer/Screens/Auth/login_screen.dart';
import '../PresentationalLayer/Screens/Auth/register_screen.dart';
import '../PresentationalLayer/Screens/Private/profile_screen.dart';
import '../PresentationalLayer/Screens/Public/choice_questions_screen.dart';
import '../PresentationalLayer/Screens/Public/home_screen.dart';
import '../PresentationalLayer/Screens/Public/saved_questions_screen.dart';
import '../PresentationalLayer/Screens/Public/splash_screen.dart';
import '../PresentationalLayer/Screens/Public/traditional_questions_screen.dart';

List<GetPage<dynamic>> getPages = [
  GetPage(
      name: AppRoutes.splashScreen,
      page: () =>  SplashScreen(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.loginScreen,
      page: () => const LoginScreen(),
      transition: Transition.fade),
  GetPage(
      name: AppRoutes.registerScreen,
      page: () => const RegisterScreen(),
      transition: Transition.circularReveal),
  GetPage(
      name: AppRoutes.homeScreen,
      page: () =>  HomeScreen(),
      transition: Transition.downToUp),
  GetPage(
      name: AppRoutes.profileScreen,
      page: () => const ProfileScreen(),
      transition: Transition.upToDown),
  GetPage(
      name: AppRoutes.tradQues,
      page: () => const TraditionalQuestions(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.choiceQues,
      page: () => const ChoiceQuestions(),
      transition: Transition.leftToRightWithFade),
  GetPage(
      name: AppRoutes.savedQues,
      page: () => const SavedQuestions(),
      transition: Transition.leftToRightWithFade),

];