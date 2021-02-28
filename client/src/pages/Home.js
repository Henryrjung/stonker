import React from "react";
import InfoContainer from "../components/InfoContainer/InfoContainer";
import TradingViewWidget, { Themes } from "react-tradingview-widget";
import Marquee from "../components/Marquee/Marquee";
import { useUserProvider } from "../utils/UserProvider";
import LoginForm from "../components/LoginForm/LoginForm";

function Home() {
  const { user, setUser } = useUserProvider();

  if (user.id) {
    return (
      <div>
        <Marquee />
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
  } else {
    return <LoginForm />;
  }
}

export default Home;
