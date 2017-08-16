class Contract < ApplicationRecord
  belongs_to :user
  belongs_to :skill

  validates :description, presence: true
  # validates :status, presence: true, :inclusion => { :in => ['pending', 'accepted', 'rejected'] }
  validates :start_time, presence: true
  validates :end_time, presence: true
end