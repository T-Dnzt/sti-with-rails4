class Tribe < ActiveRecord::Base
	has_many :animals
	delegate :lions, :meerkats, :wild_boards, to: :animals
end
