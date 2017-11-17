# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...

* Add bootstrap-sass,simple_form, jquery-rails, font-awesome-sass, faker, chartkick, groupdate  gems to Gemfile

* Run generate for simple_form and integrated with bootstrap

```Ruby
  rails g simple_form:install --bootstrap

  ===============================================================================

  Be sure to have a copy of the Bootstrap stylesheet available on your
  application, you can get it on http://getbootstrap.com/.

  Inside your views, use the 'simple_form_for' with one of the Bootstrap form
  classes, '.form-horizontal' or '.form-inline', as the following:

    = simple_form_for(@user, html: { class: 'form-horizontal' }) do |form|

===============================================================================
```
* generate User model

```ruby
# generate User model
rails g model User

rake db:migrate

# create UsersController.rb

# create seeds.rb to populate Users table
# db/seeds.rb
User.delete_all

User.transaction do
  1_460.times do |i|
    rand(100).times do
      User.create created_at: i.days.ago.to_date
    end
  end
end

# run rake db:seed

rake db:seed
```
