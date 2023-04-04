String getEverythingNewsApiUrl() {
  const newsApiKey = '265bda5c11644626a447093d3c903289';
  const baseUrl = 'https://newsapi.org/';
  const path = 'v2/everything';
  const query = '?domains=wsj.com&apiKey=$newsApiKey';
  const apiUrl = '$baseUrl$path$query';
  return apiUrl;
}
