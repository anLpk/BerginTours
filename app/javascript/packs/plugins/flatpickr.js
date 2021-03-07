import flatpickr from "flatpickr";

// console.log("im in the file");
const initFlatpickr = () => {
  flatpickr(startDateInput, {
    minDate: "today",
    disable: unavailableDates,
    dateFormat: "Y-m-d",
  });
};

export { initFlatpickr };
