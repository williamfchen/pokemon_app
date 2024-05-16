<!-- Shields -->
![](https://img.shields.io/badge/Rails-5.2.4-informational?style=flat&logo=<LOGO_NAME>&logoColor=white&color=2bbc8a)
![](https://img.shields.io/badge/Ruby-2.5.3-orange)

# Pokémon App

- You can find a video walkthrough for setting up the initial API call [here](https://www.youtube.com/watch?v=NXg3oE5JMm0&pbjreload=101)
- You can find a video walkthrough for exposing an endpoint [here](https://www.youtube.com/watch?v=BkY1fWEFmYg&t=536s)


## Table of Contents
  - [What it does](#what-it-does)
  - [How to Install](#how-to-install)
  - [Dependencies](#dependencies)
  - [Learning Goals](#learning-goals)
  - [Licenses](#licenses)
  - [Contact](#contact)
  
## What it does

> This app allows the user to create a team of up to 6 different Pokemon using a search funtion through the Pokémon API.

* Fork and clone this repository. Run bundle install.

* We will be consuming this [Pokémon API.](https://pokeapi.co/) 

* Download [Postman](https://www.postman.com/downloads/) here. We will be using Postman to call our API.

## How to Install

For usage on your local machine follow the instructions listed below:

```
git clone git@github.com:SageOfCode/pokemon_app.git
cd pokemon_app
bundle install
rake db:{create,migrate}
firgaro install
rails server
visit localhost:3000 in your web browser
```

## Dependencies

* This app uses Rails version `6.1.4`

* We use the [Faraday Gem](https://github.com/lostisland/faraday) to make calls to our API service.

* We use the [Figaro Gem](https://github.com/laserlemon/figaro) to keep confidential information like API keys secure.

* The [SimpleCov](https://github.com/simplecov-ruby/simplecov) gem was used to ensure that we covered 100% of our code with unit testing. 

- Docker - [Working with Docker](https://www.digitalocean.com/community/tutorials/containerizing-a-ruby-on-rails-application-for-development-with-docker-compose)

## Using Docker

```bash
# Start the containers using Docker compose
docker-compose build
docker-compose run app rails db:create db:migrate
docker-compose up
```

## Learning Goals

  * Consume external APIs

  * Refactor code for better code for improved organization/readability

  * Utilize workflow: small commits, descriptive pull requests and code review

  * Write thorough and understandable documentation

## Licenses

  * Ruby 3.2.2
  * Rails 6.1.4

## Possible Iterations
  * Add CSS to improve UI
  * Add edit funtionality to teams
  * Add delete option to Pokemon on teams
  * Add Pokemon customization i.e. levels, skills, gender
  * Add happy and sad pathing
  
## Contact
    
#### Sage Freeman-Gonzales: [![LinkedIn][linkedin-shield]](https://www.linkedin.com/in/sagefreemangonzales/)  [Email](mailto:sagegonzales15@gmail.com), [GitHub](https://github.com/SageOfCode)

<!-- MARKDOWN LINKS -->
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
