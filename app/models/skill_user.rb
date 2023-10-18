class SkillUser < ApplicationRecord
  belongs_to :Skills
  belongs_to :Skilltype
end
