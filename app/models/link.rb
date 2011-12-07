class Link < ActiveRecord::Base
  validates :status, :inclusion => {:in =>  [0,1,2]}, :presence => true
  validates :pauth, :inclusion => {:in =>  0..100}, :presence => true
  validates :dauth, :inclusion => {:in =>  0..100}, :presence => true
  validates :url, :presence => true
  
  
  
  belongs_to :domain
end


class MyValidator < ActiveModel::Validator
  def validate(link)
    unless link.url.starts_with? 'http://'
      record.errors[:url] << 'please enter a valid URL!'
    end
  end
end