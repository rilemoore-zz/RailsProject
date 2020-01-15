class CreateCinemas < ActiveRecord::Migration
    def change
      create_table :theatres do |t|
        t.integer :capacity
        t.belongs_to :cinema, index: true, foreign_key: true
        t.belongs_to :movie, index: true, foreign_key: true
        t.timestamps null: false
      end
    end
  end