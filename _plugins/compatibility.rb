# {% pagetitle 'my title' ok ko %} => <a href="https://github.com/dandelion/issues/issues/11">Issue 11</a>
module Jekyll
  class RenderTemplateEngineCompatibilityTag < Liquid::Tag
	
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      args = @params.split("|")
#      args = @params.split(/\s+/).map(&:strip)
      
#      if(args.length != 3)
#        raise SyntaxError.new("Syntax error: wrong number of arguments. Usage: {% issue 1 %}")
#      end
      @title = args[0]
      @jspstate = args[1]
      @tlstate = args[2]
      
      "<h2 class=\"page-title\">#{@title}"
      "<div class=\"pull-right\">"
      case @jspstate
      when "ok"
        "<span data-toggle=\"tooltip\" class=\"badge badge-success\" title=\"Compatible with JSP\">JSP</span>"
      else
        "<span data-toggle=\"tooltip\" class=\"badge badge-important\" title=\"Incompatible with JSP\">JSP</span>"
      end
      
      case @tlstate
      when "ok"
        "<span data-toggle=\"tooltip\" class=\"badge badge-success\" title=\"Compatible with Thymeleaf\">Thymeleaf</span>"
      else
        "<span data-toggle=\"tooltip\" class=\"badge badge-important\" title=\"Incompatible with Thymeleaf\">Thymeleaf</span>"
      end
      
      "</div>"
      "</h2>"
      
#  <h2 class="page-title">
#     Overriding default configuration
#     <div class="pull-right">
#        <a href="#" class="compatibility" data-toggle="tooltip" title="Compatible with JSP"><span class="badge badge-success">JSP</span></a>
#        <span class="badge badge-success">JSP</span>&nbsp;<span class="badge badge-important">Thymeleaf</span>
#     </div>
#  </h2>
    end
  end
end

Liquid::Template.register_tag('pagetitle', Jekyll::RenderTemplateEngineCompatibilityTag)