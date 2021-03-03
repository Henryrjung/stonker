import axios from 'axios';

export function getTopHits() {
  return axios.get('/api/tophits');
}

export function getOneHit(id) {
  return axios.get('/api/tophits/' + id);
}

export function createUser(userdata) {
  return axios.post('/api/signup', userdata);
}

export function loginUser(userdata) {
  return axios.post('/api/auth/login', userdata);
}

export function newComment(commentData) {
  return axios.post('/api/comments', commentData);
}

export function getCommentsByHit(id) {
  return axios.get('/api/comments/' + id)
}
