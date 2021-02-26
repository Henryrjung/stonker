import axios from 'axios';

export default {
  getPreviousClose: function(symbol) {
    return axios.get('https://apidojo-yahoo-finance-v1.p.rapidapi.com/market/get-spark?symbols=' + symbol + '&interval=1m&range=1d')
  }
}