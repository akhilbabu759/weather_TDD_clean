// import 'package:clean_weather/domain/entities/weather.dart';
// import 'package:clean_weather/domain/usecases/get_current_weather.dart';
// import 'package:dartz/dartz.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mocktail/mocktail.dart';

// import '../../helpers/test_helper.mocks.dart';

// void main() {
//   late GetCurrentWeatherUsecase getCurrentWeatherUsecase;
//   late MockWeatherRepository mockWeatherRepository;

//   // Set up the test environment before each test.
//   setUp(() {
//     mockWeatherRepository = MockWeatherRepository();
//     getCurrentWeatherUsecase = GetCurrentWeatherUsecase(mockWeatherRepository);
//   });

//   // Define the test data.
//   final testWeatherDetails = WeatherEntity(
//     cityName: 'New York',
//     main: 'Clouds',
//     description: 'few clouds',
//     iconcode: '02d',
//     temperature: '302.29',
//     pressure: '1009',
//     humidity: '70',
//   );

//   const testCityName = 'New York';

//   test('should get current weather detail from the repository', () async {
//     // Stub the mockWeatherRepository to return Right(testWeatherDetails).
//     when(() => mockWeatherRepository.getCurrentWeather(testCityName))
//         .thenAnswer((_) async => Right(testWeatherDetails));

//     // Execute the use case and capture the result.
//     final result = await getCurrentWeatherUsecase.execute(testCityName);

//     // Assert that the result matches the expected Right(testWeatherDetails).
//     expect(result, Right(testWeatherDetails));
//   });
// }
