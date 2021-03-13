require("@rails/ujs").start();
require("turbolinks").start();
require("@rails/activestorage").start();
require("channels");
require("flatpickr/dist/flatpickr.css");

// Uncomment to copy all static images under ../images to the output folder and reference
// them with the image_pack_tag helper in views (e.g <%= image_pack_tag 'rails.png' %>)
// or the `imagePath` JavaScript helper below.
//
// const images = require.context('../images', true)
// const imagePath = (name) => images(name, true)

// External imports
import "bootstrap";

// Internal imports, e.g:
import { initFlatpickr } from "./plugins/flatpickr";
import { initStarRating } from "./plugins/init_star_rating";
import { scrollDownNavBar } from "./plugins/scroll_navbar";
import { formTotalPriceCalculation } from "./plugins/form_total_price";

document.addEventListener("turbolinks:load", () => {
  initFlatpickr();
  initStarRating();
  scrollDownNavBar();
  formTotalPriceCalculation();
});
