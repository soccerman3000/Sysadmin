class Owner < ActiveRecord::Base
  has_many :servers, :through => :ownerships
  has_many :ownerships
  attr_accessible :email, :ext, :name, :phone
end
