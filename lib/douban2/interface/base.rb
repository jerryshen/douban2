module Douban2
  module Interface
  
    # The Base class of API
    class Base
      def initialize(client)
        @client = client
      end
      
      def check_scope(scope_name)
        unless @client.include_scope? scope_name
          raise "You haven't got the scope " + scope_name
        end
      end
      
      def request(verb, path, opts={}, &block)
        unless @client.is_authorized?
          raise "I can't find a valid access_token. Forgot to get it or expired?"
        end

        begin
          opts.merge!(:alt => :json)
          response = @client.token.request(verb, path, opts, &block)
        rescue Exception => e
          e.message
        end
        # raise Error.new(response) if response.error
        response
      end
      
      def get(path, opts={}, &block)
        request(:get, path, opts, &block)
      end
      
      def post(path, opts={}, &block)
        request(:post, path, opts, &block)
      end
      
    end
    
  end
end
