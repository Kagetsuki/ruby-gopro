require 'httparty'

class GoPro
  class Hero
    include HTTParty
    base_uri '10.5.5.9'

    # You'll send my hex codes raw and you'll FUCKING LIKE IT!
    query_string_normalizer proc { |query|
        query.map do |key, value|
            "#{key}=#{value}"
        end.join('&')
    }

    def initialize(pass_token = nil)
      @token = pass_token
      _auto_detect
      _init_conn
    end

    def req(system, function, mode)
      self.class.get("/#{system}/#{function}", query: {t: @token, p: mode}).code
    end

    private

    def _auto_detect
    end

    def _init_conn
    end
  end
end
