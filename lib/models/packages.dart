class Package {
  Package({
    required this.title,
    required this.noTests,
    required this.expense,
  });

  final String title;
  final int noTests;
  final listTests = [];
  final double expense;
}
