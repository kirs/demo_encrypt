class Person < ApplicationRecord
  serialize :date_of_birth, EncryptedDob.new
end
