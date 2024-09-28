require 'net/http'
require 'uri'

def check_exist(url)
  uri = URI.parse(url)
  request = Net::HTTP.new(uri.host, uri.port)
  request.use_ssl = (uri.scheme == "https")
  
  response = request.request_head(uri.path) # Only request the header, not the full content
  
  # Return true if the response is 200 OK
  # assert response.code.to_i == 200
  raise StandardError.new(url) unless response.code.to_i == 200
  return url
end


module Jekyll
    CONTENT_URL = "https://assets.diana.lumias.cz"

    class ProjectsUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        check_exist("#{CONTENT_URL}/projects/#{@name}")
      end
    end
  
    class JourneysUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        check_exist("#{CONTENT_URL}/journeys/#{@name}")
      end
    end
  
    class ImagesUrlTag < Liquid::Tag
      def initialize(tag_name, name, tokens)
        super
        @name = name.strip
      end
  
      def render(context)
        check_exist("#{CONTENT_URL}/images/#{@name}")
      end
    end

  end
  
  Liquid::Template.register_tag('projects_url', Jekyll::ProjectsUrlTag)
  Liquid::Template.register_tag('journeys_url', Jekyll::JourneysUrlTag)
  Liquid::Template.register_tag('images_url', Jekyll::ImagesUrlTag)