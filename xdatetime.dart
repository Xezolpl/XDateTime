extension XDateTime on DateTime {
  ///Returns date as String in format dd.MM.yyyy - hh:mm
  String toDateHourMinuteFormat() {
    String day = this.day < 10 ? '0${this.day}' : '${this.day}';
    String month = this.month < 10 ? '0${this.month}' : '${this.month}';
    String year = '${this.year}';

    String hour = this.hour < 10 ? '0${this.hour}' : '${this.hour}';
    String minute = this.minute < 10 ? '0${this.minute}' : '${this.minute}';
    return day + '.' + month + '.' + year + ' - ' + hour + ':' + minute;
  }

  /// Returns date as String in format dd.MM.yyyy
  String toDayMonthYearFormat() {
    String day = this.day < 10 ? '0${this.day}' : '${this.day}';
    String month = this.month < 10 ? '0${this.month}' : '${this.month}';
    String year = '${this.year}';

    return day + '.' + month + '.' + year;
  }

  /// Returns true if day, month and year are equal
  bool isAtSameDate(DateTime date) {
    return this.day == date.day &&
        this.month == date.month &&
        this.year == date.year;
  }

  bool isYesterday() {
    return this.isAtSameDate(DateTime.now().subtract(Duration(days: 1)));
  }

  bool isToday() {
    return this.isAtSameDate(DateTime.now());
  }

  bool isTomorrow() {
    return this.isAtSameDate(DateTime.now().add(Duration(days: 1)));
  }

  String printAdverbOfTimeOrDate() {
    if (this.isYesterday())
      return 'Yesterday';
    else if (this.isToday())
      return 'Today';
    else if (this.isTomorrow()) return 'Tomorrow';
    return this.toDayMonthYearFormat();
  }
}
