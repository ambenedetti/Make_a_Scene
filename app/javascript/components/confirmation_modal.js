const bookingStart = document.querySelector('#booking_start_date');
const bookingEnd = document.querySelector('#booking_end_date');
const totalPriceConf = document.querySelector('#product-show-total-cost');
const modalStart = document.querySelector('#modal_start_date');
const modalEnd = document.querySelector('#modal_end_date');
const modalPrice = document.querySelector('#modal-show-total-cost');
const btn = document.querySelector('#book-now-product-btn');

const startDate = () => {
  btn.addEventListener('submit', () => {
    const beginDate = bookingStart.value;
    modalStart.value = beginDate
  });
};

const endDate = () => {
  btn.addEventListener('submit', () => {
    const finishDate = bookingEnd.value;
    modalEnd.value = finishDate
  });
};

const totalPrice = () => {
  btn.addEventListener('submit', () => {
    const price = totalPriceConf.value;
    modalPrice.value = price
  });
};

export { startDate }
export { endDate }
export { totalPrice }
