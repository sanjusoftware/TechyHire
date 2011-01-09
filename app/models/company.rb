class Company < ActiveRecord::Base
  belongs_to :employer
  has_many :jobs

  validates_presence_of :name, :description, :url
end
