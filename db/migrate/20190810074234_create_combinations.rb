class CreateCombinations < ActiveRecord::Migration[5.2]
  def change
    create_table :combinations do |t|
      t.references :charm, foreign_key: true
      t.references :build, foreign_key: true

      t.timestamps
    end
  end
end
