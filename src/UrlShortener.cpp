#include "UrlShortener.hpp"

std::string UrlShortener::GetShortenUrl(const std::string& url)
{
    std::lock_guard<std::mutex> lock(m_mutex);
    if (longToShortMap.find(url) != longToShortMap.end()) {
        return longToShortMap[url];
    }

    std::string shortUrl = GenerateShortUrl(url);

    longToShortMap[url] = shortUrl;
    shortToLongMap[shortUrl] = url;

    return shortUrl;
}

std::string UrlShortener::GetLongUrl(const std::string& shortUrl)
{
    std::lock_guard<std::mutex> lock(m_mutex);
    if (shortToLongMap.find(shortUrl) != shortToLongMap.end()) {
        return shortToLongMap[shortUrl];
    }

    return "";
}

std::string UrlShortener::GenerateShortUrl(const std::string& url)
{
    std::hash<std::string> hasher;
    size_t hash = hasher(url);
    std::string shortUrl = "short.url/" + std::to_string(hash % 1000000);

    return shortUrl;
}