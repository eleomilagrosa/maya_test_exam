extension StringExtension on String {
  String obscureText(bool obscure) => obscure ? ('*' * 9) : this;
  String get toPriceLabel => replaceAllMapped(RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'), (m) => '${m[1]},');
}