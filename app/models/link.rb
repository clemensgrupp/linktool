class Link < ActiveRecord::Base
  validate :status, :inclusion => {:in =>  [0,1,2]}, :presence => true
  validate :pauth, :inclusion => {:in =>  0..100}, :presence => true
  validate :dauth, :inclusion => {:in =>  0..100}, :presence => true
  
end
