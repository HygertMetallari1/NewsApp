
import 'package:bloc/bloc.dart';
part 'tab_state.dart';

class TabCubit extends Cubit<TabState> {
  List<String> route = const [
    "/home",
    "/headlines",
    "/saved"
  ];

  TabCubit() : super (TabState(selectedTab: "/home"));
  int _selectedIndex = 0;

  void _setSelectedIndex (int selectedIndex) {
    _selectedIndex = selectedIndex;
  }

  int get selectedIndex{
    return _selectedIndex;
  }

  setSelectedTabIndex(int tabIndex) {
    _setSelectedIndex(tabIndex);
    emit(TabState(selectedTab: route[tabIndex]));
  }
}