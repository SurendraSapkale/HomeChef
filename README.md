#### The Application:

Visit App : https://homefood1app.herokuapp.com/

GitHub Repo : https://github.com/SurendraSapkale/HomeChef

#### The Problem

The patrons are bored with having the same menu from the restaurant by paying expensive price and having unhealthy daily consumption. There is a need to have some platform where Home Cooked food should be available. Also for a person who is missing the taste of home food being away from home. I think there is a need to have a platform where home-cooked food can be made available. The food prepared by home-chefs, freelancer chefs and passionate foodies. This platform will also give the option of experience of hosting guests and feeding them their favorite food.



#### The Solution

Unlike many other restaurant food ordering platforms – the home-chefs are curated, and the menu features home-style cooking methods that’s fresh, wholesome and customizable. Customers will have the freedom to choose any home chefs as per their preferences like menu, cuisine, suburb, etc.  Its great opportunity for the passionate homechef or freelancers to showcase their skill on a larger platform where people can access his food and give opportunity to create more for WOW experience .



#### App Description:

#### Purpose

HomeChef provides a range of services to enable a successful home food based business. At HomeChef housewives, home makers, cooking enthusiasts and professional chefs - can start their restaurant online, and earn from home. It also gives them a web platform to showcase their creative and tasty food.  This business opportunity costs a fraction of starting a restaurant, building a website, or even taking a stall at events.

The customers such as working individuals, professional or family don't have a time to simply cook the food in their kitchen or may be depend on expensive and unreliable house help. So HomeChef gives them the platform to order home cooked food from their choice of home chefs with the option of variety of international cuisine for their food. 



#### Functionallity/Features

HomeChef is a two way marketplace place app. Its allows any user to see available menu dishes, they can set their profile to place the order on display dishes from different homechefs. To become a HomeChef user have to login and create homechef profile and then display his variety of dishes to be sold.  Both buyer and homechef are able to place the order.

Features:

- Homechef is the cloud base marketplace app
- Buyer and chef can create account with the same profile log in credentials
- Chef can create his profile with cusine speciality and suburb location by filling up new chef profile form
- Chef can also upload image to their profile
- Chef can create dishes with Create, View, Edit and delete and upload the picture
- Chef can create multiple dishes under his chef id
- Authentication and Authorization is setup on every major action
- Buyer can place order of multiple dishes from different chefs 
- All images are stores on Amazon S3 platform



#### Sitemap

![HomeChefSiteMap](/docs/HomeChefSiteMap.jpg)

#### Screenshots

![homepage](/docs/screenshot/homepage.jpg)

![userprofileform](/docs/screenshot/userprofileform.jpg)





![chefprofileform](/docs/screenshot/chefprofileform.jpg)

![chefprofile1](/docs/screenshot/chefprofile1.jpg)

![cheflisting](/docs/screenshot/cheflisting.jpg)

![newdishform](/docs/screenshot/newdishform.jpg)

![dish](/docs/screenshot/dish.jpg)

![dish1](/docs/screenshot/dish1.jpg)

![dishlisting](/docs/screenshot/dishlisting.jpg)

![dishlisting1](/docs/screenshot/dishlisting1.jpg)

![orderstatus](/docs/screenshot/orderstatus.jpg)

#### Target Audience

HomeChef is two way marketplace app, where different customers and homechefs are potential users

**HomeChefs:** They can simply focus on their passion of cooking great food and offer to surrounding customers

**Customers**: Those who are looking for home cooked food which is healthy and preservative free, in their near by suburbs 



#### Tech Stack

| Technologies   |                                         |
| -------------- | --------------------------------------- |
| Front-End      | HTML, CSS, Sass,  Bootstrap, Javascript |
| Back-End       | Ruby On Rails,  Postgresql              |
| Active Storage | Amazon S3                               |
| Deployment     | Heroku, Github                          |
| Tools          | LucidChart, Trello                      |

#### User Stories

There are two types of user involved in this APP

**1. HomeChef :**

- User click on log in button 
- If user is not registered then he has to create chef profile, he can directly click on "Become a Chef" tab and can fill the form for become a HomeChef.
- HomeChefs can create multiple ulimited dishes as he wants and can upload dish pictures.
- Homechef profile will get his chef profile id
- Each of his dishes will have respective dish id's
- Homechef can view other chefs dishes and place order for them

2. **Customer:**

- Custpmer click on log in button
- If he is not regeisterd user then he redirected to sign up page
- After sign up, he has to create profile
- Customer can view any homechef's profile and that respective chefs dishes
- Customer can view curated dish listing on show menu page.
- Customer can decide to order dish from his favourite chef or from dish listing 
- After successful order, customer can logout



#### Wireframe

![Homepage](/docs/wireframe/Homepage.png)

![login - Copy](/docs/wireframe/login - Copy.png)

![signup](/docs/wireframe/signup.png)

![chef_profile_form](/docs/wireframe/chef_profile_form.png)

![create_dish](/docs/wireframe/create_dish.png)

![dish_listing](/docs/wireframe/dish_listing.png)



#### ERD

![ERD](/docs/ERD.png)

#### High-Level Components

This Marketplace application was build by using Rails MCV architecture and Postgresql database.

Devise gem has been used to set-up CRUD operation, so user can crate, view, edit and delete their profile and their listed products. Main two users Homechefs and Customer connected to the Dish listing through the model. 

Devise gem also allow to setup authentication and authorisation on every users log in activity and place order of dish.

Simple form gem has been used to create, to register the profiles for customers and chefs.

Scaffold method used to create the profile, chef profile and dishes, which belong to each other with has_one or has_many relationships and used same CRUD operations.

For secure and free active storage i have used Amazon S3 platform where users can upload their profile photographs and also chefs can upload their all dishes pictures.



####  Third party services

**AWS:** Amazon S3 platform has been used to upload secure and free store images from user profiles and dish listing on cloud database

**Heroku**:  Heroku is a cloud platform that lets developer deliver and monitor apps and which also enables to deploy the app via connecting the github.

**Github**: GitHub has a repository platform that allows developer to save their code, it also allows for version control and collaboration. It lets individual developer or the team to work together on projects from anywhere.



#### Project model in terms of relationships

A user is created who has profile as buyer and chef_profile as a seller. Dishes has its own table and only can be created if the user is registered as chef_profile. This simple app has complex application with many models as below:

**User Model:**

- has_one :profile 
- has_one :chef_profile 

The user has one profile and also chef has one profile

This model also control user authentication

**Seller Model:**

- belongs_to :chef_profile
- has_many :dishes
- has_many :buyers_sellers
- has_and_belongs_to_many :buyers

Seller belongs to chef profile, because chef is creating dishes and selling as seller

Seller has many dishes 

**Profile Model:**

- belongs_to :user
- has_one :buyer

**Dish Model:**

- belongs_to :seller
- belongs_to :chef_profile
- has_one_attached :picture
- has_many :orders

**Chef_profile Model:**

-  belongs_to :user
-  has_one :seller
-  has_many :dish
-  has_one_attached :picture

**Buyer_seller Model:**

-  belongs_to :buyer
-  belongs_to :seller

**Buyer Model:**

- belongs_to :profile
- has_many :dishes
- has_many :buyers_sellers
- has_and_belongs_to_many :sellers
- has_many :orders



#### Database relationship

Database relationship represents the Entity Relationship Diagram, which shows the connection between the different entity. The which created to store the data as below

**User Table;**

Two different user table has been created as profile and chef_profile. The table hold the below data in respective profile setup.

**Profile:**

- User Id
- first_name
- last_name
- email
- contact_number
- street_address
- suburb
- state
- postcode
- your_food_prefernce
- user_id

All the user in this profile are consider as customer. after creating account they can see all the chefs profile and dish listing and can place order

**Chef_profile:**

- Chef_Profile Id
- first_name
- last_name
- email
- contact_number
- street_address
- suburb
- state
- postcode
- cooking_speciality
- cooking_capacity
- food_pick_up_timings
- picture
- user_id

All the users in this profile are homechefs, they can upload their profile photo in profile summary. All chef profile will be considered as seller, hence they are creating the dish. After creating chef profile they can create the dish by using CRUD method. and they can list the dish to order purpose. All the images will be store in AWS platform.

**Dish_listing:**

- dish_listing id
- dish_name
- description
- cuisine
- special_dietary_details
- price
- preparation_time
- picture
- preparation_time
- picture
- sellers_id
- chef_profile_id

This table belongs to seller and seller belongs to chef profile. In this table chef can create the dish and put under the listing.

#### Allocation of Task 

Trello Board Link : https://trello.com/b/x9oYT6e8/home-chef

![trello1](/docs/trello1.jpg)

![trello2](/docs/trello2.jpg)






