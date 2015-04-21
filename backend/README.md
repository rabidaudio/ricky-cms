Backend API
===========

Built around [jsonapi-resources](https://github.com/cerebris/jsonapi-resources), a new but lovely
little way to build JSON apis declaritively. 

See https://github.com/cerebris/peeps for an example (basically, this example happens to be a simple version
of **exactly** what we're building here).


### Why a separate backend and frontend?

Rails has some nice things going for it (mostly ActiveRecord and migrations). In short, the M and C layers kick ass.
The V layer and all of Rails' shitty assets business drives me nuts. Also, if you want to eventually build a mobile app,
you're going to have to build the JSON api anyway, and then you'll be mixing api code into your webapp and then you're
headed straight for a migrane. 

Applications these days are mostly in the views. So why don't you put all your logic in the view layer? There are a
whole bunch of front-end frameworks for this (Angular, Backbone, React, Polymer, Ember, etc etc etc) so take your pick.

Bonus: since the interface between your backend and frontend has been reduced to JSON (ultimately just text data), you can
test these two parts completely independantly of each other!