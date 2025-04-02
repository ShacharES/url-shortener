#include <gtest/gtest.h>
#include "UrlShortener.hpp"

TEST(UrlShortenerTest, ShortenUrl) {
    UrlShortener urlShortener;
    std::string longUrl = "https://www.example.com/some/long/url";
    std::string shortUrl = urlShortener.GetShortenUrl(longUrl);

    EXPECT_NE(shortUrl, longUrl);
}

TEST(UrlShortenerTest, LongUrl) {
    UrlShortener urlShortener;
    std::string longUrl = "https://www.example.com/some/long/url";
    std::string shortUrl = urlShortener.GetShortenUrl(longUrl);
    std::string retrievedLongUrl = urlShortener.GetLongUrl(shortUrl);

    EXPECT_EQ(retrievedLongUrl, longUrl);
}

TEST(UrlShortenerTest, InvalidShortUrl) {
    UrlShortener urlShortener;
    std::string invalidShortUrl = "short.url/123456";
    std::string retrievedLongUrl = urlShortener.GetLongUrl(invalidShortUrl);

    EXPECT_EQ(retrievedLongUrl, "");
}

TEST(UrlShortenerTest, DuplicateShortenUrl) {
    UrlShortener urlShortener;
    std::string longUrl1 = "https://www.example.com/some/long/url1";
    std::string longUrl2 = "https://www.example.com/some/long/url2";

    std::string shortUrl1 = urlShortener.GetShortenUrl(longUrl1);
    std::string shortUrl2 = urlShortener.GetShortenUrl(longUrl2);

    EXPECT_NE(shortUrl1, shortUrl2);
}

TEST(UrlShortenerTest, SameLongUrl) {
    UrlShortener urlShortener;
    std::string longUrl = "https://www.example.com/some/long/url";

    std::string shortUrl1 = urlShortener.GetShortenUrl(longUrl);
    std::string shortUrl2 = urlShortener.GetShortenUrl(longUrl);

    EXPECT_EQ(shortUrl1, shortUrl2);
}

int main(int argc, char **argv) {
    ::testing::InitGoogleTest(&argc, argv);
    return RUN_ALL_TESTS();
}