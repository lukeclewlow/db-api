class AddGenreIdToSubgenres < ActiveRecord::Migration
  def change
    add_reference :subgenres, :genre, index: true
    add_foreign_key :subgenres, :genres
  end
end
