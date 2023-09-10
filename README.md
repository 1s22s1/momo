# Momo

Momo introduce Hash like using ActiveRecord. We reference https://github.com/active-hash/active_hash .

## How to install

Run below commmand on shedll.

```console
gem install momo
```

## How to use

```ruby
require 'momo'

class Vegetable < Momo::Base
  @@data = [
    { id: 1, name: 'じゃが芋' },
    { id: 2, name: '玉ねぎ' },
    { id: 3, name: 'パセリ' }
  ]
end

Vegetable.find_by_id(1) # => #<Vegetable:0x00007fb566bb7650 @id=1, @name="じゃが芋">
```
