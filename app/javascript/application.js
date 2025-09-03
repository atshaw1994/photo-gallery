// app/javascript/application.js

import "@hotwired/turbo-rails"
import "controllers"

// Import Bootstrap and Popper.js. These imports load the scripts from the CDN
// and attach the "bootstrap" object to the window.
import "@popperjs/core"
import "bootstrap"

// This function now uses the Bootstrap 5 object from the global scope.
function setupCarousels() {
  // Access the Bootstrap object from the window, as it's not a standard ES module import.
  const { Carousel } = window.bootstrap;
  const carousels = document.querySelectorAll('.carousel');
  carousels.forEach(carousel => {
    // We create a new Bootstrap Carousel instance for each element.
    new Carousel(carousel, {
      interval: 2000
    });
  });
}

// Listen for the DOMContentLoaded event for the initial page load.
document.addEventListener('DOMContentLoaded', setupCarousels);

// Listen for the 'turbo:load' event for subsequent page navigations.
document.addEventListener('turbo:load', setupCarousels);
