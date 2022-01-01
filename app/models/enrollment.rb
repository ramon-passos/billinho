class Enrollment < ApplicationRecord
  belongs_to :institution
  belongs_to :student
  has_many :payments, dependent: :destroy
  validates :full_price, presence: true
  validates :full_price, comparison: {greater_than: 0}
  validates :max_payments , presence: true
  validates :max_payments, comparison: {greater_than_or_equal_to: 1}
  validates :due_date, presence: true
  validates :due_date, comparison: {greater_than_or_equal_to: 1, less_than_or_equal_to: 31}
  validates :course_name, presence: true
  validates :institution_id, presence: true
  validates :student_id, presence: true
end
