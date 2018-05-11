Gem::Specification.new do |s|
    s.name = "rubygo"
    s.version = "0.0.1"
    s.date = Time.new.strftime("%Y-%m-%d")
    s.summary = "Test go native extension."
    s.description = [
        "Test building and running go native extension."
    ].join(" ")
    s.authors = ["Miles Whittaker"]
    s.email = "mjwhitta@gmail.com"
    s.executables = Dir.chdir("bin") do
        Dir["*"]
    end
    s.extensions = Dir["ext/**/*.rb"]
    s.files = Dir["ext/**/*.go"] + Dir["lib/**/*.rb"]
    s.homepage = "https://mjwhitta.github.io/rubygo"
    s.license = "GPL-3.0"
    s.add_development_dependency("rake", "~> 12.3", ">= 12.3.0")
    s.add_runtime_dependency("ffi", "~> 1.9", ">= 1.9.23")
end
