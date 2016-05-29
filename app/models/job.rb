class Job < ApplicationRecord
<<<<<<< 1a6f87e6727a6f9a0b454ad25fbcb25cbaa5ab3d
  scope :expired, -> { where("exp_date <= ? AND archived = 'f'", Date.today) }

  def archive!
    update(archived: true)
  end
=======
>>>>>>> scaffolded jobs
end
