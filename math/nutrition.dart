// Beslenme Programı Algoritması

class UserInfo {
  int age;
  String gender;
  double weight;
  double height;

  UserInfo(
      {required this.age,
      required this.gender,
      required this.weight,
      required this.height});
}

class NutritionFunc {
  double calculateBMR(UserInfo userInfo) {
    // Mifflin-St Jeor denklemi
    double bmr = (userInfo.gender == 'male')
        ? 10 * userInfo.weight + 6.25 * userInfo.height - 5 * userInfo.age + 5
        : 10 * userInfo.weight +
            6.25 * userInfo.height -
            5 * userInfo.age -
            161;

    return bmr;
  }

  double calculateDailyCalories(double bmr, ActivityLevel activityLevel) {
    // Aktivite seviyesine göre enerji ihtiyacını hesapla
    switch (activityLevel) {
      case ActivityLevel.sedentary:
        return bmr * 1.2;
      case ActivityLevel.lightlyActive:
        return bmr * 1.375;
      case ActivityLevel.moderatelyActive:
        return bmr * 1.55;
      case ActivityLevel.veryActive:
        return bmr * 1.725;
      default:
        return bmr;
    }
  }

  NutritionRecommendation generateNutritionRecommendation(double dailyCalories,
      double proteinRatio, double carbsRatio, double fatRatio) {
    // Günlük kalori ihtiyacına göre protein, karbonhidrat ve yağ miktarlarını hesapla
    double protein = (proteinRatio / 100) * dailyCalories / 4;
    double carbohydrates = (carbsRatio / 100) * dailyCalories / 4;
    double fat = (fatRatio / 100) * dailyCalories / 9;

    return NutritionRecommendation(
        protein: protein, carbohydrates: carbohydrates, fat: fat);
  }
}

enum ActivityLevel { sedentary, lightlyActive, moderatelyActive, veryActive }

class NutritionRecommendation {
  double protein;
  double carbohydrates;
  double fat;

  NutritionRecommendation(
      {required this.protein, required this.carbohydrates, required this.fat});
}
