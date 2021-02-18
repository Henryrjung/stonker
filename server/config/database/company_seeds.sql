-- paste this into server.js 
const monday = new Date('2021-02-15')
db.Company.bulkCreate([
{ symbol: `MMM`, company: `3M Company`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ABT`, company: `Abbott Laboratories`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ABBV`, company: `AbbVie Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ABMD`, company: `Abiomed`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ACN`, company: `Accenture`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ATVI`, company: `Activision Blizzard`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `ADBE`, company: `Adobe Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `AMD`, company: `Advanced Micro Devices`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `AAP`, company: `Advance Auto Parts`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `AES`, company: `AES Corp`, sector: `Utilities`, checkedAt: monday },
{ symbol: `AFL`, company: `Aflac`, sector: `Financials`, checkedAt: monday },
{ symbol: `A`, company: `Agilent Technologies`, sector: `Health Care`, checkedAt: monday },
{ symbol: `APD`, company: `Air Products & Chemicals`, sector: `Materials`, checkedAt: monday },
{ symbol: `AKAM`, company: `Akamai Technologies`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ALK`, company: `Alaska Air Group`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ALB`, company: `Albemarle Corporation`, sector: `Materials`, checkedAt: monday },
{ symbol: `ARE`, company: `Alexandria Real Estate Equities`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `ALXN`, company: `Alexion Pharmaceuticals`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ALGN`, company: `Align Technology`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ALLE`, company: `Allegion`, sector: `Industrials`, checkedAt: monday },
{ symbol: `LNT`, company: `Alliant Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `ALL`, company: `Allstate Corp`, sector: `Financials`, checkedAt: monday },
{ symbol: `GOOGL`, company: `Alphabet Inc. (Class A)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `GOOG`, company: `Alphabet Inc. (Class C)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `MO`, company: `Altria Group Inc`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `AMZN`, company: `Amazon.com Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `AMCR`, company: `Amcor`, sector: `Materials`, checkedAt: monday },
{ symbol: `AEE`, company: `Ameren Corp`, sector: `Utilities`, checkedAt: monday },
{ symbol: `AAL`, company: `American Airlines Group`, sector: `Industrials`, checkedAt: monday },
{ symbol: `AEP`, company: `American Electric Power`, sector: `Utilities`, checkedAt: monday },
{ symbol: `AXP`, company: `American Express`, sector: `Financials`, checkedAt: monday },
{ symbol: `AIG`, company: `American International Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `AMT`, company: `American Tower Corp.`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `AWK`, company: `American Water Works`, sector: `Utilities`, checkedAt: monday },
{ symbol: `AMP`, company: `Ameriprise Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `ABC`, company: `AmerisourceBergen`, sector: `Health Care`, checkedAt: monday },
{ symbol: `AME`, company: `Ametek`, sector: `Industrials`, checkedAt: monday },
{ symbol: `AMGN`, company: `Amgen Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `APH`, company: `Amphenol Corp`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ADI`, company: `Analog Devices, Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ANSS`, company: `ANSYS, Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ANTM`, company: `Anthem`, sector: `Health Care`, checkedAt: monday },
{ symbol: `AON`, company: `Aon plc`, sector: `Financials`, checkedAt: monday },
{ symbol: `AOS`, company: `A.O. Smith Corp`, sector: `Industrials`, checkedAt: monday },
{ symbol: `APA`, company: `Apache Corporation`, sector: `Energy`, checkedAt: monday },
{ symbol: `AAPL`, company: `Apple Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `AMAT`, company: `Applied Materials Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `APTV`, company: `Aptiv PLC`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `ADM`, company: `Archer-Daniels-Midland Co`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `ANET`, company: `Arista Networks`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `AJG`, company: `Arthur J. Gallagher & Co.`, sector: `Financials`, checkedAt: monday },
{ symbol: `AIZ`, company: `Assurant`, sector: `Financials`, checkedAt: monday },
{ symbol: `T`, company: `AT&T Inc.`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `ATO`, company: `Atmos Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `ADSK`, company: `Autodesk Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ADP`, company: `Automatic Data Processing`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `AZO`, company: `AutoZone Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `AVB`, company: `AvalonBay Communities`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `AVY`, company: `Avery Dennison Corp`, sector: `Materials`, checkedAt: monday },
{ symbol: `BKR`, company: `Baker Hughes Co`, sector: `Energy`, checkedAt: monday },
{ symbol: `BLL`, company: `Ball Corp`, sector: `Materials`, checkedAt: monday },
{ symbol: `BAC`, company: `Bank of America Corp`, sector: `Financials`, checkedAt: monday },
{ symbol: `BK`, company: `The Bank of New York Mellon`, sector: `Financials`, checkedAt: monday },
{ symbol: `BAX`, company: `Baxter International Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `BDX`, company: `Becton Dickinson`, sector: `Health Care`, checkedAt: monday },
{ symbol: `BRK.B`, company: `Berkshire Hathaway`, sector: `Financials`, checkedAt: monday },
{ symbol: `BBY`, company: `Best Buy Co. Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `BIO`, company: `Bio-Rad Laboratories`, sector: `Health Care`, checkedAt: monday },
{ symbol: `BIIB`, company: `Biogen Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `BLK`, company: `BlackRock`, sector: `Financials`, checkedAt: monday },
{ symbol: `BA`, company: `Boeing Company`, sector: `Industrials`, checkedAt: monday },
{ symbol: `BKNG`, company: `Booking Holdings Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `BWA`, company: `BorgWarner`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `BXP`, company: `Boston Properties`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `BSX`, company: `Boston Scientific`, sector: `Health Care`, checkedAt: monday },
{ symbol: `BMY`, company: `Bristol-Myers Squibb`, sector: `Health Care`, checkedAt: monday },
{ symbol: `AVGO`, company: `Broadcom Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `BR`, company: `Broadridge Financial Solutions`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `BF.B`, company: `Brown-Forman Corp.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CHRW`, company: `C. H. Robinson Worldwide`, sector: `Industrials`, checkedAt: monday },
{ symbol: `COG`, company: `Cabot Oil & Gas`, sector: `Energy`, checkedAt: monday },
{ symbol: `CDNS`, company: `Cadence Design Systems`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `CPB`, company: `Campbell Soup`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `COF`, company: `Capital One Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `CAH`, company: `Cardinal Health Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `KMX`, company: `Carmax Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `CCL`, company: `Carnival Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `CARR`, company: `Carrier Global`, sector: `Industrials`, checkedAt: monday },
{ symbol: `CTLT`, company: `Catalent`, sector: `Health Care`, checkedAt: monday },
{ symbol: `CAT`, company: `Caterpillar Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `CBOE`, company: `Cboe Global Markets`, sector: `Financials`, checkedAt: monday },
{ symbol: `CBRE`, company: `CBRE Group`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `CDW`, company: `CDW`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `CE`, company: `Celanese`, sector: `Materials`, checkedAt: monday },
{ symbol: `CNC`, company: `Centene Corporation`, sector: `Health Care`, checkedAt: monday },
{ symbol: `CNP`, company: `CenterPoint Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `CERN`, company: `Cerner`, sector: `Health Care`, checkedAt: monday },
{ symbol: `CF`, company: `CF Industries Holdings Inc`, sector: `Materials`, checkedAt: monday },
{ symbol: `SCHW`, company: `Charles Schwab Corporation`, sector: `Financials`, checkedAt: monday },
{ symbol: `CHTR`, company: `Charter Communications`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `CVX`, company: `Chevron Corp.`, sector: `Energy`, checkedAt: monday },
{ symbol: `CMG`, company: `Chipotle Mexican Grill`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `CB`, company: `Chubb Limited`, sector: `Financials`, checkedAt: monday },
{ symbol: `CHD`, company: `Church & Dwight`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CI`, company: `Cigna`, sector: `Health Care`, checkedAt: monday },
{ symbol: `CINF`, company: `Cincinnati Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `CTAS`, company: `Cintas Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `CSCO`, company: `Cisco Systems`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `C`, company: `Citigroup Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `CFG`, company: `Citizens Financial Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `CTXS`, company: `Citrix Systems`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `CLX`, company: `The Clorox Company`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CME`, company: `CME Group Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `CMS`, company: `CMS Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `KO`, company: `Coca-Cola Company`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CTSH`, company: `Cognizant Technology Solutions`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `CL`, company: `Colgate-Palmolive`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CMCSA`, company: `Comcast Corp.`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `CMA`, company: `Comerica Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `CAG`, company: `Conagra Brands`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `COP`, company: `ConocoPhillips`, sector: `Energy`, checkedAt: monday },
{ symbol: `ED`, company: `Consolidated Edison`, sector: `Utilities`, checkedAt: monday },
{ symbol: `STZ`, company: `Constellation Brands`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `COO`, company: `The Cooper Companies`, sector: `Health Care`, checkedAt: monday },
{ symbol: `CPRT`, company: `Copart Inc`, sector: `Industrials`, checkedAt: monday },
{ symbol: `GLW`, company: `Corning Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `CTVA`, company: `Corteva`, sector: `Materials`, checkedAt: monday },
{ symbol: `COST`, company: `Costco Wholesale Corp.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `CCI`, company: `Crown Castle`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `CSX`, company: `CSX Corp.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `CMI`, company: `Cummins Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `CVS`, company: `CVS Health`, sector: `Health Care`, checkedAt: monday },
{ symbol: `DHI`, company: `D. R. Horton`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `DHR`, company: `Danaher Corp.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `DRI`, company: `Darden Restaurants`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `DVA`, company: `DaVita Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `DE`, company: `Deere & Co.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `DAL`, company: `Delta Air Lines Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `XRAY`, company: `Dentsply Sirona`, sector: `Health Care`, checkedAt: monday },
{ symbol: `DVN`, company: `Devon Energy`, sector: `Energy`, checkedAt: monday },
{ symbol: `DXCM`, company: `DexCom`, sector: `Health Care`, checkedAt: monday },
{ symbol: `FANG`, company: `Diamondback Energy`, sector: `Energy`, checkedAt: monday },
{ symbol: `DLR`, company: `Digital Realty Trust Inc`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `DFS`, company: `Discover Financial Services`, sector: `Financials`, checkedAt: monday },
{ symbol: `DISCA`, company: `Discovery, Inc. (Series A)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `DISCK`, company: `Discovery, Inc. (Series C)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `DISH`, company: `Dish Network`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `DG`, company: `Dollar General`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `DLTR`, company: `Dollar Tree`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `D`, company: `Dominion Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `DPZ`, company: `Domino's Pizza`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `DOV`, company: `Dover Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `DOW`, company: `Dow Inc.`, sector: `Materials`, checkedAt: monday },
{ symbol: `DTE`, company: `DTE Energy Co.`, sector: `Utilities`, checkedAt: monday },
{ symbol: `DUK`, company: `Duke Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `DRE`, company: `Duke Realty Corp`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `DD`, company: `DuPont de Nemours Inc`, sector: `Materials`, checkedAt: monday },
{ symbol: `DXC`, company: `DXC Technology`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `EMN`, company: `Eastman Chemical`, sector: `Materials`, checkedAt: monday },
{ symbol: `ETN`, company: `Eaton Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `EBAY`, company: `eBay Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `ECL`, company: `Ecolab Inc.`, sector: `Materials`, checkedAt: monday },
{ symbol: `EIX`, company: `Edison Int'l`, sector: `Utilities`, checkedAt: monday },
{ symbol: `EW`, company: `Edwards Lifesciences`, sector: `Health Care`, checkedAt: monday },
{ symbol: `EA`, company: `Electronic Arts`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `EMR`, company: `Emerson Electric Company`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ENPH`, company: `Enphase Energy`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ETR`, company: `Entergy Corp.`, sector: `Utilities`, checkedAt: monday },
{ symbol: `EOG`, company: `EOG Resources`, sector: `Energy`, checkedAt: monday },
{ symbol: `EFX`, company: `Equifax Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `EQIX`, company: `Equinix`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `EQR`, company: `Equity Residential`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `ESS`, company: `Essex Property Trust, Inc.`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `EL`, company: `Estée Lauder Companies`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `ETSY`, company: `Etsy`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `EVRG`, company: `Evergy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `ES`, company: `Eversource Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `RE`, company: `Everest Re Group Ltd.`, sector: `Financials`, checkedAt: monday },
{ symbol: `EXC`, company: `Exelon Corp.`, sector: `Utilities`, checkedAt: monday },
{ symbol: `EXPE`, company: `Expedia Group`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `EXPD`, company: `Expeditors`, sector: `Industrials`, checkedAt: monday },
{ symbol: `EXR`, company: `Extra Space Storage`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `XOM`, company: `Exxon Mobil Corp.`, sector: `Energy`, checkedAt: monday },
{ symbol: `FFIV`, company: `F5 Networks`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FB`, company: `Facebook, Inc.`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `FAST`, company: `Fastenal Co`, sector: `Industrials`, checkedAt: monday },
{ symbol: `FRT`, company: `Federal Realty Investment Trust`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `FDX`, company: `FedEx Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `FIS`, company: `Fidelity National Information Services`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FITB`, company: `Fifth Third Bancorp`, sector: `Financials`, checkedAt: monday },
{ symbol: `FE`, company: `FirstEnergy Corp`, sector: `Utilities`, checkedAt: monday },
{ symbol: `FRC`, company: `First Republic Bank`, sector: `Financials`, checkedAt: monday },
{ symbol: `FISV`, company: `Fiserv Inc`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FLT`, company: `FleetCor Technologies Inc`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FLIR`, company: `FLIR Systems`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FLS`, company: `Flowserve Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `FMC`, company: `FMC Corporation`, sector: `Materials`, checkedAt: monday },
{ symbol: `F`, company: `Ford Motor Company`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `FTNT`, company: `Fortinet`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FTV`, company: `Fortive Corp`, sector: `Industrials`, checkedAt: monday },
{ symbol: `FBHS`, company: `Fortune Brands Home & Security`, sector: `Industrials`, checkedAt: monday },
{ symbol: `FOXA`, company: `Fox Corporation (Class A)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `FOX`, company: `Fox Corporation (Class B)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `BEN`, company: `Franklin Resources`, sector: `Financials`, checkedAt: monday },
{ symbol: `FCX`, company: `Freeport-McMoRan Inc.`, sector: `Materials`, checkedAt: monday },
{ symbol: `GPS`, company: `Gap Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `GRMN`, company: `Garmin Ltd.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `IT`, company: `Gartner Inc`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `GD`, company: `General Dynamics`, sector: `Industrials`, checkedAt: monday },
{ symbol: `GE`, company: `General Electric`, sector: `Industrials`, checkedAt: monday },
{ symbol: `GIS`, company: `General Mills`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `GM`, company: `General Motors`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `GPC`, company: `Genuine Parts`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `GILD`, company: `Gilead Sciences`, sector: `Health Care`, checkedAt: monday },
{ symbol: `GL`, company: `Globe Life Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `GPN`, company: `Global Payments Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `GS`, company: `Goldman Sachs Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `GWW`, company: `Grainger (W.W.) Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `HAL`, company: `Halliburton Co.`, sector: `Energy`, checkedAt: monday },
{ symbol: `HBI`, company: `Hanesbrands Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `HIG`, company: `Hartford Financial Svc.Gp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `HAS`, company: `Hasbro Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `HCA`, company: `HCA Healthcare`, sector: `Health Care`, checkedAt: monday },
{ symbol: `PEAK`, company: `Healthpeak Properties`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `HSIC`, company: `Henry Schein`, sector: `Health Care`, checkedAt: monday },
{ symbol: `HSY`, company: `The Hershey Company`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `HES`, company: `Hess Corporation`, sector: `Energy`, checkedAt: monday },
{ symbol: `HPE`, company: `Hewlett Packard Enterprise`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `HLT`, company: `Hilton Worldwide Holdings Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `HFC`, company: `HollyFrontier Corp`, sector: `Energy`, checkedAt: monday },
{ symbol: `HOLX`, company: `Hologic`, sector: `Health Care`, checkedAt: monday },
{ symbol: `HD`, company: `Home Depot`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `HON`, company: `Honeywell Int'l Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `HRL`, company: `Hormel Foods Corp.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `HST`, company: `Host Hotels & Resorts`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `HWM`, company: `Howmet Aerospace`, sector: `Industrials`, checkedAt: monday },
{ symbol: `HPQ`, company: `HP Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `HUM`, company: `Humana Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `HBAN`, company: `Huntington Bancshares`, sector: `Financials`, checkedAt: monday },
{ symbol: `HII`, company: `Huntington Ingalls Industries`, sector: `Industrials`, checkedAt: monday },
{ symbol: `IEX`, company: `IDEX Corporation`, sector: `Industrials`, checkedAt: monday },
{ symbol: `IDXX`, company: `Idexx Laboratories`, sector: `Health Care`, checkedAt: monday },
{ symbol: `INFO`, company: `IHS Markit`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ITW`, company: `Illinois Tool Works`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ILMN`, company: `Illumina Inc`, sector: `Health Care`, checkedAt: monday },
{ symbol: `INCY`, company: `Incyte`, sector: `Health Care`, checkedAt: monday },
{ symbol: `IR`, company: `Ingersoll Rand`, sector: `Industrials`, checkedAt: monday },
{ symbol: `INTC`, company: `Intel Corp.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ICE`, company: `Intercontinental Exchange`, sector: `Financials`, checkedAt: monday },
{ symbol: `IBM`, company: `International Business Machines`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `IP`, company: `International Paper`, sector: `Materials`, checkedAt: monday },
{ symbol: `IPG`, company: `Interpublic Group`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `IFF`, company: `International Flavors & Fragrances`, sector: `Materials`, checkedAt: monday },
{ symbol: `INTU`, company: `Intuit Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ISRG`, company: `Intuitive Surgical Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `IVZ`, company: `Invesco Ltd.`, sector: `Financials`, checkedAt: monday },
{ symbol: `IPGP`, company: `IPG Photonics Corp.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `IQV`, company: `IQVIA Holdings Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `IRM`, company: `Iron Mountain Incorporated`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `JKHY`, company: `Jack Henry & Associates`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `J`, company: `Jacobs Engineering Group`, sector: `Industrials`, checkedAt: monday },
{ symbol: `JBHT`, company: `J. B. Hunt Transport Services`, sector: `Industrials`, checkedAt: monday },
{ symbol: `SJM`, company: `JM Smucker`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `JNJ`, company: `Johnson & Johnson`, sector: `Health Care`, checkedAt: monday },
{ symbol: `JCI`, company: `Johnson Controls International`, sector: `Industrials`, checkedAt: monday },
{ symbol: `JPM`, company: `JPMorgan Chase & Co.`, sector: `Financials`, checkedAt: monday },
{ symbol: `JNPR`, company: `Juniper Networks`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `KSU`, company: `Kansas City Southern`, sector: `Industrials`, checkedAt: monday },
{ symbol: `K`, company: `Kellogg Co.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `KEY`, company: `KeyCorp`, sector: `Financials`, checkedAt: monday },
{ symbol: `KEYS`, company: `Keysight Technologies`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `KMB`, company: `Kimberly-Clark`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `KIM`, company: `Kimco Realty`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `KMI`, company: `Kinder Morgan`, sector: `Energy`, checkedAt: monday },
{ symbol: `KLAC`, company: `KLA Corporation`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `KHC`, company: `Kraft Heinz Co`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `KR`, company: `Kroger Co.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `LB`, company: `L Brands Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LHX`, company: `L3Harris Technologies`, sector: `Industrials`, checkedAt: monday },
{ symbol: `LH`, company: `Laboratory Corp. of America Holding`, sector: `Health Care`, checkedAt: monday },
{ symbol: `LRCX`, company: `Lam Research`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `LW`, company: `Lamb Weston Holdings Inc`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `LVS`, company: `Las Vegas Sands`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LEG`, company: `Leggett & Platt`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LDOS`, company: `Leidos Holdings`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `LEN`, company: `Lennar Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LLY`, company: `Lilly (Eli) & Co.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `LNC`, company: `Lincoln National`, sector: `Financials`, checkedAt: monday },
{ symbol: `LIN`, company: `Linde plc`, sector: `Materials`, checkedAt: monday },
{ symbol: `LYV`, company: `Live Nation Entertainment`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `LKQ`, company: `LKQ Corporation`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LMT`, company: `Lockheed Martin Corp.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `L`, company: `Loews Corp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `LOW`, company: `Lowe's Cos.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `LUMN`, company: `Lumen Technologies`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `LYB`, company: `LyondellBasell`, sector: `Materials`, checkedAt: monday },
{ symbol: `MTB`, company: `M&T Bank`, sector: `Financials`, checkedAt: monday },
{ symbol: `MRO`, company: `Marathon Oil Corp.`, sector: `Energy`, checkedAt: monday },
{ symbol: `MPC`, company: `Marathon Petroleum`, sector: `Energy`, checkedAt: monday },
{ symbol: `MKTX`, company: `MarketAxess`, sector: `Financials`, checkedAt: monday },
{ symbol: `MAR`, company: `Marriott International`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `MMC`, company: `Marsh & McLennan`, sector: `Financials`, checkedAt: monday },
{ symbol: `MLM`, company: `Martin Marietta Materials`, sector: `Materials`, checkedAt: monday },
{ symbol: `MAS`, company: `Masco Corp.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `MA`, company: `Mastercard Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MKC`, company: `McCormick & Co.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `MXIM`, company: `Maxim Integrated Products`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MCD`, company: `McDonald's Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `MCK`, company: `McKesson Corp.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `MDT`, company: `Medtronic plc`, sector: `Health Care`, checkedAt: monday },
{ symbol: `MRK`, company: `Merck & Co.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `MET`, company: `MetLife Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `MTD`, company: `Mettler Toledo`, sector: `Health Care`, checkedAt: monday },
{ symbol: `MGM`, company: `MGM Resorts International`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `MCHP`, company: `Microchip Technology`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MU`, company: `Micron Technology`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MSFT`, company: `Microsoft Corp.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MAA`, company: `Mid-America Apartments`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `MHK`, company: `Mohawk Industries`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TAP`, company: `Molson Coors Beverage Company`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `MDLZ`, company: `Mondelez International`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `MNST`, company: `Monster Beverage`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `MCO`, company: `Moody's Corp`, sector: `Financials`, checkedAt: monday },
{ symbol: `MS`, company: `Morgan Stanley`, sector: `Financials`, checkedAt: monday },
{ symbol: `MOS`, company: `The Mosaic Company`, sector: `Materials`, checkedAt: monday },
{ symbol: `MSI`, company: `Motorola Solutions Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `MSCI`, company: `MSCI Inc`, sector: `Financials`, checkedAt: monday },
{ symbol: `NDAQ`, company: `Nasdaq, Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `NTAP`, company: `NetApp`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `NFLX`, company: `Netflix Inc.`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `NWL`, company: `Newell Brands`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `NEM`, company: `Newmont Corporation`, sector: `Materials`, checkedAt: monday },
{ symbol: `NWSA`, company: `News Corp (Class A)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `NWS`, company: `News Corp (Class B)`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `NEE`, company: `NextEra Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `NLSN`, company: `Nielsen Holdings`, sector: `Industrials`, checkedAt: monday },
{ symbol: `NKE`, company: `Nike, Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `NI`, company: `NiSource Inc.`, sector: `Utilities`, checkedAt: monday },
{ symbol: `NSC`, company: `Norfolk Southern Corp.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `NTRS`, company: `Northern Trust Corp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `NOC`, company: `Northrop Grumman`, sector: `Industrials`, checkedAt: monday },
{ symbol: `NLOK`, company: `NortonLifeLock`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `NCLH`, company: `Norwegian Cruise Line Holdings`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `NOV`, company: `NOV Inc.`, sector: `Energy`, checkedAt: monday },
{ symbol: `NRG`, company: `NRG Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `NUE`, company: `Nucor Corp.`, sector: `Materials`, checkedAt: monday },
{ symbol: `NVDA`, company: `Nvidia Corporation`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `NVR`, company: `NVR, Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `ORLY`, company: `O'Reilly Automotive`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `OXY`, company: `Occidental Petroleum`, sector: `Energy`, checkedAt: monday },
{ symbol: `ODFL`, company: `Old Dominion Freight Line`, sector: `Industrials`, checkedAt: monday },
{ symbol: `OMC`, company: `Omnicom Group`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `OKE`, company: `Oneok`, sector: `Energy`, checkedAt: monday },
{ symbol: `ORCL`, company: `Oracle Corp.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `OTIS`, company: `Otis Worldwide`, sector: `Industrials`, checkedAt: monday },
{ symbol: `PCAR`, company: `Paccar`, sector: `Industrials`, checkedAt: monday },
{ symbol: `PKG`, company: `Packaging Corporation of America`, sector: `Materials`, checkedAt: monday },
{ symbol: `PH`, company: `Parker-Hannifin`, sector: `Industrials`, checkedAt: monday },
{ symbol: `PAYX`, company: `Paychex Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `PAYC`, company: `Paycom`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `PYPL`, company: `PayPal`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `PNR`, company: `Pentair plc`, sector: `Industrials`, checkedAt: monday },
{ symbol: `PBCT`, company: `People's United Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `PEP`, company: `PepsiCo Inc.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `PKI`, company: `PerkinElmer`, sector: `Health Care`, checkedAt: monday },
{ symbol: `PRGO`, company: `Perrigo`, sector: `Health Care`, checkedAt: monday },
{ symbol: `PFE`, company: `Pfizer Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `PM`, company: `Philip Morris International`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `PSX`, company: `Phillips 66`, sector: `Energy`, checkedAt: monday },
{ symbol: `PNW`, company: `Pinnacle West Capital`, sector: `Utilities`, checkedAt: monday },
{ symbol: `PXD`, company: `Pioneer Natural Resources`, sector: `Energy`, checkedAt: monday },
{ symbol: `PNC`, company: `PNC Financial Services`, sector: `Financials`, checkedAt: monday },
{ symbol: `POOL`, company: `Pool Corporation`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `PPG`, company: `PPG Industries`, sector: `Materials`, checkedAt: monday },
{ symbol: `PPL`, company: `PPL Corp.`, sector: `Utilities`, checkedAt: monday },
{ symbol: `PFG`, company: `Principal Financial Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `PG`, company: `Procter & Gamble`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `PGR`, company: `Progressive Corp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `PLD`, company: `Prologis`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `PRU`, company: `Prudential Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `PEG`, company: `Public Service Enterprise Group (PSEG)`, sector: `Utilities`, checkedAt: monday },
{ symbol: `PSA`, company: `Public Storage`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `PHM`, company: `PulteGroup`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `PVH`, company: `PVH Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `QRVO`, company: `Qorvo`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `PWR`, company: `Quanta Services Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `QCOM`, company: `Qualcomm`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `DGX`, company: `Quest Diagnostics`, sector: `Health Care`, checkedAt: monday },
{ symbol: `RL`, company: `Ralph Lauren Corporation`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `RJF`, company: `Raymond James Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `RTX`, company: `Raytheon Technologies`, sector: `Industrials`, checkedAt: monday },
{ symbol: `O`, company: `Realty Income Corporation`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `REG`, company: `Regency Centers Corporation`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `REGN`, company: `Regeneron Pharmaceuticals`, sector: `Health Care`, checkedAt: monday },
{ symbol: `RF`, company: `Regions Financial Corp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `RSG`, company: `Republic Services Inc`, sector: `Industrials`, checkedAt: monday },
{ symbol: `RMD`, company: `ResMed`, sector: `Health Care`, checkedAt: monday },
{ symbol: `RHI`, company: `Robert Half International`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ROK`, company: `Rockwell Automation Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ROL`, company: `Rollins, Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ROP`, company: `Roper Technologies`, sector: `Industrials`, checkedAt: monday },
{ symbol: `ROST`, company: `Ross Stores`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `RCL`, company: `Royal Caribbean Group`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `SPGI`, company: `S&P Global Inc.`, sector: `Financials`, checkedAt: monday },
{ symbol: `CRM`, company: `Salesforce.com`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `SBAC`, company: `SBA Communications`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `SLB`, company: `Schlumberger Ltd.`, sector: `Energy`, checkedAt: monday },
{ symbol: `STX`, company: `Seagate Technology`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `SEE`, company: `Sealed Air`, sector: `Materials`, checkedAt: monday },
{ symbol: `SRE`, company: `Sempra Energy`, sector: `Utilities`, checkedAt: monday },
{ symbol: `NOW`, company: `ServiceNow`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `SHW`, company: `Sherwin-Williams`, sector: `Materials`, checkedAt: monday },
{ symbol: `SPG`, company: `Simon Property Group Inc`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `SWKS`, company: `Skyworks Solutions`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `SLG`, company: `SL Green Realty`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `SNA`, company: `Snap-on`, sector: `Industrials`, checkedAt: monday },
{ symbol: `SO`, company: `Southern Company`, sector: `Utilities`, checkedAt: monday },
{ symbol: `LUV`, company: `Southwest Airlines`, sector: `Industrials`, checkedAt: monday },
{ symbol: `SWK`, company: `Stanley Black & Decker`, sector: `Industrials`, checkedAt: monday },
{ symbol: `SBUX`, company: `Starbucks Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `STT`, company: `State Street Corp.`, sector: `Financials`, checkedAt: monday },
{ symbol: `STE`, company: `Steris`, sector: `Health Care`, checkedAt: monday },
{ symbol: `SYK`, company: `Stryker Corp.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `SIVB`, company: `SVB Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `SYF`, company: `Synchrony Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `SNPS`, company: `Synopsys Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `SYY`, company: `Sysco Corp.`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `TMUS`, company: `T-Mobile US`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `TROW`, company: `T. Rowe Price Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `TTWO`, company: `Take-Two Interactive`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `TPR`, company: `Tapestry, Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TGT`, company: `Target Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TEL`, company: `TE Connectivity Ltd.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `FTI`, company: `TechnipFMC`, sector: `Energy`, checkedAt: monday },
{ symbol: `TDY`, company: `Teledyne Technologies`, sector: `Industrials`, checkedAt: monday },
{ symbol: `TFX`, company: `Teleflex`, sector: `Health Care`, checkedAt: monday },
{ symbol: `TER`, company: `Teradyne`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `TSLA`, company: `Tesla, Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TXN`, company: `Texas Instruments`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `TXT`, company: `Textron Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `TMO`, company: `Thermo Fisher Scientific`, sector: `Health Care`, checkedAt: monday },
{ symbol: `TJX`, company: `TJX Companies Inc.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TSCO`, company: `Tractor Supply Company`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `TT`, company: `Trane Technologies plc`, sector: `Industrials`, checkedAt: monday },
{ symbol: `TDG`, company: `TransDigm Group`, sector: `Industrials`, checkedAt: monday },
{ symbol: `TRV`, company: `The Travelers Companies`, sector: `Financials`, checkedAt: monday },
{ symbol: `TRMB`, company: `Trimble Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `TFC`, company: `Truist Financial`, sector: `Financials`, checkedAt: monday },
{ symbol: `TWTR`, company: `Twitter, Inc.`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `TYL`, company: `Tyler Technologies`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `TSN`, company: `Tyson Foods`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `UDR`, company: `UDR, Inc.`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `ULTA`, company: `Ulta Beauty`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `USB`, company: `U.S. Bancorp`, sector: `Financials`, checkedAt: monday },
{ symbol: `UAA`, company: `Under Armour (Class A)`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `UA`, company: `Under Armour (Class C)`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `UNP`, company: `Union Pacific Corp`, sector: `Industrials`, checkedAt: monday },
{ symbol: `UAL`, company: `United Airlines Holdings`, sector: `Industrials`, checkedAt: monday },
{ symbol: `UNH`, company: `UnitedHealth Group Inc.`, sector: `Health Care`, checkedAt: monday },
{ symbol: `UPS`, company: `United Parcel Service`, sector: `Industrials`, checkedAt: monday },
{ symbol: `URI`, company: `United Rentals, Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `UHS`, company: `Universal Health Services`, sector: `Health Care`, checkedAt: monday },
{ symbol: `UNM`, company: `Unum Group`, sector: `Financials`, checkedAt: monday },
{ symbol: `VLO`, company: `Valero Energy`, sector: `Energy`, checkedAt: monday },
{ symbol: `VAR`, company: `Varian Medical Systems`, sector: `Health Care`, checkedAt: monday },
{ symbol: `VTR`, company: `Ventas Inc`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `VRSN`, company: `Verisign Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `VRSK`, company: `Verisk Analytics`, sector: `Industrials`, checkedAt: monday },
{ symbol: `VZ`, company: `Verizon Communications`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `VRTX`, company: `Vertex Pharmaceuticals Inc`, sector: `Health Care`, checkedAt: monday },
{ symbol: `VFC`, company: `VF Corporation`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `VIAC`, company: `ViacomCBS`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `VTRS`, company: `Viatris`, sector: `Health Care`, checkedAt: monday },
{ symbol: `V`, company: `Visa Inc.`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `VNT`, company: `Vontier`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `VNO`, company: `Vornado Realty Trust`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `VMC`, company: `Vulcan Materials`, sector: `Materials`, checkedAt: monday },
{ symbol: `WRB`, company: `W. R. Berkley Corporation`, sector: `Financials`, checkedAt: monday },
{ symbol: `WAB`, company: `Westinghouse Air Brake Technologies Corp`, sector: `Industrials`, checkedAt: monday },
{ symbol: `WMT`, company: `Walmart`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `WBA`, company: `Walgreens Boots Alliance`, sector: `Consumer Staples`, checkedAt: monday },
{ symbol: `DIS`, company: `The Walt Disney Company`, sector: `Communication Services`, checkedAt: monday },
{ symbol: `WM`, company: `Waste Management Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `WAT`, company: `Waters Corporation`, sector: `Health Care`, checkedAt: monday },
{ symbol: `WEC`, company: `WEC Energy Group`, sector: `Utilities`, checkedAt: monday },
{ symbol: `WFC`, company: `Wells Fargo`, sector: `Financials`, checkedAt: monday },
{ symbol: `WELL`, company: `Welltower Inc.`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `WST`, company: `West Pharmaceutical Services`, sector: `Health Care`, checkedAt: monday },
{ symbol: `WDC`, company: `Western Digital`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `WU`, company: `Western Union Co`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `WRK`, company: `WestRock`, sector: `Materials`, checkedAt: monday },
{ symbol: `WY`, company: `Weyerhaeuser`, sector: `Real Estate`, checkedAt: monday },
{ symbol: `WHR`, company: `Whirlpool Corp.`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `WMB`, company: `Williams Companies`, sector: `Energy`, checkedAt: monday },
{ symbol: `WLTW`, company: `Willis Towers Watson`, sector: `Financials`, checkedAt: monday },
{ symbol: `WYNN`, company: `Wynn Resorts Ltd`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `XEL`, company: `Xcel Energy Inc`, sector: `Utilities`, checkedAt: monday },
{ symbol: `XRX`, company: `Xerox`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `XLNX`, company: `Xilinx`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `XYL`, company: `Xylem Inc.`, sector: `Industrials`, checkedAt: monday },
{ symbol: `YUM`, company: `Yum! Brands Inc`, sector: `Consumer Discretionary`, checkedAt: monday },
{ symbol: `ZBRA`, company: `Zebra Technologies`, sector: `Information Technology`, checkedAt: monday },
{ symbol: `ZBH`, company: `Zimmer Biomet`, sector: `Health Care`, checkedAt: monday },
{ symbol: `ZION`, company: `Zions Bancorp`, sector: `Financials`, checkedAt: monday },
{ symbol: `ZTS`, company: `Zoetis`, sector: `Health Care`, checkedAt: monday },
])




-- use stonker;

-- DROP TABLE IF EXISTS top_hits;

-- CREATE TABLE company_info (
-- symbol varchar(10)
-- ,company_name varchar(60)
-- ,sector varchar(60)
-- );

-- INSERT INTO company_info (symbol,company_name,sector)
-- values
--  ('MMM', '3M Company', 'Industrials')
-- ,('AOS', 'A.O. Smith Corp', 'Industrials')
-- ,('ABT', 'Abbott Laboratories', 'Health Care')
-- ,('ABBV', 'AbbVie Inc.', 'Health Care')
-- ,('ABMD', 'ABIOMED Inc', 'Health Care')
-- ,('ACN', 'Accenture plc', 'Information Technology')
-- ,('ATVI', 'Activision Blizzard', 'Communication Services')
-- ,('ADBE', 'Adobe Inc.', 'Information Technology')
-- ,('AAP', 'Advance Auto Parts', 'Consumer Discretionary')
-- ,('AMD', 'Advanced Micro Devices Inc', 'Information Technology')
-- ,('AES', 'AES Corp', 'Utilities')
-- ,('AFL', 'AFLAC Inc', 'Financials')
-- ,('A', 'Agilent Technologies Inc', 'Health Care')
-- ,('APD', 'Air Products & Chemicals Inc', 'Materials')
-- ,('AKAM', 'Akamai Technologies Inc', 'Information Technology')
-- ,('ALK', 'Alaska Air Group Inc', 'Industrials')
-- ,('ARE', 'Alexandria Real Estate Equities', 'Real Estate')
-- ,('ALB', 'Albemarle Corp', 'Materials')
-- ,('ALXN', 'Alexion Pharmaceuticals', 'Health Care')
-- ,('ALGN', 'Align Technology', 'Health Care')
-- ,('ALLE', 'Allegion', 'Industrials')
-- ,('LNT', 'Alliant Energy Corp', 'Utilities')
-- ,('ALL', 'Allstate Corp', 'Financials')
-- ,('GOOGL', 'Alphabet Inc. (Class A)', 'Communication Services')
-- ,('GOOG', 'Alphabet Inc. (Class C)', 'Communication Services')
-- ,('MO', 'Altria Group Inc', 'Consumer Staples')
-- ,('AMZN', 'Amazon.com Inc.', 'Consumer Discretionary')
-- ,('AMCR', 'Amcor plc', 'Materials')
-- ,('AEE', 'Ameren Corp', 'Utilities')
-- ,('AAL', 'American Airlines Group', 'Industrials')
-- ,('AEP', 'American Electric Power', 'Utilities')
-- ,('AXP', 'American Express Co', 'Financials')
-- ,('AIG', 'American International Group', 'Financials')
-- ,('AMT', 'American Tower Corp.', 'Real Estate')
-- ,('AWK', 'American Water Works Company Inc', 'Utilities')
-- ,('AMP', 'Ameriprise Financial', 'Financials')
-- ,('ABC', 'AmerisourceBergen Corp', 'Health Care')
-- ,('AME', 'AMETEK Inc.', 'Industrials')
-- ,('AMGN', 'Amgen Inc.', 'Health Care')
-- ,('APH', 'Amphenol Corp', 'Information Technology')
-- ,('ADI', 'Analog Devices Inc.', 'Information Technology')
-- ,('ANSS', 'ANSYS Inc.', 'Information Technology')
-- ,('ANTM', 'Anthem', 'Health Care')
-- ,('AON', 'Aon plc', 'Financials')
-- ,('APA', 'Apache Corporation', 'Energy')
-- ,('AAPL', 'Apple Inc.', 'Information Technology')
-- ,('AMAT', 'Applied Materials Inc.', 'Information Technology')
-- ,('APTV', 'Aptiv PLC', 'Consumer Discretionary')
-- ,('ADM', 'Archer-Daniels-Midland Co', 'Consumer Staples')
-- ,('ANET', 'Arista Networks', 'Information Technology')
-- ,('AJG', 'Arthur J. Gallagher & Co.', 'Financials')
-- ,('AIZ', 'Assurant', 'Financials')
-- ,('T', 'AT&T Inc.', 'Communication Services')
-- ,('ATO', 'Atmos Energy', 'Utilities')
-- ,('ADSK', 'Autodesk Inc.', 'Information Technology')
-- ,('ADP', 'Automatic Data Processing', 'Information Technology')
-- ,('AZO', 'AutoZone Inc', 'Consumer Discretionary')
-- ,('AVB', 'AvalonBay Communities', 'Real Estate')
-- ,('AVY', 'Avery Dennison Corp', 'Materials')
-- ,('BKR', 'Baker Hughes Co', 'Energy')
-- ,('BLL', 'Ball Corp', 'Materials')
-- ,('BAC', 'Bank of America Corp', 'Financials')
-- ,('BAX', 'Baxter International Inc.', 'Health Care')
-- ,('BDX', 'Becton Dickinson', 'Health Care')
-- ,('BRK.B', 'Berkshire Hathaway', 'Financials')
-- ,('BBY', 'Best Buy Co. Inc.', 'Consumer Discretionary')
-- ,('BIO', 'Bio-Rad Laboratories', 'Health Care')
-- ,('BIIB', 'Biogen Inc.', 'Health Care')
-- ,('BLK', 'BlackRock', 'Financials')
-- ,('BA', 'Boeing Company', 'Industrials')
-- ,('BKNG', 'Booking Holdings Inc', 'Consumer Discretionary')
-- ,('BWA', 'BorgWarner', 'Consumer Discretionary')
-- ,('BXP', 'Boston Properties', 'Real Estate')
-- ,('BSX', 'Boston Scientific', 'Health Care')
-- ,('BMY', 'Bristol-Myers Squibb', 'Health Care')
-- ,('AVGO', 'Broadcom Inc.', 'Information Technology')
-- ,('BR', 'Broadridge Financial Solutions', 'Information Technology')
-- ,('BF.B', 'Brown-Forman Corp.', 'Consumer Staples')
-- ,('CHRW', 'C. H. Robinson Worldwide', 'Industrials')
-- ,('COG', 'Cabot Oil & Gas', 'Energy')
-- ,('CDNS', 'Cadence Design Systems', 'Information Technology')
-- ,('CPB', 'Campbell Soup', 'Consumer Staples')
-- ,('COF', 'Capital One Financial', 'Financials')
-- ,('CAH', 'Cardinal Health Inc.', 'Health Care')
-- ,('KMX', 'Carmax Inc', 'Consumer Discretionary')
-- ,('CCL', 'Carnival Corp.', 'Consumer Discretionary')
-- ,('CARR', 'Carrier Global', 'Industrials')
-- ,('CTLT', 'Catalent', 'Health Care')
-- ,('CAT', 'Caterpillar Inc.', 'Industrials')
-- ,('CBOE', 'Cboe Global Markets', 'Financials')
-- ,('CBRE', 'CBRE Group', 'Real Estate')
-- ,('CDW', 'CDW', 'Information Technology')
-- ,('CE', 'Celanese', 'Materials')
-- ,('CNC', 'Centene Corporation', 'Health Care')
-- ,('CNP', 'CenterPoint Energy', 'Utilities')
-- ,('CERN', 'Cerner', 'Health Care')
-- ,('CF', 'CF Industries Holdings Inc', 'Materials')
-- ,('SCHW', 'Charles Schwab Corporation', 'Financials')
-- ,('CHTR', 'Charter Communications', 'Communication Services')
-- ,('CVX', 'Chevron Corp.', 'Energy')
-- ,('CMG', 'Chipotle Mexican Grill', 'Consumer Discretionary')
-- ,('CB', 'Chubb Limited', 'Financials')
-- ,('CHD', 'Church & Dwight', 'Consumer Staples')
-- ,('CI', 'CIGNA Corp.', 'Health Care')
-- ,('CINF', 'Cincinnati Financial', 'Financials')
-- ,('CTAS', 'Cintas Corporation', 'Industrials')
-- ,('CSCO', 'Cisco Systems', 'Information Technology')
-- ,('C', 'Citigroup Inc.', 'Financials')
-- ,('CFG', 'Citizens Financial Group', 'Financials')
-- ,('CTXS', 'Citrix Systems', 'Information Technology')
-- ,('CME', 'CME Group Inc.', 'Financials')
-- ,('CMS', 'CMS Energy', 'Utilities')
-- ,('KO', 'Coca-Cola Company', 'Consumer Staples')
-- ,('CTSH', 'Cognizant Technology Solutions', 'Information Technology')
-- ,('CL', 'Colgate-Palmolive', 'Consumer Staples')
-- ,('CMCSA', 'Comcast Corp.', 'Communication Services')
-- ,('CMA', 'Comerica Inc.', 'Financials')
-- ,('CAG', 'Conagra Brands', 'Consumer Staples')
-- ,('COP', 'ConocoPhillips', 'Energy')
-- ,('ED', 'Consolidated Edison', 'Utilities')
-- ,('STZ', 'Constellation Brands', 'Consumer Staples')
-- ,('CPRT', 'Copart Inc', 'Industrials')
-- ,('GLW', 'Corning Inc.', 'Information Technology')
-- ,('CTVA', 'Corteva', 'Materials')
-- ,('COST', 'Costco Wholesale Corp.', 'Consumer Staples')
-- ,('CCI', 'Crown Castle International Corp.', 'Real Estate')
-- ,('CSX', 'CSX Corp.', 'Industrials')
-- ,('CMI', 'Cummins Inc.', 'Industrials')
-- ,('CVS', 'CVS Health', 'Health Care')
-- ,('DHI', 'D. R. Horton', 'Consumer Discretionary')
-- ,('DHR', 'Danaher Corp.', 'Health Care')
-- ,('DRI', 'Darden Restaurants', 'Consumer Discretionary')
-- ,('DVA', 'DaVita Inc.', 'Health Care')
-- ,('DE', 'Deere & Co.', 'Industrials')
-- ,('DAL', 'Delta Air Lines Inc.', 'Industrials')
-- ,('XRAY', 'Dentsply Sirona', 'Health Care')
-- ,('DVN', 'Devon Energy', 'Energy')
-- ,('DXCM', 'DexCom', 'Health Care')
-- ,('FANG', 'Diamondback Energy', 'Energy')
-- ,('DLR', 'Digital Realty Trust Inc', 'Real Estate')
-- ,('DFS', 'Discover Financial Services', 'Financials')
-- ,('DISCA', 'Discovery Inc. (Series A)', 'Communication Services')
-- ,('DISCK', 'Discovery Inc. (Series C)', 'Communication Services')
-- ,('DISH', 'Dish Network', 'Communication Services')
-- ,('DG', 'Dollar General', 'Consumer Discretionary')
-- ,('DLTR', 'Dollar Tree', 'Consumer Discretionary')
-- ,('D', 'Dominion Energy', 'Utilities')
-- ,('DPZ', 'Dominos Pizza', 'Consumer Discretionary')
-- ,('DOV', 'Dover Corporation', 'Industrials')
-- ,('DOW', 'Dow Inc.', 'Materials')
-- ,('DTE', 'DTE Energy Co.', 'Utilities')
-- ,('DUK', 'Duke Energy', 'Utilities')
-- ,('DRE', 'Duke Realty Corp', 'Real Estate')
-- ,('DD', 'DuPont de Nemours Inc', 'Materials')
-- ,('DXC', 'DXC Technology', 'Information Technology')
-- ,('EMN', 'Eastman Chemical', 'Materials')
-- ,('ETN', 'Eaton Corporation', 'Industrials')
-- ,('EBAY', 'eBay Inc.', 'Consumer Discretionary')
-- ,('ECL', 'Ecolab Inc.', 'Materials')
-- ,('EIX', 'Edison Intl', 'Utilities')
-- ,('EW', 'Edwards Lifesciences', 'Health Care')
-- ,('EA', 'Electronic Arts', 'Communication Services')
-- ,('EMR', 'Emerson Electric Company', 'Industrials')
-- ,('ENPH', 'Enphase Energy', 'Information Technology')
-- ,('ETR', 'Entergy Corp.', 'Utilities')
-- ,('EOG', 'EOG Resources', 'Energy')
-- ,('EFX', 'Equifax Inc.', 'Industrials')
-- ,('EQIX', 'Equinix', 'Real Estate')
-- ,('EQR', 'Equity Residential', 'Real Estate')
-- ,('ESS', 'Essex Property Trust Inc.', 'Real Estate')
-- ,('EL', 'Estée Lauder Companies', 'Consumer Staples')
-- ,('ETSY', 'Etsy', 'Consumer Discretionary')
-- ,('RE', 'Everest Re Group Ltd.', 'Financials')
-- ,('EVRG', 'Evergy', 'Utilities')
-- ,('ES', 'Eversource Energy', 'Utilities')
-- ,('EXC', 'Exelon Corp.', 'Utilities')
-- ,('EXPE', 'Expedia Group', 'Consumer Discretionary')
-- ,('EXPD', 'Expeditors', 'Industrials')
-- ,('EXR', 'Extra Space Storage', 'Real Estate')
-- ,('XOM', 'Exxon Mobil Corp.', 'Energy')
-- ,('FFIV', 'F5 Networks', 'Information Technology')
-- ,('FB', 'Facebook Inc.', 'Communication Services')
-- ,('FAST', 'Fastenal Co', 'Industrials')
-- ,('FRT', 'Federal Realty Investment Trust', 'Real Estate')
-- ,('FDX', 'FedEx Corporation', 'Industrials')
-- ,('FIS', 'Fidelity National Information Services', 'Information Technology')
-- ,('FITB', 'Fifth Third Bancorp', 'Financials')
-- ,('FRC', 'First Republic Bank', 'Financials')
-- ,('FE', 'FirstEnergy Corp', 'Utilities')
-- ,('FISV', 'Fiserv Inc', 'Information Technology')
-- ,('FLT', 'FleetCor Technologies Inc', 'Information Technology')
-- ,('FLIR', 'FLIR Systems', 'Information Technology')
-- ,('FLS', 'Flowserve Corporation', 'Industrials')
-- ,('FMC', 'FMC Corporation', 'Materials')
-- ,('F', 'Ford Motor Company', 'Consumer Discretionary')
-- ,('FTNT', 'Fortinet', 'Information Technology')
-- ,('FTV', 'Fortive Corp', 'Industrials')
-- ,('FBHS', 'Fortune Brands Home & Security', 'Industrials')
-- ,('FOXA', 'Fox Corporation (Class A)', 'Communication Services')
-- ,('FOX', 'Fox Corporation (Class B)', 'Communication Services')
-- ,('BEN', 'Franklin Resources', 'Financials')
-- ,('FCX', 'Freeport-McMoRan Inc.', 'Materials')
-- ,('GPS', 'Gap Inc.', 'Consumer Discretionary')
-- ,('GRMN', 'Garmin Ltd.', 'Consumer Discretionary')
-- ,('IT', 'Gartner Inc', 'Information Technology')
-- ,('GD', 'General Dynamics', 'Industrials')
-- ,('GE', 'General Electric', 'Industrials')
-- ,('GIS', 'General Mills', 'Consumer Staples')
-- ,('GM', 'General Motors', 'Consumer Discretionary')
-- ,('GPC', 'Genuine Parts', 'Consumer Discretionary')
-- ,('GILD', 'Gilead Sciences', 'Health Care')
-- ,('GPN', 'Global Payments Inc.', 'Information Technology')
-- ,('GL', 'Globe Life Inc.', 'Financials')
-- ,('GS', 'Goldman Sachs Group', 'Financials')
-- ,('GWW', 'Grainger (W.W.) Inc.', 'Industrials')
-- ,('HAL', 'Halliburton Co.', 'Energy')
-- ,('HBI', 'Hanesbrands Inc', 'Consumer Discretionary')
-- ,('HIG', 'Hartford Financial Svc.Gp.', 'Financials')
-- ,('HAS', 'Hasbro Inc.', 'Consumer Discretionary')
-- ,('HCA', 'HCA Healthcare', 'Health Care')
-- ,('PEAK', 'Healthpeak Properties', 'Real Estate')
-- ,('HSIC', 'Henry Schein', 'Health Care')
-- ,('HES', 'Hess Corporation', 'Energy')
-- ,('HPE', 'Hewlett Packard Enterprise', 'Information Technology')
-- ,('HLT', 'Hilton Worldwide Holdings Inc', 'Consumer Discretionary')
-- ,('HFC', 'HollyFrontier Corp', 'Energy')
-- ,('HOLX', 'Hologic', 'Health Care')
-- ,('HD', 'Home Depot', 'Consumer Discretionary')
-- ,('HON', 'Honeywell Intl Inc.', 'Industrials')
-- ,('HRL', 'Hormel Foods Corp.', 'Consumer Staples')
-- ,('HST', 'Host Hotels & Resorts', 'Real Estate')
-- ,('HWM', 'Howmet Aerospace', 'Industrials')
-- ,('HPQ', 'HP Inc.', 'Information Technology')
-- ,('HUM', 'Humana Inc.', 'Health Care')
-- ,('HBAN', 'Huntington Bancshares', 'Financials')
-- ,('HII', 'Huntington Ingalls Industries', 'Industrials')
-- ,('IEX', 'IDEX Corporation', 'Industrials')
-- ,('IDXX', 'IDEXX Laboratories', 'Health Care')
-- ,('INFO', 'IHS Markit Ltd.', 'Industrials')
-- ,('ITW', 'Illinois Tool Works', 'Industrials')
-- ,('ILMN', 'Illumina Inc', 'Health Care')
-- ,('INCY', 'Incyte', 'Health Care')
-- ,('IR', 'Ingersoll Rand', 'Industrials')
-- ,('INTC', 'Intel Corp.', 'Information Technology')
-- ,('ICE', 'Intercontinental Exchange', 'Financials')
-- ,('IBM', 'International Business Machines', 'Information Technology')
-- ,('IFF', 'International Flavors & Fragrances', 'Materials')
-- ,('IP', 'International Paper', 'Materials')
-- ,('IPG', 'Interpublic Group', 'Communication Services')
-- ,('INTU', 'Intuit Inc.', 'Information Technology')
-- ,('ISRG', 'Intuitive Surgical Inc.', 'Health Care')
-- ,('IVZ', 'Invesco Ltd.', 'Financials')
-- ,('IPGP', 'IPG Photonics Corp.', 'Information Technology')
-- ,('IQV', 'IQVIA Holdings Inc.', 'Health Care')
-- ,('IRM', 'Iron Mountain Incorporated', 'Real Estate')
-- ,('JBHT', 'J. B. Hunt Transport Services', 'Industrials')
-- ,('JKHY', 'Jack Henry & Associates', 'Information Technology')
-- ,('J', 'Jacobs Engineering Group', 'Industrials')
-- ,('SJM', 'JM Smucker', 'Consumer Staples')
-- ,('JNJ', 'Johnson & Johnson', 'Health Care')
-- ,('JCI', 'Johnson Controls International', 'Industrials')
-- ,('JPM', 'JPMorgan Chase & Co.', 'Financials')
-- ,('JNPR', 'Juniper Networks', 'Information Technology')
-- ,('KSU', 'Kansas City Southern', 'Industrials')
-- ,('K', 'Kellogg Co.', 'Consumer Staples')
-- ,('KEY', 'KeyCorp', 'Financials')
-- ,('KEYS', 'Keysight Technologies', 'Information Technology')
-- ,('KMB', 'Kimberly-Clark', 'Consumer Staples')
-- ,('KIM', 'Kimco Realty', 'Real Estate')
-- ,('KMI', 'Kinder Morgan', 'Energy')
-- ,('KLAC', 'KLA Corporation', 'Information Technology')
-- ,('KHC', 'Kraft Heinz Co', 'Consumer Staples')
-- ,('KR', 'Kroger Co.', 'Consumer Staples')
-- ,('LB', 'L Brands Inc.', 'Consumer Discretionary')
-- ,('LHX', 'L3Harris Technologies', 'Industrials')
-- ,('LH', 'Laboratory Corp. of America Holding', 'Health Care')
-- ,('LRCX', 'Lam Research', 'Information Technology')
-- ,('LW', 'Lamb Weston Holdings Inc', 'Consumer Staples')
-- ,('LVS', 'Las Vegas Sands', 'Consumer Discretionary')
-- ,('LEG', 'Leggett & Platt', 'Consumer Discretionary')
-- ,('LDOS', 'Leidos Holdings', 'Information Technology')
-- ,('LEN', 'Lennar Corp.', 'Consumer Discretionary')
-- ,('LLY', 'Lilly (Eli) & Co.', 'Health Care')
-- ,('LNC', 'Lincoln National', 'Financials')
-- ,('LIN', 'Linde plc', 'Materials')
-- ,('LYV', 'Live Nation Entertainment', 'Communication Services')
-- ,('LKQ', 'LKQ Corporation', 'Consumer Discretionary')
-- ,('LMT', 'Lockheed Martin Corp.', 'Industrials')
-- ,('L', 'Loews Corp.', 'Financials')
-- ,('LOW', 'Lowes Cos.', 'Consumer Discretionary')
-- ,('LUMN', 'Lumen Technologies', 'Communication Services')
-- ,('LYB', 'LyondellBasell', 'Materials')
-- ,('MTB', 'M&T Bank Corp.', 'Financials')
-- ,('MRO', 'Marathon Oil Corp.', 'Energy')
-- ,('MPC', 'Marathon Petroleum', 'Energy')
-- ,('MKTX', 'MarketAxess', 'Financials')
-- ,('MAR', 'Marriott Intl.', 'Consumer Discretionary')
-- ,('MMC', 'Marsh & McLennan', 'Financials')
-- ,('MLM', 'Martin Marietta Materials', 'Materials')
-- ,('MAS', 'Masco Corp.', 'Industrials')
-- ,('MA', 'Mastercard Inc.', 'Information Technology')
-- ,('MXIM', 'Maxim Integrated Products Inc', 'Information Technology')
-- ,('MKC', 'McCormick & Co.', 'Consumer Staples')
-- ,('MCD', 'McDonalds Corp.', 'Consumer Discretionary')
-- ,('MCK', 'McKesson Corp.', 'Health Care')
-- ,('MDT', 'Medtronic plc', 'Health Care')
-- ,('MRK', 'Merck & Co.', 'Health Care')
-- ,('MET', 'MetLife Inc.', 'Financials')
-- ,('MTD', 'Mettler Toledo', 'Health Care')
-- ,('MGM', 'MGM Resorts International', 'Consumer Discretionary')
-- ,('MCHP', 'Microchip Technology', 'Information Technology')
-- ,('MU', 'Micron Technology', 'Information Technology')
-- ,('MSFT', 'Microsoft Corp.', 'Information Technology')
-- ,('MAA', 'Mid-America Apartments', 'Real Estate')
-- ,('MHK', 'Mohawk Industries', 'Consumer Discretionary')
-- ,('TAP', 'Molson Coors Beverage Company', 'Consumer Staples')
-- ,('MDLZ', 'Mondelez International', 'Consumer Staples')
-- ,('MNST', 'Monster Beverage', 'Consumer Staples')
-- ,('MCO', 'Moodys Corp', 'Financials')
-- ,('MS', 'Morgan Stanley', 'Financials')
-- ,('MSI', 'Motorola Solutions Inc.', 'Information Technology')
-- ,('MSCI', 'MSCI Inc', 'Financials')
-- ,('NDAQ', 'Nasdaq Inc.', 'Financials')
-- ,('NTAP', 'NetApp', 'Information Technology')
-- ,('NFLX', 'Netflix Inc.', 'Communication Services')
-- ,('NWL', 'Newell Brands', 'Consumer Discretionary')
-- ,('NEM', 'Newmont Corporation', 'Materials')
-- ,('NWSA', 'News Corp (Class A)', 'Communication Services')
-- ,('NWS', 'News Corp (Class B)', 'Communication Services')
-- ,('NEE', 'NextEra Energy', 'Utilities')
-- ,('NLSN', 'Nielsen Holdings', 'Industrials')
-- ,('NKE', 'Nike Inc.', 'Consumer Discretionary')
-- ,('NI', 'NiSource Inc.', 'Utilities')
-- ,('NSC', 'Norfolk Southern Corp.', 'Industrials')
-- ,('NTRS', 'Northern Trust Corp.', 'Financials')
-- ,('NOC', 'Northrop Grumman', 'Industrials')
-- ,('NLOK', 'NortonLifeLock', 'Information Technology')
-- ,('NCLH', 'Norwegian Cruise Line Holdings', 'Consumer Discretionary')
-- ,('NOV', 'NOV Inc.', 'Energy')
-- ,('NRG', 'NRG Energy', 'Utilities')
-- ,('NUE', 'Nucor Corp.', 'Materials')
-- ,('NVDA', 'Nvidia Corporation', 'Information Technology')
-- ,('NVR', 'NVR Inc.', 'Consumer Discretionary')
-- ,('ORLY', 'OReilly Automotive', 'Consumer Discretionary')
-- ,('OXY', 'Occidental Petroleum', 'Energy')
-- ,('ODFL', 'Old Dominion Freight Line', 'Industrials')
-- ,('OMC', 'Omnicom Group', 'Communication Services')
-- ,('OKE', 'ONEOK', 'Energy')
-- ,('ORCL', 'Oracle Corp.', 'Information Technology')
-- ,('OTIS', 'Otis Worldwide', 'Industrials')
-- ,('PCAR', 'PACCAR Inc.', 'Industrials')
-- ,('PKG', 'Packaging Corporation of America', 'Materials')
-- ,('PH', 'Parker-Hannifin', 'Industrials')
-- ,('PAYX', 'Paychex Inc.', 'Information Technology')
-- ,('PAYC', 'Paycom', 'Information Technology')
-- ,('PYPL', 'PayPal', 'Information Technology')
-- ,('PNR', 'Pentair plc', 'Industrials')
-- ,('PBCT', 'Peoples United Financial', 'Financials')
-- ,('PEP', 'PepsiCo Inc.', 'Consumer Staples')
-- ,('PKI', 'PerkinElmer', 'Health Care')
-- ,('PRGO', 'Perrigo', 'Health Care')
-- ,('PFE', 'Pfizer Inc.', 'Health Care')
-- ,('PM', 'Philip Morris International', 'Consumer Staples')
-- ,('PSX', 'Phillips 66', 'Energy')
-- ,('PNW', 'Pinnacle West Capital', 'Utilities')
-- ,('PXD', 'Pioneer Natural Resources', 'Energy')
-- ,('PNC', 'PNC Financial Services', 'Financials')
-- ,('POOL', 'Pool Corporation', 'Consumer Discretionary')
-- ,('PPG', 'PPG Industries', 'Materials')
-- ,('PPL', 'PPL Corp.', 'Utilities')
-- ,('PFG', 'Principal Financial Group', 'Financials')
-- ,('PG', 'Procter & Gamble', 'Consumer Staples')
-- ,('PGR', 'Progressive Corp.', 'Financials')
-- ,('PLD', 'Prologis', 'Real Estate')
-- ,('PRU', 'Prudential Financial', 'Financials')
-- ,('PEG', 'Public Service Enterprise Group (PSEG)', 'Utilities')
-- ,('PSA', 'Public Storage', 'Real Estate')
-- ,('PHM', 'PulteGroup', 'Consumer Discretionary')
-- ,('PVH', 'PVH Corp.', 'Consumer Discretionary')
-- ,('QRVO', 'Qorvo', 'Information Technology')
-- ,('QCOM', 'QUALCOMM Inc.', 'Information Technology')
-- ,('PWR', 'Quanta Services Inc.', 'Industrials')
-- ,('DGX', 'Quest Diagnostics', 'Health Care')
-- ,('RL', 'Ralph Lauren Corporation', 'Consumer Discretionary')
-- ,('RJF', 'Raymond James Financial Inc.', 'Financials')
-- ,('RTX', 'Raytheon Technologies', 'Industrials')
-- ,('O', 'Realty Income Corporation', 'Real Estate')
-- ,('REG', 'Regency Centers Corporation', 'Real Estate')
-- ,('REGN', 'Regeneron Pharmaceuticals', 'Health Care')
-- ,('RF', 'Regions Financial Corp.', 'Financials')
-- ,('RSG', 'Republic Services Inc', 'Industrials')
-- ,('RMD', 'ResMed', 'Health Care')
-- ,('RHI', 'Robert Half International', 'Industrials')
-- ,('ROK', 'Rockwell Automation Inc.', 'Industrials')
-- ,('ROL', 'Rollins Inc.', 'Industrials')
-- ,('ROP', 'Roper Technologies', 'Industrials')
-- ,('ROST', 'Ross Stores', 'Consumer Discretionary')
-- ,('RCL', 'Royal Caribbean Group', 'Consumer Discretionary')
-- ,('SPGI', 'S&P Global Inc.', 'Financials')
-- ,('CRM', 'Salesforce.com', 'Information Technology')
-- ,('SBAC', 'SBA Communications', 'Real Estate')
-- ,('SLB', 'Schlumberger Ltd.', 'Energy')
-- ,('STX', 'Seagate Technology', 'Information Technology')
-- ,('SEE', 'Sealed Air', 'Materials')
-- ,('SRE', 'Sempra Energy', 'Utilities')
-- ,('NOW', 'ServiceNow', 'Information Technology')
-- ,('SHW', 'Sherwin-Williams', 'Materials')
-- ,('SPG', 'Simon Property Group Inc', 'Real Estate')
-- ,('SWKS', 'Skyworks Solutions', 'Information Technology')
-- ,('SLG', 'SL Green Realty', 'Real Estate')
-- ,('SNA', 'Snap-on', 'Industrials')
-- ,('SO', 'Southern Company', 'Utilities')
-- ,('LUV', 'Southwest Airlines', 'Industrials')
-- ,('SWK', 'Stanley Black & Decker', 'Industrials')
-- ,('SBUX', 'Starbucks Corp.', 'Consumer Discretionary')
-- ,('STT', 'State Street Corp.', 'Financials')
-- ,('STE', 'STERIS plc', 'Health Care')
-- ,('SYK', 'Stryker Corp.', 'Health Care')
-- ,('SIVB', 'SVB Financial', 'Financials')
-- ,('SYF', 'Synchrony Financial', 'Financials')
-- ,('SNPS', 'Synopsys Inc.', 'Information Technology')
-- ,('SYY', 'Sysco Corp.', 'Consumer Staples')
-- ,('TMUS', 'T-Mobile US', 'Communication Services')
-- ,('TROW', 'T. Rowe Price Group', 'Financials')
-- ,('TTWO', 'Take-Two Interactive', 'Communication Services')
-- ,('TPR', 'Tapestry Inc.', 'Consumer Discretionary')
-- ,('TGT', 'Target Corp.', 'Consumer Discretionary')
-- ,('TEL', 'TE Connectivity Ltd.', 'Information Technology')
-- ,('FTI', 'TechnipFMC', 'Energy')
-- ,('TDY', 'Teledyne Technologies', 'Industrials')
-- ,('TFX', 'Teleflex', 'Health Care')
-- ,('TER', 'Teradyne', 'Information Technology')
-- ,('TSLA', 'Tesla Inc.', 'Consumer Discretionary')
-- ,('TXN', 'Texas Instruments', 'Information Technology')
-- ,('TXT', 'Textron Inc.', 'Industrials')
-- ,('BK', 'The Bank of New York Mellon', 'Financials')
-- ,('CLX', 'The Clorox Company', 'Consumer Staples')
-- ,('COO', 'The Cooper Companies', 'Health Care')
-- ,('HSY', 'The Hershey Company', 'Consumer Staples')
-- ,('MOS', 'The Mosaic Company', 'Materials')
-- ,('TRV', 'The Travelers Companies Inc.', 'Financials')
-- ,('DIS', 'The Walt Disney Company', 'Communication Services')
-- ,('TMO', 'Thermo Fisher Scientific', 'Health Care')
-- ,('TJX', 'TJX Companies Inc.', 'Consumer Discretionary')
-- ,('TSCO', 'Tractor Supply Company', 'Consumer Discretionary')
-- ,('TT', 'Trane Technologies plc', 'Industrials')
-- ,('TDG', 'TransDigm Group', 'Industrials')
-- ,('TRMB', 'Trimble Inc.', 'Information Technology')
-- ,('TFC', 'Truist Financial', 'Financials')
-- ,('TWTR', 'Twitter Inc.', 'Communication Services')
-- ,('TYL', 'Tyler Technologies', 'Information Technology')
-- ,('TSN', 'Tyson Foods', 'Consumer Staples')
-- ,('USB', 'U.S. Bancorp', 'Financials')
-- ,('UDR', 'UDR Inc.', 'Real Estate')
-- ,('ULTA', 'Ulta Beauty', 'Consumer Discretionary')
-- ,('UAA', 'Under Armour (Class A)', 'Consumer Discretionary')
-- ,('UA', 'Under Armour (Class C)', 'Consumer Discretionary')
-- ,('UNP', 'Union Pacific Corp', 'Industrials')
-- ,('UAL', 'United Airlines Holdings', 'Industrials')
-- ,('UPS', 'United Parcel Service', 'Industrials')
-- ,('URI', 'United Rentals Inc.', 'Industrials')
-- ,('UNH', 'UnitedHealth Group Inc.', 'Health Care')
-- ,('UHS', 'Universal Health Services', 'Health Care')
-- ,('UNM', 'Unum Group', 'Financials')
-- ,('VLO', 'Valero Energy', 'Energy')
-- ,('VAR', 'Varian Medical Systems', 'Health Care')
-- ,('VTR', 'Ventas Inc', 'Real Estate')
-- ,('VRSN', 'Verisign Inc.', 'Information Technology')
-- ,('VRSK', 'Verisk Analytics', 'Industrials')
-- ,('VZ', 'Verizon Communications', 'Communication Services')
-- ,('VRTX', 'Vertex Pharmaceuticals Inc', 'Health Care')
-- ,('VFC', 'VF Corporation', 'Consumer Discretionary')
-- ,('VIAC', 'ViacomCBS', 'Communication Services')
-- ,('VTRS', 'Viatris', 'Health Care')
-- ,('V', 'Visa Inc.', 'Information Technology')
-- ,('VNT', 'Vontier', 'Information Technology')
-- ,('VNO', 'Vornado Realty Trust', 'Real Estate')
-- ,('VMC', 'Vulcan Materials', 'Materials')
-- ,('WRB', 'W. R. Berkley Corporation', 'Financials')
-- ,('WBA', 'Walgreens Boots Alliance', 'Consumer Staples')
-- ,('WMT', 'Walmart', 'Consumer Staples')
-- ,('WM', 'Waste Management Inc.', 'Industrials')
-- ,('WAT', 'Waters Corporation', 'Health Care')
-- ,('WEC', 'WEC Energy Group', 'Utilities')
-- ,('WFC', 'Wells Fargo', 'Financials')
-- ,('WELL', 'Welltower Inc.', 'Real Estate')
-- ,('WST', 'West Pharmaceutical Services', 'Health Care')
-- ,('WDC', 'Western Digital', 'Information Technology')
-- ,('WU', 'Western Union Co', 'Information Technology')
-- ,('WAB', 'Westinghouse Air Brake Technologies Corp', 'Industrials')
-- ,('WRK', 'WestRock', 'Materials')
-- ,('WY', 'Weyerhaeuser', 'Real Estate')
-- ,('WHR', 'Whirlpool Corp.', 'Consumer Discretionary')
-- ,('WMB', 'Williams Companies', 'Energy')
-- ,('WLTW', 'Willis Towers Watson', 'Financials')
-- ,('WYNN', 'Wynn Resorts Ltd', 'Consumer Discretionary')
-- ,('XEL', 'Xcel Energy Inc', 'Utilities')
-- ,('XRX', 'Xerox', 'Information Technology')
-- ,('XLNX', 'Xilinx', 'Information Technology')
-- ,('XYL', 'Xylem Inc.', 'Industrials')
-- ,('YUM', 'Yum! Brands Inc', 'Consumer Discretionary')
-- ,('ZBRA', 'Zebra Technologies', 'Information Technology')
-- ,('ZBH', 'Zimmer Biomet', 'Health Care')
-- ,('ZION', 'Zions Bancorp', 'Financials')
-- ,('ZTS', 'Zoetis', 'Health Care')

