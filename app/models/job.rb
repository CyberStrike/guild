class Job < ApplicationRecord
  belongs_to :user

  validates_presence_of :company_name, :title, :remote, :terms

  validates_inclusion_of :terms,
                         in: %w(full-time part-time contract),
                         message: '%{value} is not a valid job term'

  validates_inclusion_of :remote,
                         in: [true, false],
                         message: 'can only be true or false.'

  validate :must_have_description_or_link

  scope :expired, -> { where("exp_date <= ? AND archived = 'f'", Date.today) }

  ## Either Description or Link

  def must_have_description_or_link
    unless description.present? || link.present?
      errors.add(:Listing, 'We need at least one listing type.')
    end
  end

  def archive!
    update(archived: true)
  end
end
