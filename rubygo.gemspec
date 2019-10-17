Gem::Specification.new do |s|
    s.name = "rubygo"
    s.version = "0.0.4"
    s.date = Time.new.strftime("%Y-%m-%d")
    s.summary = "Test go native extension."
    s.description = "Test building and running go native extension."
    s.authors = ["Miles Whittaker"]
    s.email = "mj@whitta.dev"
    s.executables = Dir.chdir("bin") do
        Dir["*"]
    end
    s.extensions = Dir["ext/**/*.rb"]
    s.files = Dir["ext/**/*.go"] + Dir["lib/**/*.rb"]
    s.homepage = "https://gitlab.com/mjwhitta/rubygo"
    s.license = "GPL-3.0"
    s.add_development_dependency("rake", "~> 13.0", ">= 13.0.0")
    s.add_runtime_dependency("ffi", "~> 1.11", ">= 1.11.1")
end
