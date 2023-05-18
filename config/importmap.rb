# Pin npm packages by running ./bin/importmap

pin 'application', preload: true
pin '@hotwired/turbo-rails', to: 'turbo.min.js', preload: true
pin '@hotwired/stimulus', to: 'stimulus.min.js', preload: true
pin '@hotwired/stimulus-loading', to: 'stimulus-loading.js', preload: true
pin "prismjs", to: "https://ga.jspm.io/npm:prismjs@1.29.0/prism.js"
pin_all_from 'app/javascript/controllers', under: 'controllers'
