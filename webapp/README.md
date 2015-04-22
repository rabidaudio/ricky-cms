Here's a decent little setup for a frontend framework.

- Jade, SASS, Coffeescript

- Backbone but with the ability to use Web Components as Backbone views

- Handlebars templates

- Bower, Gulp, Mocha+chai

- All compiled together with browserify, making the scripts super elegant


    browserify -t coffeeify --extension=".coffee" -t hbsfy --extension=".hbs" scripts/main.coffee

    gulp #build, serve, watch
    gulp clean:all
    NODE_ENV=production gulp build