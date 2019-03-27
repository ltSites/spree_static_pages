# SpreeStaticPages

Introduction goes here.

## Installation

1. Add this extension to your Gemfile with this line:
  ```ruby
  gem 'spree_static_pages', github: 'ltSites/spree_static_pages'
  ```

2. Install the gem using Bundler:
  ```ruby
  bundle install
  ```

3. Copy & run migrations
  ```ruby
  bundle exec rails g spree_static_pages:install
  ```

4. Restart your server

  If your server was running, restart it so that it can find the assets properly.

## Add menu to view
Insert it to your spree view
```shell
<%= itsites_pages_menu('hash_tag') %>
```

## Translations

1 English

2 Russian

3 Ukrainian

## Testing

Tested at Spree 3.6