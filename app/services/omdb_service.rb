require 'omdb/api'

class OmdbService
    def initialize()              
        @client = Omdb::Api::Client.new(api_key: '7086c3d6')
    end

    def find_by_title(params)
        result = @client.find_by_title(params[:title])
    end
end
