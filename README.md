# bxSlider Rails Gem - v4.2.12

jQuery bxSlider v4.2.12 - http://bxslider.com

bxSlider       Author: Steven Wanderski, Copyright 2011
bxslider-rails Author: Mauricio Natanael Ferreira.

## Installation

Add this line to your application's Gemfile:

    gem 'bxslider-rails'

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install bxslider-rails

## Usage

The bxSlider is a jQuery HTML Content Slider, so please check if you are using the jquery on your rails app

    //= require jquery

Your app/assets/javascripts/application.js must appear like:

	//= require jquery
	//= require jquery_ujs
	//= require bxslider
	//= require_tree .

And your app/assets/stylesheets/application.css like this:

	*= require_self
	*= require bxslider
	*= require_tree .
    
    
Basic Structure example from http://bxslider.com

	<ul class="bxslider">
	  <li>Slide one content</li>
	  <li>Slide two content</li>
	  <li>Slide three content</li>
	  <li>And so on...</li>
	</ul>

### Production environment setup (Rails 4.0+ only)

You have to add images to precompile array manually in your `config/environments/production.rb`

	# Precompile additional assets.
	# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
	config.assets.precompile += %w( bx_loader.gif controls.png )

On rails 4.2 you need to change it on `config/initializers/assets.rb`

	# Precompile additional assets.
	# application.js, application.css, and all non-JS/CSS in app/assets folder are already added.
	Rails.application.config.assets.precompile += %w( bx_loader.gif controls.png )

## REMEMBER TO INITIALIZE IT!

If you are going to use coffee script:

	$(document).ready ->
	  $(".bxslider").bxSlider()
	
Or just javascript:

	$(document).ready(function(){
	  $('.bxslider').bxSlider();
	});

For more documentation please checkout the bxslider 4 repository here:
  https://github.com/wandoledzep/bxslider-4

##### Gem Maintenance

Added a quick and dirty Bash script to pull latest assets from the bxslider-4 sources. You will
want to review in the case new assets have been changed or more file tweaks are required. The
script is intended to automate the steps to update the vendor assets and in doing so show the
reader how it can be done manually.

Steps to refresh are:
- check out and update bxslider-4 in this directory
- run the update script ./update.sh
- test results, revise and re-run update.sh as required
- update lib/bxslider-rails/version.rb
- update this README.md
- publish
  

##### Gem Author

http://twitter.com/manfe01
http://ferreiramauricio.com

