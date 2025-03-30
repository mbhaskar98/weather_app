import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:mocktail/mocktail.dart';

class MockStorage extends Mock implements Storage {}

var hydratedStorage = MockStorage();

Future<void> initHydratedStorage() async {
  // final hydratedStorage = MockStorage();
  when(() => hydratedStorage.write(any(), any())).thenAnswer((_) async {});
  when(() => hydratedStorage.read(any())).thenReturn(null);  // Mock reading
  when(() => hydratedStorage.delete(any())).thenAnswer((_) async {}); // Mock deletion
  when(() => hydratedStorage.clear()).thenAnswer((_) async {}); // Mock clearing

  HydratedBloc.storage = hydratedStorage;
}