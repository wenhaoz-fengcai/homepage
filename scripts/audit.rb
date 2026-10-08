# frozen_string_literal: true

require "pathname"

root = Pathname.new(__dir__).join("..").expand_path
site = root.join("_site")
errors = []

expected_pages = %w[
  index.html
  publications/index.html
  research/index.html
  people/index.html
  teachings/index.html
  zh/index.html
  zh/publications/index.html
  zh/research/index.html
  zh/people/index.html
  zh/teachings/index.html
]

expected_pages.each do |relative|
  errors << "Missing page: #{relative}" unless site.join(relative).file?
end

language_pairs = {
  "index.html" => "/zh/",
  "publications/index.html" => "/zh/publications/",
  "research/index.html" => "/zh/research/",
  "people/index.html" => "/zh/people/",
  "teachings/index.html" => "/zh/teachings/",
  "zh/index.html" => "/",
  "zh/publications/index.html" => "/publications/",
  "zh/research/index.html" => "/research/",
  "zh/people/index.html" => "/people/",
  "zh/teachings/index.html" => "/teachings/",
}

language_pairs.each do |relative, alternate|
  file = site.join(relative)
  next unless file.file?

  errors << "Incorrect language switch in #{relative}" unless file.read.include?(%(href="#{alternate}"))
end

html_files = site.glob("**/*.html")
html_files.each do |file|
  html = file.read
  errors << "Localhost reference in #{file.relative_path_from(root)}" if html.match?(/localhost|127\.0\.0\.1/)

  html.scan(/href=["']([^"']+)["']/).flatten.each do |href|
    next if href.empty? || href.start_with?("#", "http://", "https://", "mailto:", "tel:")

    path = href.split(/[?#]/, 2).first
    next unless path.start_with?("/")

    target = site.join(path.delete_prefix("/"))
    target = target.join("index.html") if path.end_with?("/")
    errors << "Broken link in #{file.relative_path_from(root)}: #{href}" unless target.file?
  end
end

{
  "students" => root.glob("_students/*.md").length,
  "projects" => root.glob("_projects/*.md").length,
  "publications" => root.glob("_publications/*.md").length,
  "teaching" => root.glob("_teaching/*.md").length,
  "news" => root.glob("_news/*.md").length
}.each do |collection, count|
  errors << "Collection #{collection} has no Markdown entries" if count.zero?
end

if errors.any?
  warn errors.join("\n")
  exit 1
end

puts "Audit passed: #{html_files.length} HTML pages, all internal links resolved, bilingual routes present, and Markdown collections populated."
