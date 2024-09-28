module Jekyll
    CONTENT_URL = "https://assets.diana.lumias.cz"
  
    class ProjectsUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        "#{CONTENT_URL}/projects/#{@name}"
      end
    end
  
    class JourneysUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        "#{CONTENT_URL}/journeys/#{@name}"
      end
    end
  
    class ImagesUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        "#{CONTENT_URL}/images/#{@name}"
      end
    end

  end
  
  Liquid::Template.register_tag('projects_url', Jekyll::ProjectsUrlTag)
  Liquid::Template.register_tag('journeys_url', Jekyll::JourneysUrlTag)
  Liquid::Template.register_tag('images_url', Jekyll::ImagesUrlTag)