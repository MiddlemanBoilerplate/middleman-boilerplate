###
# Bower
###
activate :bower


###
# Compass
###

# Change Compass configuration
compass_config do |config|
  config.output_style = :compressed
  config.sass_options = { :line_comments => false }
end


###
# Page options, layouts, aliases and proxies
###

# Per-page layout changes:
#
# With no layout
# page "/path/to/file.html", :layout => false
#
# With alternative layout
# page "/path/to/file.html", :layout => :otherlayout
#
# A path which all have the same layout
# with_layout :admin do
#   page "/admin/*"
# end


# Proxy pages (http://middlemanapp.com/basics/dynamic-pages/)
# proxy "/this-page-has-no-template.html", "/template-file.html", :locals => {
#  :which_fake_page => "Rendering a fake page with a local variable" }


# Automatic image dimensions on image_tag helper
# activate :automatic_image_sizes


###
# Helpers
###
helpers do
  def page_class
    pclass = page_classes.split(' ')
    pclass.last
  end
end


# Reload the browser automatically whenever files change
configure :development do
  activate :livereload
end


set :css_dir, 'assets/stylesheets'

set :js_dir, 'assets/javascripts'

set :images_dir, 'assets/images'


# Build-specific configuration
configure :build do
  # For example, change the Compass output style for deployment
  activate :minify_css

  # Minify Javascript on build
  activate :minify_javascript

  # Enable cache buster
  # activate :asset_hash

  # Use relative URLs
  # activate :relative_assets

  # Or use a different image path
  # set :http_prefix, "/Content/images/"

  # favicon maker
end
