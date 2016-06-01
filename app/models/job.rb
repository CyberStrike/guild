class Job < ApplicationRecord
  scope :expired, -> { where('exp_date <= ?', Date.today) }

  def archive!
    update(archived: true)
  end
end
