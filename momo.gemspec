# frozen_string_literal: true

require_relative 'lib/momo/version'

Gem::Specification.new do |spec|
  spec.name = 'momo'
  spec.version = Momo::VERSION
  spec.authors = ['1s22s1']
  spec.email = ['1s22s1@example.com']

  spec.summary = '桃は、ハッシュをActiveRecordのように扱うことを可能にするライブラリです。'
  spec.description = '桃は、ハッシュをActiveRecordのように扱うことを可能にするライブラリです。'
  spec.homepage = 'https://github.com/1s22s1/momo'
  spec.required_ruby_version = '>= 2.6.0'

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/1s22s1/momo'
  spec.metadata['changelog_uri'] = 'https://github.com/1s22s1/momo/blob/main/CHANGELOG.md'

  spec.files = Dir.chdir(__dir__) do
    `git ls-files -z`.split("\x0").reject do |f|
      (File.expand_path(f) == __FILE__) || f.start_with?(*%w[bin/ test/ spec/ features/ .git .circleci appveyor])
    end
  end
  spec.bindir = 'exe'
  spec.executables = spec.files.grep(%r{\Aexe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  # Uncomment to register a new dependency of your gem
  # spec.add_dependency "example-gem", "~> 1.0"

  # For more information and examples about making a new gem, check out our
  # guide at: https://bundler.io/guides/creating_gem.html
end
