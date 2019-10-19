class CreateDataSets < ActiveRecord::Migration[6.0]
  def change
    create_table :data_sets do |t|
      t.string :name
      t.text :description
      t.references :data_set_source, null: false, foreign_key: true
      t.decimal :confidence_level

      t.timestamps
    end
  end
end
