# encoding: utf-8
module Douban2
  module Interface
    
    # Status API
    #
    # @see http://wiki.dev.renren.com/wiki/API
    class Status < Base
      
      def set(opts={})
        post 'shuo/statuses/', :body => { :text =>  opts[:status] }
      end
      
    end
    
  end
end
