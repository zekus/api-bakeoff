class Task < ActiveRecord::Base
  attr_accessible :name

  after_save :pushbase

  def pushbase
    Basecrm.new(:name => name)
  end
end
