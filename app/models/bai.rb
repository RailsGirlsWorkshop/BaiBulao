class Bai < ApplicationRecord
  validates_presence_of :name, :mobile, :location, :charges
end
