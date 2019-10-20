class DataSet < ApplicationRecord
  belongs_to :data_set_source
  validates_presence_of :name

  def to_s
  	name
  end
end
