axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
css_pipeline = require 'css-pipeline'
browserify   = require 'roots-browserify'
babelify     = require 'babelify'
wordpress    = require 'roots-wordpress'


module.exports =
  ignores: [
    'README.md', 
    'ROADMAP.md', 
    'LICENSE', 
    'bower*', 
    'bower_components/**', 
    'views/includes/**', 
    '**/layout.*', 
    '**/_*', 
    '.gitignore', 
    'ship.*conf',
    '**/*.jpg_orig.jpg',
    '.DS_Store'
  ]

  extensions: [
    css_pipeline(files: 'assets/css/*.styl')
    browserify
      files: 'assets/js/main.es6'
      sourceMap: true
      transform: babelify
      out: 'js/main.js'
    wordpress
      site: 'my-wordpress-site.com'
      post_types:
        post: { template: 'views/_single_post.jade' }
  ]


  jade:
    pretty: true
