class ApiConstants {
  static const String baseUrl = 'https://api.thedogapi.com/v1';
  static const String apiKey =
      'live_xLRdsNy15jXv9HuFONuEu0wQDi40nds84sTvbBy3fZyLbnrCo0wgNwRCUCELjM2h';

  static String get getBreeds => '$baseUrl/breeds?api_key=$apiKey';
}
