class Member < ApplicationRecord
  has_and_belongs_to_many :tasks
  has_many :member_projects
  has_many :projects, through: :member_projects

end
