This is a template for Sinatra apps on Heroku as I like to set them up.

* Copy over these files
* Check if the `Gemfile` is to your liking
* Run some of this:

```
bundle
heroku create myapp

# Caching
heroku addons:add memcache

# Add a domain with a CNAME pointing to myapp.herokuapp.com.
open https://customerzone.loopia.se/

# Configure Heroku to prefer that domain.
heroku domains:add myapp.nyh.name
heroku config:set CANONICAL_HOST=myapp.nyh.name
```

* Remove or change this README.


## TODO

* Airbrake
* New Relic
* Script to set this up and ask things like:
  * Which custom domain?
  * Use Slim/templates?
  * Use caching?
