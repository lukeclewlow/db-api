class CreateTunes < ActiveRecord::Migration
  def change
    create_table :tunes do |t|
      t.string :artist
      t.string :title
      t.string :blog

      t.timestamps null: false
    end
  end
end
