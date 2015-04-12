class Opportunity < ActiveRecord::Base
  paginates_per 3
  belongs_to :industry
  belongs_to :user
end
