const db = require('../../models');

const checkHit = (company, newTrend) => {
  if (newTrend.day6max === 100) {
    const lastTrend = company.Trends[company.Trends.length - 1];
    // day1max is left out because it cannot be compared to newTrend
    const lastTrendMaxes = [
      lastTrend.day2max,
      lastTrend.day3max,
      lastTrend.day4max,
      lastTrend.day5max,
      lastTrend.day6max
    ];
    const lastMax = lastTrendMaxes.reduce(
      (obj, max, idx) => {
        if (obj.max < max) {
          obj.max = max;
          obj.index = idx;
        }
      },
      { max: 0 }
    );
    const diff = newTrend[lastMax.index] - lastMax.max;
    const amount = diff / lastTrend.standardDeviation - 1;
    if (amount > 0) {
      const rating = Math.trunc(amount * 20 + 1);
      db.top_hits.create({ symbol: company.symbol, indicator: rating });
    }
  }
};
// Company {
//      dataValues: {
//        id: 1,
//        symbol: 'MMM',
//        company: '3M Company',
//        sector: 'Industrials',
//        checkedAt: 2021-02-19T02:07:30.000Z,
//        createdAt: 2021-02-19T01:56:52.000Z,
//        updatedAt: 2021-02-19T02:07:30.000Z,
//        Trends: [ [Trend] ]
//      },
//      _previousDataValues: {
//        id: 1,
//        symbol: 'MMM',
//        company: '3M Company',
//        sector: 'Industrials',
//        checkedAt: 2021-02-19T02:07:30.000Z,
//        createdAt: 2021-02-19T01:56:52.000Z,
//        updatedAt: 2021-02-19T02:07:30.000Z,
//        Trends: [ [Trend] ]
//      },
//      _changed: Set(0) {},
//      _options: {
//        isNewRecord: false,
//        _schema: null,
//        _schemaDelimiter: '',
//        include: [ [Object] ],
//        includeNames: [ 'Trends' ],
//        includeMap: { Trends: [Object] },
//        includeValidated: true,
//        attributes: [
//          'id',
//          'symbol',
//          'company',
//          'sector',
//          'checkedAt',
//          'createdAt',
//          'updatedAt'
//        ],
//        raw: true
//      },
//      isNewRecord: false,
//      Trends: [
//        Trend {
//          dataValues: [Object],
//          _previousDataValues: [Object],
//          _changed: Set(0) {},
//          _options: [Object],
//          isNewRecord: false
//        }
//      ]
//    }

//    [
//    Trend {
//      dataValues: {
//        id: 1,
//        day1avg: 76.083,
//        day1max: 97,
//        day2avg: 75.125,
//        day2max: 96,
//        day3avg: 77.583,
//        day3max: 100,
//        day4avg: 80.875,
//        day4max: 94,
//        day5avg: 78.917,
//        day5max: 92,
//        day6avg: 77.292,
//        day6max: 96,
//        standardDeviation: 10.856,
//        createdAt: 2021-02-19T02:07:30.000Z,
//        updatedAt: 2021-02-19T02:07:30.000Z,
//        CompanyId: 1
//      },
//      _previousDataValues: {
//        id: 1,
//        day1avg: 76.083,
//        day1max: 97,
//        day2avg: 75.125,
//        day2max: 96,
//        day3avg: 77.583,
//        day3max: 100,
//        day4avg: 80.875,
//        day4max: 94,
//        day5avg: 78.917,
//        day5max: 92,
//        day6avg: 77.292,
//        day6max: 96,
//        standardDeviation: 10.856,
//        createdAt: 2021-02-19T02:07:30.000Z,
//        updatedAt: 2021-02-19T02:07:30.000Z,
//        CompanyId: 1
//      },
//      _changed: Set(0) {},
//      _options: {
//        isNewRecord: false,
//        _schema: null,
//        _schemaDelimiter: '',
//        include: undefined,
//        includeNames: undefined,
//        includeMap: undefined,
//        includeValidated: true,
//        raw: true,
//        attributes: undefined
//      },
//      isNewRecord: false
//    }
//  ]
