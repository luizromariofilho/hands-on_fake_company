class MemberProject < ApplicationRecord
  belongs_to :member
  belongs_to :project

  validates :is_accountable, uniqueness: { scope: :project_id }, if: :accountable?

  def accountable? = is_accountable
end
