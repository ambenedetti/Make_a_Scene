const bookingStart = document.querySelector('#booking_start_date');
const bookingEnd = document.querySelector('#booking_end_date');
const price = document.querySelector('#product-show-daily-cost').innerText;
const totalPrice = document.querySelector('#product-show-total-cost');

const bookingPrice = () => {
  bookingEnd.addEventListener('change', () => {
    const startDate = bookingStart.value;
    const start = new Date(startDate);
    console.log(start);
    const endDate = bookingEnd.value;
    const end = new Date(endDate);
    console.log(end);
    const days = Math.abs(end - start) / 1000;
    const duration = Math.floor(days / 86400);
    const finalPrice = duration * price;
    totalPrice.value = finalPrice;
  });
};
export { bookingPrice }
