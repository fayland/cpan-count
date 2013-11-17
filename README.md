cpan-count
====================

Fetch a user's CPAN count from MetaCPAN

## Usage

```coffee
getCPANs = require 'cpan-count'

success = (count) -> ...
error = (err) -> ...

getCPANs 'someUserName', success, error
```

## Features

- Uses promises

## Supported environments

- Node
- CommonJS

## Reference

Most of the code are copied from [https://github.com/eighttrackmind/gem-count](https://github.com/eighttrackmind/gem-count)
