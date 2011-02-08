class CreateEvents < ActiveRecord::Migration
  def self.up
    create_table :events do |t|
      t.date :evdate
      t.text :evhostreg
      t.text :evname
      t.text :evtype
      t.text :evtrack
      t.text :evchief

      t.timestamps
    end
  end

  def self.down
    drop_table :events
  end
end
