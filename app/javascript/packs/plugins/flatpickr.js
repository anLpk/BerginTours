import flatpickr from "flatpickr";

// console.log("im in the file");
const initFlatpickr = () => {
  const startDateInput = document.getElementById("booking_start_date");
  if (startDateInput) {
    flatpickr(startDateInput, {
      altInput: true,
      altFormat: "F j, Y",
      minDate: "today",
      dateFormat: "Y-m-d",
    });
  }
};

export { initFlatpickr };
