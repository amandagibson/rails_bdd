Given("the following articles exists") do |table|
	table.hashes.each do |article|
		Article.create!(article)
	end
end

When("I visit the {string} page") do |string|
	visit '/'
end

Then("I click {string}") do |link|
	click_on link
end

When("I click {string} button") do |string|
	click_button string
end

When("I fill in {string} with {string}") do |input, value|
fill_in input, with: value
end