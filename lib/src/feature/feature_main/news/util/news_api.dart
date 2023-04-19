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

// https://newsapi.org/v2/top-headlines?country=hk&apiKey=265bda5c11644626a447093d3c903289