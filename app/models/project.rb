class Project < ApplicationRecord
  belongs_to :company
  has_many :member_projects
  has_many :members, through: :member_projects

  validates :name, presence: true, allow_blank: false

  delegate :name, to: :company, prefix: true, allow_nil: true

  scope :latest_5, -> { order(created_at: :desc).limit(5)  }

  after_create :send_welcome_email

  def send_welcome_email
    ProjectMailer.welcome.deliver_now
  end

  def accountable=(member)
    self.member_projects.find_by(member_id: member.id).update(is_accountable: true)
  end

  def accountable
    Member.find(self.member_projects.find_by(is_accountable: true)&.member_id)
  end
end
