class Ad < ActiveRecord::Base
  validates :title, presence: true
end
