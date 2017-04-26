# Laravel PHP Framework

[![Build Status](https://travis-ci.org/laravel/framework.svg)](https://travis-ci.org/laravel/framework)
[![Total Downloads](https://poser.pugx.org/laravel/framework/d/total.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Stable Version](https://poser.pugx.org/laravel/framework/v/stable.svg)](https://packagist.org/packages/laravel/framework)
[![Latest Unstable Version](https://poser.pugx.org/laravel/framework/v/unstable.svg)](https://packagist.org/packages/laravel/framework)
[![License](https://poser.pugx.org/laravel/framework/license.svg)](https://packagist.org/packages/laravel/framework)

Laravel is a web application framework with expressive, elegant syntax. We believe development must be an enjoyable, creative experience to be truly fulfilling. Laravel attempts to take the pain out of development by easing common tasks used in the majority of web projects, such as authentication, routing, sessions, queueing, and caching.

Laravel is accessible, yet powerful, providing tools needed for large, robust applications. A superb inversion of control container, expressive migration system, and tightly integrated unit testing support give you the tools you need to build any application with which you are tasked.

## How to start app Laravel Product Quality

First you must have local server environment and composer. You can find them on internet, it is free. I use WAMP, but you can use what ever you want, depend of your OS.
Open Command Prompt/Terminal and go to your  Web server root directory. For WAMP it is c:\wamp\www.

Enter in Command Prompt/Terminal

git clone https://github.com/denisdzafo/Laravel-Product-Quality.git

This will clone project to your web server root directory under name "Laravel-Product-Quality". If you want different name
then just after link put name of project you want to name it.

After that in Command Prompt/Terminal go in to cloned project and then enter command

composer update

In your administration tool of database create new database. After that import sql file "database.sql" in created database.

Last thing to do is configure  env file. Rename file ".env.example" to ".env".
You must enter name of your database that you create, your username and password for your administration tool of database

DB_DATABASE=

DB_USERNAME=

DB_PASSWORD=

After that in web browser enter

localhost/name_of_project/public

---

If you have some questions send email [denisdzafo@gmail.com](Mailto:denisdzafo@gmail.com)
