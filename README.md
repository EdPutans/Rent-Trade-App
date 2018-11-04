# README

2nd module project in Flatiron School London By Edgar Putans and Adrian Navarette.

Online house swapping app built using Ruby on Rails 5.1.2 with the addition of gems and 3rd party sources like Devise and Carousel. 
CSS styling includes elements of Bootstrap and Semantic UI, but mostly based on a CSS template provided by W3School.

Google app functionality on #Show route pages will not function without a working API key which needs to be pasted in the api_key.rb file in the config folder. It should contain the Google API key in the current format:

``` KEY = { key: "google_key" ```

To try out the app:
1. ```Bundle install ```
2. Run ``` rake db:migrate ```
3. ```rails db:seed```
4. ```rails s```

Go to http://localhost:3000/listings to try out the application.

The description of the principle can be found in the about page:

Further improvements may include the ability to add pictures from the device as opposed to a web link.

----About page----
<p>Moving houses can be very stressful especially when you need to do it on short notice. If you think about it, when you are about to start renting a new place, you are very likely to end up in a place that somebody rented previously.<br><br>

Rent Trader is a service that addresses exactly that. Our web application allows you to switch places with a person that might be interested in moving to exactly your area. After registering you are able to see the listings and their location, current tenant and landlord contact information.<br><br>

The "Postcodes of interest" is a place where you specify the postcodes where you would be interested in moving to.<br><br>

You are welcome to browse listings or search by keywords, however our patent-pending "Recommended" page allows you to see the listings that are located in your postcodes of interest, so you are able to skip all the house offers that do not meet the criteria.<br><br>

You can also save listings to favourites if you would like to return back to them later.<br><br>

We hope that our web page will be the reason for your next move towards a better life.<br></p>
