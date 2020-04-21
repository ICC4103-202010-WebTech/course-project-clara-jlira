# README

Team:

* Cristobal Lara
* Jose Lira

Explanations:

13. Explain what should happen model-wise if an event is deleted and guests have already cast
votes. Explain how your model layer is well-behaved in this scenario.

* If an event is deleted its votes would be deleted as well, because votes are dependent from event, given that the 
event model has the next code:  has_many :eventdates, dependent: :destroy this code makes the events date model 
dependent from event and the Eventdate model has this code, has_many :votes, dependent: :destroy making votes dependent 
from the eventdate model.

14. Explain what should happen model-wise if an organization is deleted and events have been
already created within the organization. Explain how your model layer is well-behaved in this
scenario.

* Given the time, we wont implement a dependecy of organization on events.

15. Explain what should happen model-wise if a user is deleted and the user has already created
organizations, events and/or comments. Explain how your model layer is well-behaved in this
scenario.

* If a user is deleted its comments and events would be deleted as well, because comments and events are dependent from user, given that the 
user model has the next code:  has_many :comments has_many, dependent: :destroy / :events, dependent: :destroy this code makes the comments and events models
dependent from user. But organizations wouldnt be destroid, because an organization is not dependent from users.





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
