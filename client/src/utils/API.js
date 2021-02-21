import axios from 'axios';

export function getTopHits() {
  return axios.get('/api/tophits');
}
export function createUser(userdata) {
  return axios.post('/api/signup', userdata);
}
