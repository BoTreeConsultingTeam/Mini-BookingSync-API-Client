# README

It is a client app for [Mini-BookingSync API](https://github.com/BoTreeConsultingTeam/Mini-BookingSync-API)

This application handles CRUD actions for both Rentals and Bookings endpoints. It allows to creat bookings for given rental - a user can pick start at and end at dates, fill in client email, see the price for given period of time and create a booking.


#### Setup the Application

`bundle install`

`rake db:setup`

#### How to run the app

First you need to start the Mini-BookingSync API app on `4000` port.

After that run this app preferably on default port
 
`rails s`

Then hit http://localhost:3000 in browser