module Jekyll
  class RenderReferenceLinkThymeleafTag < Liquid::Tag
	
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      
      args = @params.split(" ").map(&:strip)
      
      if args.length == 2
        @reftag = args[0].downcase
        @refparam = args[1]
        "<a href=\"/datatables/ref/thymeleaf/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
      else 
        if args.length == 1
          @reftag = args[0].downcase
          "<a href=\"/datatables/ref/thymeleaf/#{@reftag}.html\"><code>datatables:#{@reftag}</code></a>"
        end
      end
    end
  end
end

Liquid::Template.register_tag('reftl', Jekyll::RenderReferenceLinkThymeleafTag)