class ProductifyTask < ActiveRecord::Base
  belongs_to :productify_list

  def completed?
  	!completed_at.blank?
  end
end
