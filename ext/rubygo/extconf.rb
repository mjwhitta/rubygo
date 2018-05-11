#!/usr/bin/env ruby

File.open("Makefile", "w") do |f|
    f.write("BINS = $(shell find bin -type f)\n")
    f.write("\n")
    f.write("all: build\n")
    f.write("\n")
    f.write(".PHONY: $(BINS)\n")
    f.write("$(BINS):\n")
    f.write("\t@mkdir -p build\n")
    f.write("\tgo build -buildmode=c-shared ")
    f.write("-o build/$(shell basename $@ .go).so $@\n")
    f.write("\n")
    f.write("build: $(BINS)\n")
    f.write("\n")
    f.write("clean:\n")
    f.write("\t@rm -rf build ../../lib/*.so\n")
    f.write("\n")
    f.write("install:\n")
    f.write("\t@mkdir -p ../../lib\n")
    f.write("\t@mv build/*.so ../../lib/\n")
end
