import mapboxgl from 'mapbox-gl';
import 'mapbox-gl/dist/mapbox-gl.css';

const initMapbox = () => {
  const mapElement = document.getElementById('map');
  const addMarkersToMap = (map, markers) => {
    const popup = new mapboxgl.Popup().setHTML(markers.info_window);
    const element = document.createElement('div');
    element.className = 'marker';
    element.style.backgroundImage = `url('${markers.image_url}')`;
    element.style.backgroundSize = 'cover';
    element.style.width = '50px';
    element.style.height = '50px';
    new mapboxgl.Marker(element)
      .setLngLat([markers.lng, markers.lat])
      .setPopup(popup)
      .addTo(map);
  };

  const fitMapToMarkers = (map, markers) => {
    const bounds = new mapboxgl.LngLatBounds();
    bounds.extend([markers.lng, markers.lat]);
    map.fitBounds(bounds, { padding: 70, maxZoom: 15, duration: 0 });
  };

  if (mapElement) { // only build a map if there's a div#map to inject into
    mapboxgl.accessToken = mapElement.dataset.mapboxApiKey;
    const map = new mapboxgl.Map({
      container: 'map',
      style: 'mapbox://styles/mapbox/streets-v10'
    });
    const markers = JSON.parse(mapElement.dataset.markers);
    addMarkersToMap(map, markers);
    fitMapToMarkers(map, markers);
  }
};

export { initMapbox };