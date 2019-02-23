Given("the following articles exists") do |table|
	table.hashes.each do |article|
		Article.create!(article)
	end
end

When("I visit the site") do
	visit root_path
end

When("I click {string}") do |link|
	click_on link
end

When("I fill in {string} with {string}") do |field, input|
	fill_in field, with: input
end

When("I click {string} button") do |string|
	click_button string
end
