class AddManurfacturerRefToToys < ActiveRecord::Migration[6.0]
  def change
    add_reference :toys, :manurfacturer, foreign_key: true
  end
end
