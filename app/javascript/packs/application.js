import "bootstrap";

import flatpickr from "flatpickr";

import "flatpickr/dist/flatpickr.min.css" // Note this is important!
import { bookingPrice } from "components/calculation_total_cost";
import { showModal } from 'components/modal';
import { endDate } from 'components/confirmation_modal';
import { startDate } from 'components/confirmation_modal';
import { totalPrice } from 'components/confirmation_modal';


flatpickr(".datepicker", {
  disableMobile: true,
  altInput: true,
  altFormat: "F j",
  dateFormat: "Y-m-d"
});


bookingPrice();
showModal();
endDate();
startDate();
totalPrice();

