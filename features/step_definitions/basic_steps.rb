Given("the following articles exists") do |table|
	table.hashes.each do |article|
		Article.create!(article)
	end
end

When("I visit the {string} page") do |string|
	visit '/'
end

When("I click {string}") do |link|
	click_on link
end

When("I fill in {string} with {string}") do |element, content|
	fill_in element, with: content
end

When("I click {string} button") do |string|
	click_button string
end
