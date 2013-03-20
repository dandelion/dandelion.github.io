module Jekyll
  class RenderReferenceLinkTag < Liquid::Tag

    def initialize(tag_name, params, tokens)
      super
      args = params.split(" ").map(&:strip)
      @templateEngine = args[0].downcase
      @location = args[1].downcase
      @parameter = args[2].downcase
    end

    def render(context)
      "<a href=\"/datatables/ref/#{@templateEngine}/#{@location}.html##{@parameter}\"><code>#{@parameter}</code></a>"
    end
  end
end

Liquid::Template.register_tag('ref', Jekyll::RenderReferenceLinkTag)