#include <iostream>
#include "crow.h"
#include "UrlShortener.hpp"

int main()
{
    crow::SimpleApp app;

    CROW_ROUTE(app, "/shorten/<string>")
    ([](const crow::request& req, const std::string& word) {
        return crow::response{"hlowrld"};
    });

    CROW_ROUTE(app, "/long/<string>")
    ([](const crow::request& req, const std::string& word) {
        return crow::response{"Hello World"};
    });

    app.port(18080).multithreaded().run();


}