import places from 'places.js';

const initAutocomplete = () => {
  const addressInput = document.getElementById('kid_localisation');
  if (addressInput) {
    places({ container: addressInput });
  }
};

export { initAutocomplete };