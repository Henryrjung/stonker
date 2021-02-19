const searchTrends = function(input, date) {
  const weekAgo = new Date(date - 6 * 24 * 60 * 60 * 1000);
  return googleTrends.interestOverTime({
    keyword: [input],
    startTime: weekAgo,
    endTime: date,
    timezone: TIMEZONE * 60,
    granularTimeResolution: true
  });
};
