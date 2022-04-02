import 'package:newsapp/app/routing/routes.dart';
import 'package:newsapp/ui/home/screens/home_screen.dart';
import 'package:newsapp/ui/saved/screens/saved_screen.dart';
import 'package:newsapp/ui/sections/screens/sections_screen.dart';


final pages = {
  Routes.home: (context) => const HomeScreen(),
  Routes.headlines: (context) => const SectionsScreen(),
  Routes.saved: (context) => const SavedScreen(),
};