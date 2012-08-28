class AddTestData < ActiveRecord::Migration
  def self.up
  	Product.delete_all

  	Product.create!(
  		:title => "Agile Web Development with Rails",
  		:description => %{
  			<p>Rails just keeps on changing. Rails 3 and Ruby 1.9 bring hundreds of 
  			improvements, including new APIs and substantial performance 
  			enhancements. The fourth edition of this award-winning classic has been 
  			reorganized and refocused so it’s more useful than ever before for 
  			developers new to Ruby and Rails.</p>

				<p>Rails 3 is a major release—the changes aren’t just incremental, but 
				structural. So we decided to follow suit. This book isn’t just a mild 
				reworking of the previous edition to make it run with the new Rails. 
				Instead, it’s a complete refactoring.</p>

				<p>You’ll still find the Depot example at the front, but you’ll also find 
				testing knitted right in. Gone are the long reference chapters—that’s 
				what the web does best. Instead you’ll find more targeted information 
				on all the aspects of Rails that you’ll need to be a successful Web 
				developer.</p>
  			},
  		:image_url => "http://imagery.pragprog.com/products/196/rails4_xlargecover.jpg",
  		:price => 43.95
		)
  	
  	Product.create!(
  		:title => "CoffeeScript: Accelerated JavaScript Development",
  		:description => %{
  			<p>CoffeeScript is JavaScript done right. It provides all of 
  			JavaScript’s functionality wrapped in a cleaner, more succinct syntax. 
  			In the first book on this exciting new language, CoffeeScript guru 
  			Trevor Burnham shows you how to hold onto all the power and flexibility 
  			of JavaScript while writing clearer, cleaner, and safer code.</p>
  			},
  		:image_url => "http://imagery.pragprog.com/products/219/tbcoffee_xlargecover.jpg",
  		:price => 29.00
		)
  	
  	Product.create!(
  		:title => "The Cucumber Book: Behaviour-Driven Development for Testers and Developers",
  		:description => %{
  			<p>Your customers want rock-solid, bug-free software that does exactly 
  			what they expect it to do. Yet they can’t always articulate their ideas 
  				clearly enough for you to turn them into code. The Cucumber Book dives
  				straight into the core of the problem: communication between people. 
  				Cucumber saves the day; it’s a testing, communication, and 
  				requirements tool – all rolled into one.</p>
  			},
  		:image_url => "http://imagery.pragprog.com/products/216/hwcuc_xlargecover.jpg",
  		:price => 30.00
		)

  end

  def self.down
  	Product.delete_all
  end
end
