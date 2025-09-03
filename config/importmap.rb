# Pin npm packages by running ./bin/importmap

pin "application"
pin "@hotwired/turbo-rails", to: "turbo.min.js"
pin "@hotwired/stimulus", to: "stimulus.min.js"
pin "@hotwired/stimulus-loading", to: "stimulus-loading.js"
pin "jquery" # @3.7.1
pin "bootstrap", to: "https://unpkg.com/bootstrap@5.3.3/dist/js/bootstrap.min.js"
pin "@popperjs/core", to: "https://unpkg.com/@popperjs/core@2.11.8/dist/umd/popper.min.js"
pin_all_from "app/javascript/controllers", under: "controllers"
