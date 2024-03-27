class Trade {
  late int time;
  late int trades;
  late String date;
  late String mood;
  late bool isMissed;
  late double amount;
  late String percentage;

  Trade({
    required this.date,
    required this.mood,
    required this.time,
    required this.amount,
    required this.trades,
    required this.isMissed,
    required this.percentage,
  });
}
