import 'package:open_meteo_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('Location', () {
    group('fromJson', () {
      test("returns correct Location object", () {
        expect(
          Location.fromJson({
            'id': 123,
            'name': 'some_name',
            'latitude': 10,
            'longitude': 20,
          }),
          isA<Location>()
              .having((w) => w.id, 'id', 123)
              .having((w) => w.name, 'name', 'some_name')
              .having((w) => w.latitude, 'latitude', 10)
              .having((w) => w.longitude, 'longitude', 20),
        );
      });
    });
  });
}
