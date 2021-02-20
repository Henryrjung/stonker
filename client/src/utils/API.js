import axios from 'axios';

export default {
  getTopHits: function () {
    return axios.get('/api/tophits');
  }
};

