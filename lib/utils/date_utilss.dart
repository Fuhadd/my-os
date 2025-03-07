class DateUtil {
  static DateTime parseDate(date) {
    try {
      return DateTime.fromMicrosecondsSinceEpoch(int.parse(date));
    } catch (e) {
      return DateTime.parse(date);
    }
  }
}
