class AddToyRefToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :toy, foreign_key: true
  end
end
