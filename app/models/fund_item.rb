class FundItem < ApplicationRecord
  belongs_to :fund
  belongs_to :coin
end
