class Job < ApplicationRecord
  scope :expired, -> { where("exp_date <= ? AND archived = 'f'", Date.today) }

  def archive!
    update(archived: true)
  end
end