# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


Pendiente con Heroku:
heroku config:set email=tuemail@gmail.com
heroku config:set email_password=tupasswords

en production.rb
config.action_mailer.default_url_options = { :host
=> 'cryptic-meadow-23931.herokuapp.com' }