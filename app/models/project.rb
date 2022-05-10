class Project < ApplicationRecord
    belongs_to :team, :user

    accepts_nested_attributes_for :team
end
