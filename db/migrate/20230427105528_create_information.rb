class CreateInformation < ActiveRecord::Migration[7.0]
  def change
    create_table :information do |t|
      t.string :name
      t.integer :age
      t.integer :number
      t.timestamps
    end
  end
end
