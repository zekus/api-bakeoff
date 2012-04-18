require 'pipejump'

class Basecrm
  def initialize( task )
    @session = Pipejump::Session.new(:token => '14JtEKvNQk3EZzApDXKi')

    @reminder = @session.contacts.find(task[:contact_id]).reminders.create(:content => task[:name])
  end
end
