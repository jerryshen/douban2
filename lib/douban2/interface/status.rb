module Douban2
  module Interface
    
    # Status API
    #
    # @see http://wiki.dev.renren.com/wiki/API
    class Status < Base
      
      def set(opts={})
        post 'statuses', :body => { :text =>  opts[:text]}
      end
      
    end
    
  end
end
