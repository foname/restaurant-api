# restaurant-api

This application is a simple ruby app to provide RESTful APIs relationship between restaurants and dishes.

## Ruby version
`2.3.6`

## System dependencies
Gems that I added for testing
- factory_bot_rails
- shoulda-matchers
- faker
- database_cleaner


## Database creation
This system uses `sqlite3` as db engine. There are three tables which are restaurant, dish and restaurant_dish. The restaurant and dish tables have many-to-many relationship. 
To generate db schema simple run following script:
`rails db:migrate`


## Database initialization
The 5 restaurants and 10 dishes will be created after running this command:
`rake db:seed`

## How to run the test suite
`bundle exec rspec`

## How to use
run command
`rails s`
and available endpoint URL
- GET  /api/restaurants/:restaurant_id/dishes
- GET  /api/restaurants/:restaurant_id/dishes/:id
- GET  /api/restaurants
- GET  /api/restaurants/:id
- GET  /api/dishes/:dish_id/restaurants
- GET  /api/dishes/:dish_id/restaurants/:id
- GET  /api/dishes
- GET  /api/dishes/:id

Example of restponse
```
Request:	http://localhost:3000/api/restaurants/1
Response:	{
			    "restaurants": [
			        {
			            "id": 1,
			            "name": "Thai Restaurant"
			        }
			    ]
			}
```
```
Request: 	http://localhost:3000/api/restaurants/1/dishes
Respose:	{
			    "dishes": [
			        {
			            "id": 1,
			            "name": "Tom Yum"
			        },
			        {
			            "id": 2,
			            "name": "Green Curry"
			        },
			        {
			            "id": 3,
			            "name": "Pad Thai"
			        }
			    ]
			}
```
```
Request: 	http://localhost:3000/api/dishes/10/restaurants
Response:	{
			    "restaurants": [
			        {
			            "id": 3,
			            "name": "Tasty cafe"
			        },
			        {
			            "id": 4,
			            "name": "Pizza Plaza"
			        }
			    ]
			}
```
```
Request:	http://localhost:3000/api/dishes/100
Response:	{
			    "message": "Couldn't find Dish with 'id'=100"
			}
```

