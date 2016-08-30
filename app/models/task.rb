class Task < ApplicationRecord
  validates :title,       presence: true, length: { maximum: 30 }
  validates :description, presence: true, length: { maximum: 3000 }
  validates :start_at,    presence: true
  validates :done,        inclusion: { in: [true, false] }

  validate :time_correctness

  private

  def time_correctness
    return if start_at.nil?

    if start_at < DateTime.now
      errors.add(:start_at, "Date should not be in the past.")
    end

    unless end_at.nil?
      if start_at > end_at
        errors.add(:end_at, "Task should not end before it starts.")
      end
    end
  end
end
