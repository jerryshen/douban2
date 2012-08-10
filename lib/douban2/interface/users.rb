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
      # @option opts [String] :fields 返回的字段列表，可以指定返回那些字段，用逗号分隔
      #
      # @see http://wiki.dev.renren.com/wiki/Users.getInfo
      def get_info(opts={})
        get 'people/@me', :body => opts
      end
      
    end
    
  end
end
