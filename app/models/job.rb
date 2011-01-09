class Job < ActiveRecord::Base
  belongs_to :company

  validates_presence_of :position, :company, :location, :desired_skills

  def self.search(search)
    if search
      where('position LIKE ?', "%#{search}%")
    else
      scoped
    end
  end
end
