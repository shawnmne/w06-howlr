require_relative "../test_helper.rb"

class WolfTest < Minitest::Test
	def test_valid_at_creation
		w = Wolf.new(name: "Henry", image: "b", description: "very cute")
		assert(w.valid? "should be valid at creation")
	end
end