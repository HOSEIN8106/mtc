class Utils {
  static String replaceDashToNull(String? value) {
    try {
      return value == null || value == "" || value == "null" ? "-" : value;
    } catch (e) {
      return "-";
    }
  }
}
