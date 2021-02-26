import React, { Component } from "react";
export default class Marquee extends React.PureComponent {
  constructor(props) {
    super(props);
    this._ref = React.createRef();
  }
  componentDidMount() {
    const script = document.createElement("script");
    script.src =
      "https://s3.tradingview.com/external-embedding/embed-widget-ticker-tape.js";
    script.async = true;
    script.innerHTML = json.stringify({
      showSymbolLogo: true,
      colorTheme: "light",
      isTransparent: false,
      displayMode: "compact",
      locale: "en",
    });
    this._ref.current.appendChild(script);
  }
  render() {
    return (
      <div ref={this._ref}>
        <div></div>
      </div>
    );
  }
}
