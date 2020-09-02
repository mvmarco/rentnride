import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.querySelector('#autocomplete');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };