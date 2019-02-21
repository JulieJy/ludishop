import "bootstrap";

// CSS
import 'mapbox-gl/dist/mapbox-gl.css';
// internal imports
import { initMapbox } from '../plugins/init_mapbox';

initMapbox();

import $clamp from "clamp-js";

document.querySelectorAll('.card-text p').forEach((elem) => {
  $clamp(elem, { clamp: 3 });
});
