const scrollDownNavBar = () => {
  const navbar = document.querySelector(".nav-scroll ");
  window.onscroll = () => {
    if (window.scrollY > 200) {
      navbar.classList.add("nav-active");
    } else {
      navbar.classList.remove("nav-active");
    }
  };
};

export { scrollDownNavBar };
