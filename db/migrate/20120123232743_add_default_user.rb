class AddDefaultUser < ActiveRecord::Migration
  def self.up
    if !User.find_by_login('eshuler')
      User.create(:login => 'eshuler', :email => 'eshuler@mac.com',
      :password => '72gcvcda', :password_confirmation => '72gcvcda')
    end
  end

  def self.down
  end
end
