import 'package:abctechfront/presentation/pages/about/about.dart';
import 'package:abctechfront/presentation/pages/register/register_page.dart';
import 'package:page_transition/page_transition.dart';

final routes = {
  '/register': (context) => PageTransition(
        child: const RegisterPage(),
        type: PageTransitionType.leftToRight,
      ),
  '/Sobre': (context) => PageTransition(
        child: const About(),
        type: PageTransitionType.topToBottom,
      ),
};
