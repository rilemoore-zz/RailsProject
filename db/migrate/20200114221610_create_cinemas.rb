class CreateCinemas < ActiveRecord::Migration[6.0]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.integer :num_theatres

      t.timestamps
    end
  end
end
