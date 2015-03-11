axis         = require 'axis'
rupture      = require 'rupture'
autoprefixer = require 'autoprefixer-stylus'
jeet         = require 'jeet'
js_pipeline  = require 'js-pipeline'
css_pipeline = require 'css-pipeline'
dynamic      = require 'dynamic-content'
type         = require 'typographic'

module.exports =
	ignores: ['readme.md', '_templates/**/*', '**/_*', '**/*.sublime*', '_layouts/**/*', '.gitignore', '.editorconfig', 'ship.*conf']

	extensions: [
		js_pipeline(files: 'assets/js/*.coffee'),
		css_pipeline(files: 'assets/css/*.styl'),
		dynamic()
		]

	stylus:
		use: [axis(), rupture(), type(), jeet(), autoprefixer()]
		sourcemap: true

	'coffee-script':
		sourcemap: true

	jade:
		pretty: true
		basedir: '/Users/Thiago/Sites/featuretests/'

	server:
		clean_urls: true
