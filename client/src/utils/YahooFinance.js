import axios from 'axios';

export default {
    getSymbol: function() {
        return axios.get('https://apidojo-yahoo-finance-v1.p.rapidapi.com/market/get-trending-tickers')
    },
    getNews: function() {
        return axios.get('https://apidojo-yahoo-finance-v1.p.rapidapi.com/news/v2/get-details')
    }
};
