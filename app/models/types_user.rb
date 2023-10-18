class TypesUser < ApplicationRecord
  belongs_to :Users
  belongs_to :UserTypes
end
