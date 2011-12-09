class Customer < ActiveRecord::Base
  has_many :links, :dependent => :destroy
  has_and_belongs_to_many :domains
end
