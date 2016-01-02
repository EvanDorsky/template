all: html js css

index.html: jade/index.jade
	jade jade/index.jade -o .

html: index.html

js/bundle.js: js/main.js
	browserify js/main.js > js/bundle.js

js: js/bundle.js

stylesheets/style.css: stylus/style.styl
	stylus stylus/style.styl -o stylesheets

css: stylesheets/style.css