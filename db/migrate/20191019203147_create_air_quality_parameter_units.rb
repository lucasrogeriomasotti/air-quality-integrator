class CreateAirQualityParameterUnits < ActiveRecord::Migration[6.0]
  def change
    create_table :air_quality_parameter_units do |t|
      t.string :name
      t.string :symbol

      t.timestamps
    end
  end
end
