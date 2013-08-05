# {% issue 11 %} => <a href="https://github.com/dandelion/issues/issues/11">Issue 11</a>
module Jekyll
  class RenderAutoIssueLinkTag < Liquid::Tag
	
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      args = @params.split(" ").map(&:strip)
      if(args.length > 1)
        raise SyntaxError.new("Syntax error: wrong number of arguments. Usage: {% issue 1 %}")
      end
      @refparam = args[0]
      "<a href=\"https://github.com/dandelion/issues/issues/#{@refparam}\">Issue #{@refparam}</a>"
    end
  end
end

Liquid::Template.register_tag('issue', Jekyll::RenderAutoIssueLinkTag)