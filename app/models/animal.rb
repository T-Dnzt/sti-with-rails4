class Animal < ActiveRecord::Base
	belongs_to :tribe
	self.inheritance_column = :race

	scope :lions, -> { where(race: 'Lion') }
	scope :meerkats, -> { where(race: 'Meerkat') }
	scope :wild_boars, -> { where(race: 'WildBoar') }

	def talk
		raise 'Abstract Method'
	end

  class << self
    def races
      %w(lion wild_boar meerkat)
    end
  end
end

