![mobble](http://cloud.scott.ee/images/mobble.png)

# Development

* Status: ✔ In Development
* Contributors: [@randychampagne](http://twitter.com/randychampagne)
* Description: This repo holds the development environment for this project
* Author: [Randy Champagne](http://www.randychampagne.com)
* Author URI: [http://www.randychampagne.com](http://www.randychampagne.com)
* License: GNU General Public License v3.0
* License URI: [http://www.gnu.org/licenses/gpl-3.0.html](http://www.gnu.org/licenses/gpl-3.0.html)




## About Us

**[Involved Community Engagement Network](http://icenetworktv.github.io/)**

ICE Network is a startup in Atlantic City. We are launching a television network that produces wholesome, uplifting and educational programming. It is also a platform for social entrepreneurship and community activism in the greater South Jersey area.




### Setup

- make sure [node.js](http://nodejs.org) and [roots](http://roots.cx) are installed
- clone this repo down and `cd` into the folder
- run `npm install`
- run `roots watch`




#### optional confgurations to app.cofee

- add this config to 'app.cofee' to enable clean urls
```
  server:
    clean_urls: true
```
- add this config to create project global varibales that can be accessed in any template file
```
 locals:
    developer: 'Randy Champagne'
```
- you can use locals in a jade template like so
```
p this project was developped by #[span= developer]
```
- don't forget to add production 'locals' to 'app.production.cofee'




#### using SASS for css pre-processing

- install accord and node-sass to [enable SASS compilation](https://github.com/jenius/accord/issues/108) ```npm install --save accord node-sass```
- import accord and node-sass in dev and prod app manifest 
```
accord = require 'accord'
sass   = accord.load 'node-sass'
```
- On line 14, change the line that says ```css_pipeline(files: 'assets/css/*.styl')``` to ```css_pipeline(files: 'assets/css/*.scss')```
- At the end of the file tab in once and add the final lines of code:
```
	sass:
		pretty: true
```
- Change `.styl` files with .scss files. Delete all the files in the `assets/css` directory of your project. Create a new file in `assets/css` named `master.scss`. This file is where you will start creating your sass files.
- Use `.scss` file extension instead of `.sass` for all sass files




#### using a browserify-babel js pipeline

- install [roots-browserify](https://github.com/carrot/roots-browserify) module `npm install roots-browserify babelify --save`
- import modules into app.cofee 
```
browserify = require 'roots-browserify'
babelify   = require 'babelify'
```
- add extension configuration
```
    browserify
      files: 'assets/js/main.coffee'
      sourceMap: true
      transform: babelify
      out: 'js/build.js'
```




### Deployment

- If you just want to compile the production build, run `roots compile -e production` and it will build to public.
- To deploy your site with a single command, run `roots deploy -to XXX` with `XXX` being whichever [ship](https://github.com/carrot/ship#usage) deployer you want to use.




## Changelog

###0.1.0
* Configured CMS backend + Continuous Integration

###0.0.1
* Initial development.