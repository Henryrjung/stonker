import axios from 'axios';

export function getTopHits() {
  return axios.get('/api/tophits');

  }
;

