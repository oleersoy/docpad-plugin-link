# Export Plugin Tester
module.exports = (testers) ->
	# Define My Tester
	class MyTester extends testers.RendererTester
	# Configuration
		docpadConfig:
			enabledPlugins:
				'link': true
				'eco': true
