# 桃

桃は、ハッシュをActiveRecordのように扱うことを可能にするライブラリです。https://github.com/active-hash/active_hash を参考にしています。

## インストール方法

シェル上で、次のコマンドを実行します。

```console
gem install momo
```

## 使い方

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
