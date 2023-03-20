# Build a E-Shop App with PHP

This is the code repo for the multilingual E-Shop App with PHP.

## Server Requirements

- PHP version 8.0 or higher is required
- Composer version 2.5.4 or higher is required

Additionally, make sure that the following extensions are enabled in your PHP:

- json (enabled by default - don't turn it off)
- [libcurl](http://php.net/manual/en/curl.requirements.php) if you plan to use the HTTP\CURLRequest library


## Installation

- Clone the repo: `git clone https://github.com/vitalii4709/codePhp-shop.git`
- Go into the repo: `cd codePhp-shop` then `composer update`
- Create a database named `faber` to use MySQL
- Import `faber.sql` database dump into MySQL
- Set up a smpt mail server `config/params.php` if you will send email
- Start local web server 
- Visit the app: <http://faber.loc>
- Visit the app: <http://faber.loc/admin> `email: user@mail.com`, `password: 111111`
