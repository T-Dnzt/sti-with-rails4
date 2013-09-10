class Animal < ActiveRecord::Base
	belongs_to :tribe
	inheritance_column = :race

	scope :lions, -> { where(race: 'Lion') }
	scope :meerkats, -> { where(race: 'Meerkat') }
	scope :wild_boars, -> { where(race: 'WildBoar') }
end

