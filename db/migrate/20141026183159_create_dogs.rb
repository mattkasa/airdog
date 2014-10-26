class CreateDogs < ActiveRecord::Migration
  def change
    create_table :dogs do |t|
      t.string :name
      t.date :birthday
      t.string :gender
      t.references :human, index: true

      t.timestamps
    end
  end
end
