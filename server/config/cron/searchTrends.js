const googleTrends = require('google-trends-api');

const searchTrends = function(input, date) {
  let today = new Date(date);
  let weekAgo = new Date(date - 6 * 24 * 60 * 60 * 1000);
  return googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: today,
    granularTimeResolution: true,
    category: 12
  });
};

module.exports = searchTrends;
