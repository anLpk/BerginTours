const historyDisplay = () => {
  const historyText = document.querySelector(".accordion-text");
  const historyDisplayContainer = document.querySelector("#headingOne");
  const myAccardion = document.querySelector("#myAccordion");

  //   console.log(historyText.textContent);

  if (myAccardion) {
    if (historyText.textContent != "") {
      historyDisplayContainer.style.display = "block";
    } else {
      historyDisplayContainer.style.display = "none";
    }
  }
};

export { historyDisplay };
