# {% javadoc dt datatables-core AbstractExtension %} => <a href="/datatables/releases/0.8.14/javadoc/datatables-core/com/github/dandelion/datatables/core/extension/AbstractExtension.html"><code>AbstractExtension</code></a>

require 'find'

module Jekyll
  class AutoLinkJavadocTag < Liquid::Tag
  
    def initialize(tag_name, params, tokens)
      super
      @params = params
      @conf = Jekyll.configuration({})
    end

    def render(context)
      
      args = @params.split(" ").map(&:strip)
#      version = @conf['dandelion']['components']['datatables']['version']
      version = '0.8.14' # version en dur car la 0.9.0 n'est pas encore publiee
      project = args[1].downcase
      clazz = args[2]
      
      @module = args[0].downcase
      case @module
      when "dt"

        foundPath = nil
        @searchPath = './datatables/releases/' + version + '/javadoc/' + project + '/'
        Find.find(@searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            foundPath = path[1, path.length]
            break
          end
        end
      
        "<a href=\"#{foundPath}\"><code>#{clazz}</code></a>"
      
      when "ddl"
        
        foundPath = nil
        @searchPath = './dandelion/releases/' + version + '/javadoc/' + project + '/'
        Find.find(@searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            foundPath = path[1, path.length]
            break
          end
        end
        
        "<a href=\"#{foundPath}\"><code>#{clazz}</code></a>"
        
      when "wa"
        
        foundPath = nil
        @searchPath = './webanalytics/releases/' + version + '/javadoc/' + project + '/'
        Find.find(@searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            foundPath = path[1, path.length]
            break
          end
        end
        
        "<a href=\"#{foundPath}\"><code>#{clazz}</code></a>"
        
      end
    end
  end
end

Liquid::Template.register_tag('javadoc', Jekyll::AutoLinkJavadocTag)