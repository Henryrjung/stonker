const googleTrends = require('google-trends-api');

// timezone compared to UTC
const TIMEZONE = -18;

const searchTrends = function(input, date) {
  let today = new Date(date);
  let weekAgo = new Date(date - 6 * 24 * 60 * 60 * 1000);
  today.setUTCHours(0, 0, 0, 0);
  weekAgo.setUTCHours(0, 0, 0, 0);
  return googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: date,
    timezone: TIMEZONE * 60,
    granularTimeResolution: true
  });
};

module.exports = searchTrends;
