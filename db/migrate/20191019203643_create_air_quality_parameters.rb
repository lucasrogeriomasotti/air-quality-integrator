class CreateAirQualityParameters < ActiveRecord::Migration[6.0]
  def change
    create_table :air_quality_parameters do |t|
      t.string :name
      t.text :description
      t.references :air_quality_parameter_unit, null: false, foreign_key: true

      t.timestamps
    end
  end
end
