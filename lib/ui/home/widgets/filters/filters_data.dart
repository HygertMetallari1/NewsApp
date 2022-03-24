class FiltersData {
  FiltersData._();
  static final  _instance = FiltersData._();
  factory FiltersData () {
    return _instance;
  }

  String _orderBy = "";
  String _fromDate = "";
  String _toDate = "";

  void setOrderByFilter(String orderBy) {
    _orderBy = orderBy;
  }

  String get orderBy{
    return _orderBy;
  }

  void setFromDate(String fromDate) {
    _fromDate = fromDate;
  }

  String get fromDate {
    return _fromDate;
  }

  void setToDate(String toDate) {
    _toDate = toDate;
  }

  String get toDate {
    return _toDate;
  }
}
