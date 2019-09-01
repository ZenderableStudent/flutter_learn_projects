import 'package:clima/services/location.dart';
import 'package:clima/services/networking.dart';

const apiKey = 'a0a2988cef22666db909e78d9969a825';
const openWeatherMapURL = 'http://api.openweathermap.org/data/2.5/weather';

class WeatherModel {
  Future<dynamic> getCityWeather(String cityName) async {
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?q=$cityName&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  Future<dynamic> getLocationWeather() async {
    Location location = Location();
    await location.getCurrentLocation();
    NetworkHelper networkHelper = NetworkHelper(
        '$openWeatherMapURL?lat=${location.latitude}&lon=${location.longitude}&appid=$apiKey&units=metric');

    var weatherData = await networkHelper.getData();
    return weatherData;
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(int temp) {
    if (temp > 25) {
      return 'Rusz dupę i idź zjeść 🍦';
    } else if (temp > 20) {
      return 'Pogoda nawet ładna 👕 ale wkrótce się spierdoli';
    } else if (temp < 10) {
      return 'Zimno w chuj. Możesz potrzebować 🧣 i 🧤';
    } else {
      return 'Na chuj te chmury się w czyste niebo wpierdalają? Weź 🧥 w razie czego...';
    }
  }
}
