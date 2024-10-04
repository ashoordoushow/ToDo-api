class Todo < ApplicationRecord
  belongs_to :category
  belongs_to :user

  def freindly_deadline
    deadline.strftime("%m-%d-%y") if deadline
  end
end
