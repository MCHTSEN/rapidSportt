import 'dart:math';

// Konum sınıfı, enlem ve boylam içerir
class Location {
  double latitude; // Enlem
  double longitude; // Boylam

  // Konum sınıfının yapıcı metodu
  Location(this.latitude, this.longitude);
}

// Double tipine ekstra bir özellik eklemek için kullanılan genişletme sınıfı
extension DoubleExtension on double {
  // Dereceyi radyana dönüştüren metot
  double toRadians() {
    return this * (pi / 180.0);
  }
}

// İki konum arasındaki mesafeyi Haversine formülü ile hesaplayan metot
double haversineDistance(Location location1, Location location2) {
  const earthRadius = 6371; // Dünya'nın yarıçapı (km)

  final deltaLat = (location2.latitude - location1.latitude).toRadians();
  final deltaLon = (location2.longitude - location1.longitude).toRadians();

  final a = pow(sin(deltaLat / 2), 2) +
      cos(location1.latitude.toRadians()) *
          cos(location2.latitude.toRadians()) *
          pow(sin(deltaLon / 2), 2);

  final c = 2 * atan2(sqrt(a), sqrt(1 - a));

  final distance = earthRadius * c; // Haversine formülü ile mesafe hesapla

  return distance;
}

// Belirli bir merkez konum içindeki konumları bulan metot
List<Location> findLocationsWithinRadius(
    Location center, List<Location> allLocations, double radius) {
  List<Location> locationsWithinRadius = [];

  for (var location in allLocations) {
    double distance = haversineDistance(center, location);

    if (distance <= radius) {
      locationsWithinRadius.add(location);
    }
  }

  return locationsWithinRadius;
}

// Ana metot
void main() {
  // Merkez konumu
  Location centerLocation = Location(
      37.7749, -122.4194); // Örnek bir konum, gerçek koordinatlarınızı kullanın

  // Tüm konumlar
  List<Location> allLocations = [
    Location(37.7749, -122.4194), // Örnek konum 1
    Location(37.7898, -122.3894), // Örnek konum 2
    // Diğer konumlar...
  ];

  // 10 km çapındaki konumları bul
  double radius = 10; // km cinsinden
  List<Location> locationsWithinRadius =
      findLocationsWithinRadius(centerLocation, allLocations, radius);

  // Sonuçları yazdır
  print('Tüm Konumlar:');
  for (int i = 0; i < allLocations.length; i++) {
    print(
        'Lokasyon ${i + 1}: (${allLocations[i].latitude}, ${allLocations[i].longitude})');
  }

  print(
      '\nMerkez Konum: (${centerLocation.latitude}, ${centerLocation.longitude})');
  print('10 km Çapındaki Konumlar:');
  for (int i = 0; i < locationsWithinRadius.length; i++) {
    print(
        'Lokasyon ${i + 1}: (${locationsWithinRadius[i].latitude}, ${locationsWithinRadius[i].longitude})');
  }
}
