class CreateTweets < ActiveRecord::Migration[6.1]
  def change
    create_table :tweets do |t|
      t.date :date
      t.string :place
      t.integer :score1
      t.integer :score2
      t.integer :score3
      t.integer :score4
      t.integer :score5
      t.integer :score6
      t.integer :score7
      t.integer :score8
      t.integer :score9
      t.integer :score10
      t.integer :score11
      t.integer :score12
      t.integer :score13
      t.integer :score14
      t.integer :score15
      t.integer :score16
      t.integer :score17
      t.integer :score18
      t.integer :scoresum
      t.text :good
      t.text :more
      t.integer :selfevaluation


      t.timestamps
    end
  end
end
