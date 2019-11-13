const bookingStart = document.querySelector('#booking_start_date');
console.log(bookingStart);
const bookingEnd = document.querySelector('#booking_end_date');
console.log(bookingEnd);
const price = document.querySelector('#product-show-daily-cost').innerText;
const totalPrice = document.querySelector('#product-show-total-cost');
​
// const bookingPrice = () => {
//   bookingEnd.addEventListener("keyup", () => {
//     const start = new Date(bookingStart.value);
//     console.log(start)
//     const end = new Date(bookingEnd.value);
//     const finalPrice = days * price;
//     totalPrice.innerText = finalPrice;
//   })
// }
// ​
// export { bookingPrice }
