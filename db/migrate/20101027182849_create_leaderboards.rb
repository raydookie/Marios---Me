class CreateLeaderboards < ActiveRecord::Migration
  def self.up
    create_table :leaderboards do |t|
      t.string :status
      t.string :complete
      t.integer :votes
      t.string :first_name
      t.string :last_name
      t.string :title

      t.timestamps
    end
  end

  def self.down
    drop_table :leaderboards
  end
end
