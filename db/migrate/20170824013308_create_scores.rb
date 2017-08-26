class CreateScores < ActiveRecord::Migration[5.1]
  def change
    create_table :scores do |t|
      t.string :title
      t.string :artist
      t.string :score_jpg

      t.timestamps
    end
  end
end
