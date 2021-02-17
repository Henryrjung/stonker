import axios from 'axios';

export default {
  // Gets all books
  getTopHits: function () {
    return axios.get('/api/tophits');
  }
};
