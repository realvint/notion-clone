class Page < ApplicationRecord
  belongs_to :workspace
  belongs_to :user
end
