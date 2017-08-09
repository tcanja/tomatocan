class Agreement < ActiveRecord::Base
  belongs_to :group
  belongs_to :project

  validates :project_id, presence: true
  validates :group_id, presence: true
  validates :project_id, uniqueness: {scope: :group_id,
   message: 'You have already requested to affiliate with this group.' }
end