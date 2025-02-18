void main() {
  String gdStr = "Guten";
  String dayStr = "Tag";
  String worldStr = "Welt";
  String timeStr = "Zeit";
  String dd = "!";
  String c = "Schöne";
  String morning = "Morgen";
  String s = "Heute";
  String spa = " ";
  int d = 20;
  int seven = 7;
  int twelve = 12;
  int a = 24;

  String goodDay = gdStr + spa + dayStr;
  print(goodDay);

  String goodDayWorld = goodDay + spa + worldStr;
  print(goodDayWorld);

  twelve = 11;
  int result31 = d + twelve;
  print(result31);

  String goodTime = c + spa + timeStr;
  print(goodTime);

  String todayMorning = s + spa + morning;
  print(todayMorning);

  int five = 5;
  int thirteen = 13;
  int result168 = (result31 * five) + thirteen;
  print(result168);
}
