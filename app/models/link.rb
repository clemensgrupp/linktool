class Link < ActiveRecord::Base
  belongs_to :domain
  belongs_to :customer


  validates :status, :inclusion => {:in =>  [0,1,2]}, :presence => true
  validates :pauth, :inclusion => {:in =>  0..100}, :presence => true
  validates :dauth, :inclusion => {:in =>  0..100}, :presence => true
  validates :url, :presence => true
  
  
end


