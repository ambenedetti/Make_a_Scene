const nextSlide = () => {
  const slide = document.querySelector('.carousel-item');
  if (slide.nextElementSibling) {
    slide.nextElementSibling.classList.remove('carousel-item');
    slide.classList.add('carousel-item');
  } else if { (slide.previousElementSibling) {
    slide.previousElementSibling.classList.remove('carousel-item');
    slide.classList.add('carousel-item');
  }
};

const slideShow = document.querySelector(".carousel-control-prev-icon").addEventListener("click", nextSlide());

export { slideShow }
// import Glide from '@glidejs/glide'

// const slide = () => {
// const glide = document.querySelector('.glide');
// new Glide(glide).mount()
// }

// export { slide };
