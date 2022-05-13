# Overview

This is a simple CRUD app displaying the results of a particular ["Wiki race"](https://www.inquirer.com/philly/living/20100721__Wikiracing__picking_up_speed_among_college_students.html).

* The homeview, displayed [at Localhost port 3000](http://localhost:3000/) by default, lists the presently stored results. As expected of a CRUD app, it has functionality for creating a new result and viewing, updating, or deleting an existing result.
* There are three other primary views, [new page](http://localhost:3000/paths/new), an edit page (e.g. for [result ID 1](http://localhost:3000/paths/1/edit)), and a basic details page (e.g. for [result ID 1](http://localhost:3000/paths/1)). 

# Set-up
1. Installation of Ruby on Rails itself is beyond the scope of this Readme.
1. Run `bundle install` from the top-level directory to install all the Gems listed in [the Gemfile](Gemfile)
1. `cd` to the [bins directory](bins/)
1. Run `db:migrate:reset` to reset the database (and tables) and (re-)create them.
1. Run `rails server`.
1. Navigate to [Localhost](http://localhost:3000/) in your browser.