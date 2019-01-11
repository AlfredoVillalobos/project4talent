class Company < ApplicationRecord
    TYPE = ["private", "public"]
    has_many :benefits
    validates :com_type, inclusion:{in:TYPE}
end
