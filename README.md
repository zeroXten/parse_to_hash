# ParseToHash

Simple gem for parsing space separated values to an array of hashes

## Installation

Add this line to your application's Gemfile:

    gem 'parse_to_hash'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install parse_to_hash

## Usage

    data = ParseToHash::parse <<EOF
      header1 header2 header3
      1   a   hello
    
      2   b   there   # this is a comment
      3   c   how
    
     # this is also a comment
      4   d   are
      5   e   you
    EOF

This would produce:

    [{:header1=>"1", :header2=>"a", :header3=>"hello"},
     {:header1=>"2", :header2=>"b", :header3=>"there"},
     {:header1=>"3", :header2=>"c", :header3=>"how"},
     {:header1=>"4", :header2=>"d", :header3=>"are"},
     {:header1=>"5", :header2=>"e", :header3=>"you"}]

## Contributing

1. Fork it ( https://github.com/[my-github-username]/parse_to_hash/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
