import "bootstrap";

import flatpickr from "flatpickr";

import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import { bookingPrice } from "components/calculation_total_cost";


flatpickr(".datepicker", {
  disableMobile: true,
  altInput: true,
  altFormat: "F j",
  dateFormat: "Y-m-d"
});


bookingPrice();
