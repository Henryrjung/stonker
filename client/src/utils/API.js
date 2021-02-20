import axios from 'axios';

export function getTopHits() {
  return axios.get('/api/tophits');
}
export function createUser(userdata) {
  console.log('-------------------------axios --------');
  return axios.post('/api/auth/signup', userdata);
}
