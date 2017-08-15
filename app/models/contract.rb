class Contract < ApplicationRecord
  belongs_to :user

  validates :user_id, presence: true, uniqueness: true
  validates :status, presence: true, :inclusion => { :in => ['pending', 'accepted', 'rejected'] },
  validates :start_time, presence: true
  validates :end_time, presence: true
end


