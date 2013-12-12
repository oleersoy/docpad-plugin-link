module.exports = (BasePlugin) ->

	class linkPlugin extends BasePlugin
		name: 'link'

		extendTemplateData: ({templateData}) ->
			docpad = @docpad

			config = {}
			config.url = docpad.getConfig().templateData.site.url

			templateData.link = (id, opts) ->

				target = docpad.getFileById(id, {collection:null})
				title = target.get?('title')
				text = title
				
				if opts?
					if opts.title?
						title = opts.title
					if opts.text?
						text = opts.text

				href = config.url + target.get?('url')
				link = "<a href='#{href}' title='#{title}'>#{text}</a>"
				return link
	
