require 'pipejump'

class Task
  attr_accessor :name

  def initialize ( name )
    @name = name
  end

  def self.contact_id
    return '4889876'
  end

  def self.all
    initsession
    reminders = []
    @session.contacts.find(contact_id).reminders.each do |reminder|
      reminders << self.new(reminder.content)
    end
    reminders
  end

  def save
    self.class.initsession
    @session.contacts.find(self.class.contact_id).reminders.create(:content => name)
  end

  def self.initsession(token = nil)
    token ||= '14JtEKvNQk3EZzApDXKi'
    @session ||= Pipejump::Session.new(:token => token)
  end
end
