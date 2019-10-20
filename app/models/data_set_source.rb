class DataSetSource < ApplicationRecord
  validates_presence_of :name
  validates_uniqueness_of :name
  has_many :data_sets
  
  def to_s
    name
  end
end
