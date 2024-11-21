import 'package:dio/dio.dart';
import 'package:intl/intl.dart';

extension StringExtension on String {
  String obscureText(bool obscure) => obscure ? ('*' * 9) : this;
  String get toPriceLabel => replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},');
}

extension CustomDioResponseExtensions on Response {
  bool get isSuccess => (statusCode ?? 0) >= 200 && (statusCode ?? 0) <= 299;
}

extension CustomDateTimeConverter on DateTime {
  bool isSameDay(DateTime other) {
    return year == other.year && month == other.month && day == other.day;
  }
  String toTimeString() =>
      DateFormat("hh:mm a").format(this);

  String toMonthDayString() =>
      DateFormat("MMM dd, yyyy").format(this);
}