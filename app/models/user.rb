class User < ApplicationRecord
    has_many :postulations
    has_many :benefits, through: :postulations
    has_many :companies, through: :benefits

    def self.u_benefit
      User.eager_load(:postulations, :benefits, :companies).where('benefits.amount < ? AND companies.com_type = ?', 10000000, "private")
    end
end
