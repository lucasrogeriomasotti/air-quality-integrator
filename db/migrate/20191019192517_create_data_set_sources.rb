class CreateDataSetSources < ActiveRecord::Migration[6.0]
  def change
    create_table :data_set_sources do |t|
      t.string :name
      t.decimal :confidence_level

      t.timestamps
    end
  end
end
