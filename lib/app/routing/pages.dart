import 'package:newsapp/app/routing/routes.dart';
import 'package:newsapp/ui/headlines/screens/headlines_screen.dart';
import 'package:newsapp/ui/home/screens/home_screen.dart';
import 'package:newsapp/ui/saved/screens/saved_screen.dart';

final pages = {
  Routes.home: (context) => const HomeScreen(),
  Routes.headlines: (context) => const HeadlinesScreen(),
  Routes.saved: (context) => const SavedScreen(),
};