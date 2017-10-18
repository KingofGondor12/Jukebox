class Subscriber < ApplicationRecord
  before_create :generate_mug_number
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end

  validates :name, presence: true
  #validates :email, presence: true, email: true, uniqueness: true

private

  def generate_mug_number
    last_number = Subscriber.maximum(:mug_number) || 0
    self.mug_number = last_number + 1
  end

end
