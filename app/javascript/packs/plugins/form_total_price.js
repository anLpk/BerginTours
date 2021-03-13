const formTotalPriceCalculation = () => {
  const adult = document.getElementById("booking_number_of_adult");
  const children = document.getElementById("booking_number_of_children");
  const infant = document.getElementById("booking_number_of_infant");
  const displayPrice = document.getElementById("display-total-price");
  const priceForm = document.getElementById("form-total-price");
  let dataSetPrice = priceForm.dataset.price;
  let adultTarget = 0;
  let childrenTarget = 0;
  let infantTarget = 0;

  const insertTotalPrice = () => {
    displayPrice.innerText = `${
      adultTarget * parseInt(dataSetPrice) +
      childrenTarget * parseInt(dataSetPrice) * 0.5 +
      infantTarget * parseInt(dataSetPrice) * 0
    } USD`;
  };

  adult.addEventListener("change", (e) => {
    adultTarget = parseInt(e.currentTarget.value);
    insertTotalPrice();
  });

  children.addEventListener("change", (e) => {
    childrenTarget = parseInt(e.currentTarget.value);
    insertTotalPrice();
  });

  infant.addEventListener("change", (e) => {
    infantTarget = parseInt(e.currentTarget.value);
    insertTotalPrice();
  });
};

export { formTotalPriceCalculation };
