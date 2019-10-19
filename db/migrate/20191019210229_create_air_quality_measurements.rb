class CreateAirQualityMeasurements < ActiveRecord::Migration[6.0]
  def change
    create_table :air_quality_measurements do |t|
      t.references :data_set, null: false, foreign_key: true
      t.datetime :measurement_datetime
      t.references :air_quality_parameter, null: false, foreign_key: true
      t.decimal :value
      t.string :location
      t.string :city
      t.string :country
      t.string :coordinates
      t.integer :radius

      t.timestamps
    end
  end
end
