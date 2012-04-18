class Task < ActiveRecord::Base
  attr_accessible :name

  validate :name, :presence => true

  after_save :pushbase

  def pushbase
    Basecrm.new(:name => name, :contact_id => '4889876')
  end
end
