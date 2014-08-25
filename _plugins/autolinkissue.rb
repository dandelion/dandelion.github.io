# {% issue 11 %} => <a href="https://github.com/dandelion/issues/issues/11">Issue 11</a>
module Jekyll
  class RenderAutoIssueLinkTag < Liquid::Tag
	
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      args = @params.split(" ").map(&:strip)

      if(args.length != 2)
        raise SyntaxError.new("Syntax error: wrong number of arguments. Usage: {% issue ddl 1 %}")
      end
      
      @module = args[0].downcase
      @issue = args[1]
      
      case @module
      when "dt"
        "<a href=\"https://github.com/dandelion/dandelion-datatables/issues/#{@issue}\">Issue #{@issue}</a>" 
      when "ddl"
        "<a href=\"https://github.com/dandelion/dandelion/issues/#{@issue}\">Issue #{@issue}</a>"
      end  
    end
  end
end

Liquid::Template.register_tag('issue', Jekyll::RenderAutoIssueLinkTag)