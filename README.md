# SudokuBuilder

Automates package building on onion/sudoku. Script logs in onion account,
selects build package action and confirms it without reinstaling dependencies.

## Installation

Add this line to your application's Gemfile:

    ```ruby
    gem 'sudoku_builder'
    ```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install sudoku_builder

## Usage

Once the gem is installed, set shell environment variables SUDOKU_USERNAME and
SUDOKU_PASSWORD then run:


    $ script/sudoku_builder

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
