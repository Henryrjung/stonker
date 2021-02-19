import React from "react";
import InfoContainer from "../components/InfoContainer/InfoContainer";
import TradingViewWidget, { Themes } from "react-tradingview-widget";
import Ticker from "../components/Ticker/Ticker";

function Home() {
  return (
    <div>
      <Ticker />
      <TradingViewWidget
        symbol="NASDAQ:AAPL"
        theme={Themes.LIGHT}
        locale="us"
        width="600"
        height="300"
      />
      <InfoContainer />
    </div>
  );
}

export default Home;
