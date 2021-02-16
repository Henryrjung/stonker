const googleTrends = require('google-trends-api');

const db = require('../../models');

//timezone compared to UTC
const TIMEZONE = -18;

const searchTrends = function(input, date = new Date()) {
  const weekAgo = new Date(date.valueOf - 518400000);
  googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: date,
    timezone: TIMEZONE * 60,
    granularTimeResolution: true
  });
};
