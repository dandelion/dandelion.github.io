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
        # Link a configuration
        when 4
          @confType = args[2]
          @confName = args[3]
                   
          "<a href=\"/datatables/docs/ref/configuration/##{@confType}-#{@confName}\"><code>#{@confName}</code></a>" 
        # Link an attribute of a tag
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/datatables/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        # Link to a tag
        when 2
          @reftag = args[1].downcase
          "<a href=\"/datatables/docs/ref/jsp/#{@reftag}.html\"><code>&lt;datatables:#{@reftag}&gt;</code></a>"
        end
      
      when "ddl"
        
        case args.length
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/dandelion/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        when 2
          @reftag = args[1].downcase
          "<a href=\"/dandelion/docs/ref/jsp/#{@reftag}.html\"><code>&lt;dandelion:#{@reftag}&gt;</code></a>"
        end
      
      when "wa"
        
        case args.length
        when 3
          @reftag = args[1].downcase
          @refparam = args[2]
          "<a href=\"/webanalytics/docs/ref/jsp/#{@reftag}.html##{@refparam}\"><code>#{@refparam}</code></a>"
        when 2
          @reftag = args[1].downcase
          "<a href=\"/webanalytics/docs/ref/jsp/#{@reftag}.html\"><code>&lt;webanalytics:#{@reftag}&gt;</code></a>"
        end
      end
    end
  end
end

Liquid::Template.register_tag('refjsp', Jekyll::RenderReferenceLinkJspTag)