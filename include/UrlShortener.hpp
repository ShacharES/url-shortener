#pragma once
#include <string>
#include <unordered_map>

class UrlShortener {
public:
	UrlShortener() = default;
    ~UrlShortener() = default;
	std::string GetShortenUrl(const std::string& url);
	std::string GetLongUrl(const std::string& shortUrl);

private:
	std::unordered_map<std::string, std::string> longToShortMap;
	std::unordered_map<std::string, std::string> shortToLongMap;
	std::string GenerateShortUrl(const std::string& url);
};
