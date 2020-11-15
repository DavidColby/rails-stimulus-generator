# Rails Stimulus Generator
This project adds a new Rails generator to create new Stimulus controllers in your app/javascript/controllers directory.

## Installation
Add the gem to your Gemfile

```ruby
gem 'rails-stimulus-generator'
```

And `bundle:install`

## Usage

```
rails g stimulus Hello
```

Creates `app/javascript/controllers/hello_controller.js`

The generated Stimulus controller will look like this:

```javascript
// app/javascript/controllers/hello_controller.js

import { Controller } from 'stimulus'

export default class extends Controller {
  static targets = []

  initialize() {
    // Called once, when the controller is first instantiated
  }

  connect() {
    // Called any time the controller is connected to the DOM
  }

  disconnect() {
    // Called any time the controller is disconnected from the DOM
  }
}

```

## Assumed directory structure
This generator assumes that your Stimulus controllers live in `app/javascript/controllers/`. If the controllers directory does not exist,
the generator will create the directory when it runs.

## Tests
Clone this repository to your local machine and run `rake test`

## Acknowledgements
The basic structure of this generator was inspired by [stimulus-generator-rails](https://github.com/arsley/stimulus-generator-rails). My preference
is to structure my controllers by function instead of by action, so I created this gem for those with a similar need and a standard Rails 6 + webpack
directory structure.

## License
This gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
