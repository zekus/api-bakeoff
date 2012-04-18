class Task < ActiveRecord::Base
  attr_accessible :name

  validate :name, :presence => true

  def save
    Basecrm.new(:name => name, :contact_id => '4889876')
  end
end
