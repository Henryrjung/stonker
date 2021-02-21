import axios from 'axios';

export function getTopHits() {
  return axios.get('/api/tophits');
}
export function createUser(userdata) {
  return axios.post('/api/signup', userdata);
}
export function loginUser(userdata) {
  return axios.post('/api/auth/login', userdata);
}
