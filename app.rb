#!/usr/bin/env ruby
$stderr.puts "[info] Starting Script"
ENV['BUNDLE_GEMFILE'] ||= File.expand_path('./Gemfile', __dir__)
require 'bundler/setup'
require 'rugged'
$stderr.puts "[info] Dependencies Loaded"

def current_repository
  repo = Rugged::Repository.discover
  repo_url = repo.remotes.find { |remote| remote.name == 'origin' }&.url || ''
  repo_url.scan(/github\.com(?::|\/)([\w\-]+)\/([\w\-]+)\.git/)&.last&.join('/')
rescue Rugged::RepositoryError
  nil
end

repo = current_repository
if repo
  puts repo
else
  puts "Err: Not a repository or no github origin"
end
$stderr.puts "[info] Done"
