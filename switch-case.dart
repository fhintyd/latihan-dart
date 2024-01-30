void main() {
  int dayNumber = DateTime.now().weekday;
  print("dayNumber = $dayNumber");
  String dayName = "Hari ini hari ";
  switch (dayNumber) {
    case 1:
      dayName += "Senin";
      break;
    case 2:
      dayName += "Selasa";
      break;
    case 3:
      dayName += "Rabu";
      break;
    case 4:
      dayName += "Kamis";
      break;
    case 5:
      dayName += "Jum'at";
      break;
    case 6:
      dayName += "Sabtu";
      break;
    case 7:
      dayName += "Minggu";
      break;
    default:
      dayName += "apa ya?";
      break;
  }
  print(dayName);
}
