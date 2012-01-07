class User < ActiveRecord::Base
  
  has_many :articles, :order => "published_at DESC, title ASC", :dependent => :destroy
  has_one :profile
end
