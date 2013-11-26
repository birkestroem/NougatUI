# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = "textutils"
  s.version = "0.6.6"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["Gerald Bauer"]
  s.date = "2013-06-25"
  s.description = "textutils - Text Filters, Helpers, Readers and More"
  s.email = "webslideshow@googlegroups.com"
  s.extra_rdoc_files = ["Manifest.txt"]
  s.files = ["Manifest.txt"]
  s.homepage = "http://geraldb.github.com/textutils"
  s.licenses = ["Public Domain"]
  s.rdoc_options = ["--main", "README.markdown"]
  s.require_paths = ["lib"]
  s.required_ruby_version = Gem::Requirement.new(">= 1.9.2")
  s.rubyforge_project = "textutils"
  s.rubygems_version = "2.0.6"
  s.summary = "textutils - Text Filters, Helpers, Readers and More"

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<logutils>, ["~> 0.5"])
      s.add_development_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_development_dependency(%q<hoe>, ["~> 3.6"])
    else
      s.add_dependency(%q<logutils>, ["~> 0.5"])
      s.add_dependency(%q<rdoc>, ["~> 4.0"])
      s.add_dependency(%q<hoe>, ["~> 3.6"])
    end
  else
    s.add_dependency(%q<logutils>, ["~> 0.5"])
    s.add_dependency(%q<rdoc>, ["~> 4.0"])
    s.add_dependency(%q<hoe>, ["~> 3.6"])
  end
end
