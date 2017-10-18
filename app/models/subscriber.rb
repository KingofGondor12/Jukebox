<<<<<<< HEAD
class Subscriber < ApplicationRecord
  before_create :generate_mug_number
=======
class EmailValidator < ActiveModel::EachValidator
>>>>>>> a2e714be8810e0227a90739c0956acf0678dfe37
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
<<<<<<< HEAD

  validates :name, presence: true
  #validates :email, presence: true, email: true, uniqueness: true

private

  def generate_mug_number
    last_number = Subscriber.maximum(:mug_number) || 0
    self.mug_number = last_number + 1
  end

=======
end

class Subscriber < ApplicationRecord
validates :name, presence: true
validates :email, presence: true, email: true, uniqueness: true
validate :name_KJU

def name_KJU
  if name == "Kim Jong Un"
    errors.add(:name, "you can not join")
    end
  end
>>>>>>> a2e714be8810e0227a90739c0956acf0678dfe37
end
