# ruby-packer-example

Testing [ruby-packer](https://github.com/pmq20/ruby-packer) with the [rugged](https://github.com/libgit2/rugged) libgit2 gem.

## Setup

    $ rvm use 2.7.1
    $ gem install bundler -v '~> 1.0'
    $ bundle install
    $ ./app.rb 2> /dev/null

```
nickstanish/ruby-packer-example
```

## Building with rubyc

    $ rubyc app.rb
    $ ./a.out

```
[info] Starting Script
Traceback (most recent call last):
	3: from /__enclose_io_memfs__/local/app.rb:5:in `<main>'
	2: from /__enclose_io_memfs__/local/app.rb:5:in `require'
	1: from /__enclose_io_memfs__/lib/ruby/gems/2.7.0/gems/rugged-1.1.0/lib/rugged.rb:8:in `<top (required)>'
/__enclose_io_memfs__/lib/ruby/gems/2.7.0/gems/rugged-1.1.0/lib/rugged.rb:8:in `require': cannot load such file -- rugged/2.7/rugged (LoadError)
	4: from /__enclose_io_memfs__/local/app.rb:5:in `<main>'
	3: from /__enclose_io_memfs__/local/app.rb:5:in `require'
	2: from /__enclose_io_memfs__/lib/ruby/gems/2.7.0/gems/rugged-1.1.0/lib/rugged.rb:6:in `<top (required)>'
	1: from /__enclose_io_memfs__/lib/ruby/gems/2.7.0/gems/rugged-1.1.0/lib/rugged.rb:10:in `rescue in <top (required)>'
/__enclose_io_memfs__/lib/ruby/gems/2.7.0/gems/rugged-1.1.0/lib/rugged.rb:10:in `require': cannot load such file -- rugged/rugged (LoadError)
```
