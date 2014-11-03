= NgClassify

This project rocks and uses MIT-LICENSE.

= Usage

Add `gem ng_classify` to your Gemfile  
Run `bundle install`  
Create a file with extension `.coffee.ng-classify`  
Done!  


= Configuration

You can also configure the naming convention of the components as well.

Create a file under config/initializers

Write

```ruby
NgClassify.setup do |config|
  config.appName = 'app_name'
  config.prefix = 'App'
  config.controller = {format: 'upperCamelCase', suffix: 'Ctrl'}
  ...
end
```

Just follow the example posted at https://github.com/CaryLandholt/ng-classify#ngclassifycontent-options

Remember to flush the cache for the assets the new configuration can apply.
