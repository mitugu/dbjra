class Cyb < ApplicationRecord
  def race_display
    "#{try(:a7)} #{try(:a8)}".to_s

  end
end
