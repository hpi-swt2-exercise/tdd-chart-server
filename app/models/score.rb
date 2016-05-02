# == Schema Information
#
# Table name: scores
#
#  user         :string           not null
#  score        :integer          not null
#  time         :datetime         not null
#

class Score < ActiveRecord::Base
  include Rails.application.routes.url_helpers

  validates :user, presence: true
  validates :score, presence: true
  validates :time, presence: true

  before_validation :init
  
  private
  
  def init
    self.user = user.chomp("/java-tdd-challenge")
    self.time ||= Time.now
  end
end
