exports.config =
  # See http://brunch.readthedocs.org/en/latest/config.html for documentation.
  files:
    javascripts:
      joinTo:
        'javascripts/app.js': /^app|coffee/
        'javascripts/vendor.js': /^vendor/
        'test/javascripts/test.js': /^test(\/|\\)(?!vendor)/
        'test/javascripts/test-vendor.js': /^test(\/|\\)(?=vendor)/
      order:
        before: [
          'vendor/scripts/jquery-1.9.1.min.js',
          'vendor/scripts/underscore-1.4.3.js',
          'vendor/scripts/knockout-2.2.1.js',
          'vendor/scripts/plugins.js'
        ]

    stylesheets:
      joinTo:
        'stylesheets/app.css': /^(app|css)/
        'stylesheets/vendor.css': /^vendor/
        'test/stylesheets/test.css': /^test/
      order:
        before: [
          'vendor/css/normalize.css',
          'vendor/css/main.css',
          'vendor/css/font-awesome.min.css'
        ]
        after: []

    templates:
      joinTo: 'javascripts/app.js'