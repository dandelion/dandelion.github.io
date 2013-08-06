module Jekyll
  class RenderReferenceLinkJspTag < Liquid::Tag
  
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      
      args = @params.split(" ").map(&:strip)
            
      @module = args[0].downcase
      case @module
      when "dt"
        
        case args.length
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/datatables/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        when 2
          @reftag = args[1].downcase
          "<a href=\"/datatables/docs/ref/jsp/#{@reftag}.html\"><code>datatables:#{@reftag}</code></a>"
        end
      
      when "ddl"
        
        case args.length
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/dandelion/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        when 2
          @reftag = args[1].downcase
          "<a href=\"/dandelion/docs/ref/jsp/#{@reftag}.html\"><code>dandelion:#{@reftag}</code></a>"
        end
      
      when "wa"
        
        case args.length
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/webanalytics/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        when 2
          @reftag = args[1].downcase
          "<a href=\"/webanalytics/docs/ref/jsp/#{@reftag}.html\"><code>webanalytics:#{@reftag}</code></a>"
        end
      end
    end
  end
end

Liquid::Template.register_tag('refjsp', Jekyll::RenderReferenceLinkJspTag)