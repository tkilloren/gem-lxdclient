Gem: LxdClient
==============

This ruby gem provides a client library for [Canonical's LXD 'container hypervisor'][1].

Requirements
------------

### Gems:
- [puppetlabs/net_http_unix](https://github.com/puppetlabs/net_http_unix)

Installation
------------

Add this line to your application's Gemfile:

```ruby
gem 'lxdclient'
```

And then execute:

```sh
$ bundle
```

Or install it yourself as:

```sh
$ gem install lxdclient
```

Usage
-----

###Example code:

```ruby
#!/usr/bin/env ruby

require 'lxdclient'
```

Development
-----------

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

### Similar Projects

- https://github.com/miasma-rb/miasma-lxd
- https://github.com/inokappa/oreno_lxdapi

### Helpful References

- [LXD rest api][2]
- [LXD ssl auth][3]

Contributing
------------

Bug reports and pull requests are welcome on GitHub at https://github.com/tkilloren/gem-lxdclient.

[1]: https://linuxcontainers.org/lxd/
[2]: https://github.com/lxc/lxd/blob/master/doc/rest-api.md
[3]: https://github.com/lxc/lxd/blob/master/doc/lxd-ssl-authentication.md
