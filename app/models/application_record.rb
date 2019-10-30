class ApplicationRecord < ActiveRecord::Base
  self.abstract_class = true

  API_DATABASE = "#{Rails.env}_api".to_sym
end
