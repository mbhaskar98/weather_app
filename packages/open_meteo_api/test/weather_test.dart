import 'package:open_meteo_api/src/models/models.dart';
import 'package:test/test.dart';

void main() {
  group('Weather', () {
    group('fromJson', () {
      test("returns correct Weather object", () {
        expect(
          Weather.fromJson({'temperature': 1, 'weathercode': 2}),
          isA<Weather>()
              .having((w) => w.temperature, 'temperature', 1)
              .having((w) => w.weatherCode, 'weathercode', 2),
        );
      });
    });
  });
}
