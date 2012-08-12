This is a template for Sinatra apps on Heroku as I like to set them up.

* Copy over these files
* Check if the `Gemfile` is to your liking

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

## TODO

* Script to set this up and ask things like:
  * Use Slim/templates?
  * Use caching?
