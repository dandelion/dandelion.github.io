# {% javadoc dt datatables-core AbstractExtension %} => <a href="/datatables/releases/0.8.14/javadoc/datatables-core/com/github/dandelion/datatables/core/extension/AbstractExtension.html"><code>AbstractExtension</code></a>

require 'find'

module Jekyll
  class AutoLinkJavadocTag < Liquid::Tag
  
    def initialize(tag_name, params, tokens)
      super
      @params = params
    end

    def render(context)
      
      config = context.registers[:site].config
      args = @params.split(" ").map(&:strip)
      project = args[1].downcase
      clazz = args[2]
      
      @module = args[0].downcase
      case @module
      when "dt"

        version = '0.8.14' #version = config['dandelion']['components']['datatables']['version']
        sources = config['dandelion']['components']['datatables']['sources']
          
        version2 = '0.8.14-11' # a supprimer au passage a la 0.9.0, par contre, il ne faut pas se chier dans la creation des tags
        javadocPath = nil
        sourcePath = nil
        searchPath = './datatables/releases/' + version + '/javadoc/' + project + '/'
        reg = searchPath[1, searchPath.length]
        
        Find.find(searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            javadocPath = path[1, path.length]
            sourcePath = javadocPath.gsub(/#{Regexp.escape(reg)}/, "https://github.com/dandelion/" + sources + "/blob/" + sources + "-" + version2 + "/" + project + "/src/main/java/").gsub(/\.html/, '.java')
            break
          end
        end
        
        "<code>#{clazz} <a title=\"Source\" href=\"#{sourcePath}\"><i class=\"icon-github\"></i></a> <a title=\"Javadoc\" href=\"#{javadocPath}\"><i class=\"icon-book\"></i></a></code>"
      
      when "ddl"
        
        version = config['dandelion']['components']['core']['version']
        sources = config['dandelion']['components']['core']['sources']
  
        javadocPath = nil
        sourcePath = nil
        searchPath = './dandelion/releases/' + version + '/javadoc/' + project + '/'
        reg = searchPath[1, searchPath.length]
        
        Find.find(@searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            javadocPath = path[1, path.length]
            sourcePath = javadocPath.gsub(/#{Regexp.escape(reg)}/, "https://github.com/dandelion/" + sources + "/blob/" + sources + "-" + version + "/" + project + "/src/main/java/").gsub(/\.html/, '.java')
            break
          end
        end
        
        "<code>#{clazz} <a title=\"Source\" href=\"#{sourcePath}\"><i class=\"icon-github\"></i></a> <a title=\"Javadoc\" href=\"#{javadocPath}\"><i class=\"icon-book\"></i></a></code>"
        
      when "wa"
        
        version = config['dandelion']['components']['webanalytics']['version']
        sources = config['dandelion']['components']['webanalytics']['sources']
        
        javadocPath = nil
        sourcePath = nil
        searchPath = './webanalytics/releases/' + version + '/javadoc/' + project + '/'
        reg = searchPath[1, searchPath.length]
        
        Find.find(@searchPath) do |path|
          if !path.include? 'class-use' and path.include? clazz
            javadocPath = path[1, path.length]
            sourcePath = javadocPath.gsub(/#{Regexp.escape(reg)}/, "https://github.com/dandelion/" + sources + "/blob/" + sources + "-" + version + "/" + project + "/src/main/java/").gsub(/\.html/, '.java')
            break
          end
        end
        
        "<code>#{clazz} <a title=\"Source\" href=\"#{sourcePath}\"><i class=\"icon-github\"></i></a> <a title=\"Javadoc\" href=\"#{javadocPath}\"><i class=\"icon-book\"></i></a></code>"
        
      end
    end
  end
end

Liquid::Template.register_tag('javadoc', Jekyll::AutoLinkJavadocTag)