String getEverythingNewsApiUrl() {
  const newsApiKey = '265bda5c11644626a447093d3c903289';
  const baseUrl = 'https://newsapi.org/';
  const path = 'v2/everything';
  const query = '?domains=wsj.com&apiKey=$newsApiKey';
  const apiUrl = '$baseUrl$path$query';
  return apiUrl;
}

String getTopHeadlinesNewsApiUrl() {
  const newsApiKey = '265bda5c11644626a447093d3c903289';
  const baseUrl = 'https://newsapi.org/';
  const path = 'v2/top-headlines';
  const query = '?country=hk&apiKey=$newsApiKey';
  const apiUrl = '$baseUrl$path$query';
  return apiUrl;
}

String getWeatherApiUrl() {
  const String apikey = '6adf5f68bbaf49afba4151550232504';
  const String baseUrl = 'https://api.weatherapi.com/';
  const String path = 'v1/current.json';
  const String query = '?key=$apikey&q=HongKong&aqi=no';
  const String url = '$baseUrl$path$query';
  return url;
  // https://api.weatherapi.com/v1/current.json?key=6adf5f68bbaf49afba4151550232504&q=HongKong&aqi=no
}
