# bitly

Only supports shortening and expanding of URLs ATM (I might add more in the future, but definitely feel free to PR)

## Installation


Add this to your application's `shard.yml`:

```yaml
dependencies:
  bitly:
    github: greenbigfrog/bitly
```


## Usage


```crystal
require "bitly"
```

Get your `access_token` with `curl -u "username:password" -X POST "https://api-ssl.bitly.com/oauth/access_token"`

Look at the examples

## Development

TODO: Write development instructions here

## Contributing

1. Fork it ( https://github.com/greenbigfrog/bitly/fork )
2. Create your feature branch (git checkout -b my-new-feature)
3. Commit your changes (git commit -am 'Add some feature')
4. Push to the branch (git push origin my-new-feature)
5. Create a new Pull Request

## Contributors

- [greenbigfrog](https://github.com/greenbigfrog) Jonathan B. - creator, maintainer
