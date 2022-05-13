![ESPN_PLUS_UFC_PPV_274 background](https://user-images.githubusercontent.com/50967799/166836134-d1c1111a-84c8-4743-a062-44c2a1207a7f.jpg)
# UFC-Prediction Web Application

Predict the winner and method of victory for upcoming UFC fights!
Check results and compare scores with your friends.

### Technologies
* Ruby 3.1
* Rails 7
* Bootstrap
* SQLite
  * Embedded database

## Deployment

Follow these easy steps to install and start the app:

* Clone Repository
  * If using Windows OS: ```git clone https://github.com/Artin-Mirzayans/UFC-Prediction --config core.autocrlf=input```

* Install Docker & Docker Compose

### Start & Seed Rails app

Navigate to cloned repo on your local machine:

```docker-compose up```
  
### Docker-compose up functionality

 * Create an Image from Dockerfile
 * Run Image in a container
 * Start Server
     * Run Migrations
     * Populate database with seed data
 * Container will expose on port:3000 & port forward to local machine port:3000
  

### Open App

You can find the app now by pointing your browser to [http://localhost:3000](http://localhost:3000).

### Close App

If you plan to stop the running container and wish to run it again in the future, make sure to run:

```docker-compose down```

** Keep in mind that each instance will only hold seed data and any data added/removed IN THAT INSTANCE!

## User Guide

### Login Info

#### Admin
* E-mail: admin@gmail.com

* Password: admin


#### Users
* E-mail: ["bob@gmail.com", "noah@gmail.com", "nick@gmail.com", "jerry@gmail.com", "tom@gmail.com", "charles@gmail.com"]

* Password (for all users): ["a"]

## User Features
Guest users can only view "about" page & search user's scores

#### Sign-Up Page
* Create new account with e-mail/password
  * E-mail field validation/password confirmation
* Passwords encrypted with bcrypt library
  
#### Log-in Page
* Login with existing credentials

#### Change Password
* Click e-mail address on navbar to be directed to "Edit Password" page

#### Home Page
* View current prediction score
* View upcoming events

#### Navbar Drop Down Menus
* View UFC events individually based on status ("Upcoming", "In-Progress", "Concluded")
 * Upcoming: Fights have not started yet
 * In-Progress: Fights are on-going
 * Concluded: Fights have concluded

#### Individual Event Show Page
* Show information about selected event
* Predict/modify prediction
  * If event is In-Progress or Concluded, prediction will be rejected
  
* If event has concluded, underline the winning fighter's name

#### Cast Prediction

* Predict the winner and method of fight end.
  * Main event & co-main event fights only
  
* Predict "winner":
  * Choose the fighter that you believe wins the bout
  
* Predict "method of fight end":
  * Choose which way you believe the fight will end
    *  TKO/KO - Technical Knockout/Knockout
    *  Submission - Fight end via submission hold (choke/joint manipulation)
    *  Decision - Fight goes full distance 3/5 5 minute rounds and judges score a winner

* Save and display user's selection
    
* Can only predict fights that are upcoming!

#### Modify Prediction

* Modify existing prediction and display new prediction
* Can only modify fights that are upcoming!

#### Search bar

* Search for prediction scores of other users

## Admin Features

#### Individual Event Show Page -- Change Status of Event
* Display Status drop-down bar on invidual event show page
* Ability to change event status 

#### Add Event
* Display "Add Event" button in navbar
* Add Event Page
  * Create Upcoming event

#### Close Event
* Display "Close Event" button in navbar
* Close Event Page
  * Select from In-Progress events
  * Submit actual result of selected event
    * Event will have status changed to "Concluded"
    * All predictions cast on event will be evaluated (true/false)
    * Predictions will be scored and assigned to users

## More information

* [Ruby Docs](https://ruby-doc.org/)
* [Rails Docs](https://guides.rubyonrails.org/)
* [Docker Docs](https://docs.docker.com/)
* [Docker-Compose Docs](https://docs.docker.com/compose/)
* [Bootstrap](https://getbootstrap.com/docs/5.1/getting-started/introduction/)
* [UFC](https://www.ufc.com/)
