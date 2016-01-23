
module.exports = config:
	
	files:
		javascripts:
			joinTo:
				'js/app.js': /^app[\/\\]/
				'js/lib.js': /^bower_components[\/\\]/
		stylesheets:
			joinTo:
				'css/app.css': /^app[\/\\]/
				'css/lib.css': /^bower_components[\/\\]/
		templates:
			joinTo:
				'js/templates.js': /^app[\/\\]templates[\/\\]/
	
	plugins:
		jadePages:
			pattern: /^app[\/\\]pages[\/\\].*\.jade$/
			destination: (path) ->
				path.replace /^app[\/\\]pages[\/\\](.*)\.jade$/, "$1.html"

	server:
		run: yes
		port: 8888