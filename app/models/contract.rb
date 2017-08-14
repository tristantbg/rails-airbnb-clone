class Contract < ApplicationRecord
  has_one :freelancer, :class_name => "User"
  has_one :employer, :class_name => "User"

  validate :cannot_work_with_yourself
  validates :employer_id, presence: true
  validates :freelancer_id, presence: true
  validates :status, presence: true, only: ['pending', 'accepted', 'rejected']
  validates :start_time, presence: true
  validates :end_time, presence: true

  private

  def cannot_work_with_yourself
    errors.add(:freelancer_id, 'You cannot work with yourself.') if employer_id == freelancer_id
  end
end
