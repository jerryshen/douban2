# encoding: utf-8
# test passed: 2011-11-07 15:50:40 
module Douban2
  module Interface
    
    # Users API
    # @see http://wiki.dev.renren.com/wiki/API
    class Users < Base
    
      # 获取用户的信息
      #
      # @param [Hash] opts 
      # @option opts [String] :uids   需要查询的用户的ID，多个ID用逗号隔开。当此参数为空时，返回当前用户
      #
      # @see http://wiki.dev.renren.com/wiki/Users.getInfo
      def get_info(uid)
        get "people/#{uid}?alt=json"
      end
      
    end
    
  end
end
