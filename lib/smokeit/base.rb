require 'net/http'

module Smokeit
  class Base
    def self.smoke!(server, res_code)
      response = Net::HTTP.get_response(URI(server))
      response.code == String(res_code)
    end
  end
end
