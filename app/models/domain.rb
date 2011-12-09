class Domain < ActiveRecord::Base
validates :url, :uniqueness => true, :presence => true
  
has_many :links, :dependent => :destroy

end
