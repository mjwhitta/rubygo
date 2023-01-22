Gem::Specification.new do |s|
    s.add_development_dependency("rake", "~> 13.0", ">= 13.0.0")
    s.add_runtime_dependency("ffi", "~> 1.11", ">= 1.11.3")
    s.authors = ["Miles Whittaker"]
    s.date = Time.new.strftime("%Y-%m-%d")
    s.description = "Test building and running go native extension."
    s.email = "mj@whitta.dev"
    s.executables = Dir.chdir("bin") do
        Dir["*"]
    end
    s.extensions = Dir["ext/**/*.rb"]
    s.files = Dir["ext/**/*.go"] + Dir["lib/**/*.rb"]
    s.homepage = "https://github.com/mjwhitta/rubygo"
    s.license = "GPL-3.0"
    s.metadata = {"source_code_uri" => s.homepage}
    s.name = "rubygo"
    s.summary = "Test go native extension."
    s.version = "0.0.5"
end
