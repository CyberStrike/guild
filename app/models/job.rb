class Job < ApplicationRecord
  belongs_to :user
  
  scope :expired, -> { where("exp_date <= ? AND archived = 'f'", Date.today) }

  def archive!
    update(archived: true)
  end
end