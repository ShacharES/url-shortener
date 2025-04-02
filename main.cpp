#include <iostream>
#include "crow.h"
#include "UrlShortener.hpp"

int main()
{
    crow::SimpleApp app;

    UrlShortener urlShortener;

    CROW_ROUTE(app, "/to-short")
        ([&urlShortener](const crow::request& req) {
        auto longUrl = req.url_params.get("url");
        if (!longUrl) {
            return crow::response(400, "Missing long_url parameter");
        }

        std::string shortUrl = urlShortener.GetShortenUrl(longUrl);
        return crow::response{ shortUrl };
            });

    CROW_ROUTE(app, "/to-long")
        ([&urlShortener](const crow::request& req) {
        auto shortUrl = req.url_params.get("url");
        if (!shortUrl) {
            return crow::response(400, "Missing short_url parameter");
        }

        std::string longUrl = urlShortener.GetLongUrl(shortUrl);
        return crow::response{ longUrl };
            });


    app.port(18080).multithreaded().run();


}