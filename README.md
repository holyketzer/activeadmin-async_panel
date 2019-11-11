[![Gem Version](https://badge.fury.io/rb/activeadmin-async_panel.svg)](https://badge.fury.io/rb/activeadmin-async_panel)
[![Build Status](https://travis-ci.org/holyketzer/activeadmin-async_panel.svg?branch=master)](https://travis-ci.org/holyketzer/activeadmin-async_panel)
[![Code Climate](https://codeclimate.com/github/holyketzer/activeadmin-async_panel/badges/gpa.svg)](https://codeclimate.com/github/holyketzer/activeadmin-async_panel)
[![Test Coverage](https://codeclimate.com/github/holyketzer/activeadmin-async_panel/badges/coverage.svg)](https://codeclimate.com/github/holyketzer/activeadmin-async_panel/coverage)

# ActiveAdmin::AsyncPanel

<img src="https://user-images.githubusercontent.com/987021/53288017-a1c15400-3794-11e9-9f05-78bae72cfc60.gif" width="466" alt="ActiveAdmin Async Panel control"/>

This gem allows you to create ActiveAdmin panels with content loaded dynamically via AJAX requests.

## Prerequisites

This extension assumes that you're using [Active Admin](https://github.com/activeadmin/activeadmin)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'activeadmin-async_panel'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install activeadmin-async_panel

## Usage

Include this line in your JavaScript code (active_admin.js.coffee)

```coffeescript
#= require activeadmin-async_panel
```

Include this line in your CSS code (active_admin.scss)

```scss
@import "activeadmin-async_panel";
```

To use this stuff do next steps:

### Step 1. Define async panel

```ruby  
panel 'Name', class: 'async-panel', 'data-url' => some_action_admin_resources_path, 'data-period' => 1.minute
```

If you setup `data-period`, panel will be periodically updated. If not, it will be loaded once right after page load

If you set `data-clickable` to a truthy value, the panel will not be loaded upon initial page load. Instead, the panel will load upon clicking the panel header. Upon page load, the panel header will have a label of 'Click to Load'. Example:

```ruby
panel 'Name', class: 'async-panel', 'data-url' => some_action_admin_resources_path, 'data-clickable' => 1
```

### Step 2. Define action 

Define `member_action` or `collection_action` to handle request specified by path helper

```ruby  
collection_action :some_action do
  @resources = Resource.some_scope
  render layout: false # mandatory line, layout should be disaled to render template only
end
```

### Step 3. Define view 

Define you view template to render action above in file `views/admin/resources/some_action.html.arb`can also be (slim, erb), for e.g. `arb` template:

```ruby
table_for resources do
  column :value1
  column :value2
end
```

Note that in step 2 you can pass template variables with `@`, but inside `arb` template you should use them without `@`, and inside `erb`, `slim` with.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/holyketzer/activeadmin-async_panel. This project is intended to be a safe, welcoming space for collaboration.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

