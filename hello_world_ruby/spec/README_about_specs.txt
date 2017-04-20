RSPEC TESTING:

1. Create file in automation directory

filename: Gemfile
code in file should look like this:

	# Gemfile
	source "https://rubygems.org"

	gem “rspec"

2. Open terminal, cd into project directory

run this command:
bundle install

3. Create a directory in your project called 'spec'

4. Create a file [classname_to_test_spec].rb
	example: tic_tac_toe_spec.rb
	hint: naming it “spec” helps not to confuse with class you’re testing

5. In file, require the class you'll be testing:

require “../tic_tac_toe"

#then do a describe statement
describe tic_tac_toe do
end

6. Run test in command line:

bundle exec rspec