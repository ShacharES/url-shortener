#pragma once
#include <string>
#include <unordered_map>

class UrlShortener {
public:
	UrlShortener() = default;
    ~UrlShortener() = default;
    /**
     * @brief Get a shortened URL for the given long URL.
     * @param url The long URL to shorten.
     * @return The shortened URL.
     */
	std::string GetShortenUrl(const std::string& url);

    /**
     * @brief Get the original long URL from the shortened URL.
     * @param shortUrl The shortened URL to expand.
     * @return The original long URL, or an empty string if not found.
     */
	std::string GetLongUrl(const std::string& shortUrl);

private:
	std::unordered_map<std::string, std::string> longToShortMap;
	std::unordered_map<std::string, std::string> shortToLongMap;
    /**
     * @brief Generate a short URL from the given long URL.
     * @param url The long URL to shorten.
     * @return The generated short URL.
     */
	std::string GenerateShortUrl(const std::string& url);
};
