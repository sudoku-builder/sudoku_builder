# SudokuBuilder

Automates package building on onion/sudoku. Script logs into onion account,
selects build package action and confirms it without reinstaling dependencies.

## Installation

Edit Gemfile:

```ruby
	gem 'sudoku_builder', git: 'git://github.com/sudoku-builder/sudoku_builder.git'
```

And then execute:
```bash
    $ bundle
```
## Usage

Once the gem is installed, set shell environment variables with credentials:
```bash
    $ export SUDOKU_USERNAME=yourusername
    $ export SUDOKU_PASSWORD=yourpassword
```
then run:
```bash
    $ rake sudoku:build
```
## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
