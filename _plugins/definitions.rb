# {% def dt main.compressor.class desc %}
module Jekyll
  class RenderAttributeDefinitionTag < Liquid::Tag
    
    # Store for all definitions
    @@ddl_definitions = Hash.new
    @@dt_definitions = Hash.new
    @@wa_definitions = Hash.new
    
    def initialize(tag_name, params, tokens)
      super
      @params = params
      @args = params.split(" ").map(&:strip)
      @module = @args[0].downcase
    end

    def render(context)
      config = context.registers[:site].config
      case @module
        when "ddl"
          path = config['source'] + "/dandelion/_definitions.html"
          if File.exists?(path)
            File.open(path, "r").each_line do |line|
              @@ddl_definitions[line.split("==")[0]] = line.split("==")[1]
            end
          end
        
        when "dt"
          path = config['source'] + "/datatables/_definitions.html"
          if File.exists?(path)
            File.open(path, "r").each_line do |line|
              tmpLine = Liquid::Template.parse(line)
              tmpLine2 = tmpLine.render
              @@dt_definitions[line.split("==")[0]] = tmpLine2.split("==")[1]
            end
          end 
        
        when "wa"
          path = config['source'] + "/webanalytics/_definitions.html"
          if File.exists?(path)
            File.open(path, "r").each_line do |line|
              @@wa_definitions[line.split("==")[0]] = line.split("==")[1]
            end
          end     
      end
            
      case @args.length
        when 2
          key = @args[1]
          property = 'desc' # description by default
        when 3  
          key = @args[1]
          property = @args[2]
        else
          raise FatalException.new("Invalid argument number")
      end
      
      case @module
        when "ddl" 
          @@ddl_definitions[key + "#" + property]
            
        when "dt" 
          @@dt_definitions[key + "#" + property]

        when "wa" 
          @@wa_definitions[key + "#" + property]
      end
    end
  end
end

Liquid::Template.register_tag('def', Jekyll::RenderAttributeDefinitionTag)