import 'package:intl/intl.dart';

String convertedCurrentTime() {
  String convTime = DateFormat("EEEE, d MMMM").format(DateTime.now());
  return convTime;
}