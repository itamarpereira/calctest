class CreateSolids < ActiveRecord::Migration[7.1]
  def change
    create_table :solids do |t|
      t.string :gender
      t.float :dose
      t.integer :exposure

      t.timestamps
    end
  end
end
