# encoding: utf-8
# test passed: 2011-11-06 15:22:49 
module Douban2
  module Interface
    
    # Friends Interface
    #
    # @see http://wiki.dev.renren.com/wiki/API
    class Friends < Base
    

      
      # 得到当前登录用户的好友列表，得到的只是含有好友uid的列表
      #
      # @param [Hash] opts 
      # @option opts [int] :page  分页，默认为1
      # @option opts [int] :count 返回每页个数，默认为500
      #
      def gets(uid)
        get "people/#{uid}/friends?alt=json"
      end
      
    end
  end
end

