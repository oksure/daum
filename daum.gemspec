# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{daum}
  s.version = "0.1.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 1.2") if s.respond_to? :required_rubygems_version=
  s.authors = ["Hyunwoo Park"]
  s.date = %q{2008-12-17}
  s.description = %q{Ruby Gem for Daum OpenAPI}
  s.email = %q{hwpark@oksurerails.com}
  s.extra_rdoc_files = ["CHANGELOG.rdoc", "lib/daum/base.rb", "lib/daum/item.rb", "lib/daum/rss.rb", "lib/daum.rb", "README.rdoc"]
  s.files = ["CHANGELOG.rdoc", "daum.gemspec", "init.rb", "lib/daum/base.rb", "lib/daum/item.rb", "lib/daum/rss.rb", "lib/daum.rb", "Manifest", "Rakefile", "README.rdoc", "test/test_daum.rb"]
  s.has_rdoc = true
  s.homepage = %q{http://oksurerails.com/ruby/daum}
  s.rdoc_options = ["--line-numbers", "--inline-source", "--title", "Daum", "--main", "README.rdoc"]
  s.require_paths = ["lib"]
  s.rubyforge_project = %q{daum}
  s.rubygems_version = %q{1.3.1}
  s.summary = %q{Ruby Gem for Daum OpenAPI}
  s.test_files = ["test/test_daum.rb"]

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 2

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<libxml>, [">= 0", "= 0.9.2"])
    else
      s.add_dependency(%q<libxml>, [">= 0", "= 0.9.2"])
    end
  else
    s.add_dependency(%q<libxml>, [">= 0", "= 0.9.2"])
  end
end
