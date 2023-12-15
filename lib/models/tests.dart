class Test{
  const Test( {
    required this.id,
    required this.title,
    required this.noTests,
    required this.delay,
    required this.oldExpense,
    required this.newExpense,
  });

  final String id;
  final String title;
  final int noTests;
  final int delay;
  final int oldExpense;
  final int newExpense;
}