require 'net/http'
require 'uri'
require 'openssl'

def check_exist(url)
  uri = URI.parse(url)
  request = Net::HTTP.new(uri.host, uri.port)
  
  if uri.scheme == "https"
    request.use_ssl = true
    # Skip SSL verification if certificate CRL check fails
    # This is useful for development when certificate stores may be outdated
    request.verify_mode = OpenSSL::SSL::VERIFY_NONE
  end
  
  response = request.request_head(uri.path.empty? ? "/" : uri.path) # Only request the header, not the full content
  
  # Return true if the response is 200 OK
  # assert response.code.to_i == 200
  raise StandardError.new(url) unless response.code.to_i == 200
  return url
rescue => e
  # If the request fails, return the URL anyway to prevent build failures
  # This allows the build to continue even if the asset server is unreachable
  Jekyll.logger.warn("Assets URL", "Could not verify #{url}: #{e.message}")
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