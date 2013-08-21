# {% issue 11 %} => <a href="https://github.com/dandelion/issues/issues/11">Issue 11</a>
module Jekyll
  class CodeBlock < Liquid::Block
	
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      render_google_prettify(context, super)
      
      #"<pre class=\"prettyprint\">"
      #"</pre>"
    end
    
    def render_google_prettify(context, code)
        #The div is required because RDiscount has serious issues
        puts code
        #<<-HTML
		"<pre class=\"prettyprint\">"
		code | strip_html
		"</pre>"
        #HTML
      end
  end
end

Liquid::Template.register_tag('code', Jekyll::CodeBlock)