namespace AT_InfoForm
{
    public partial class InfoForm
    {
        public void AA_UpdateSymbolFormDouble(double[] symbolArray)
        {
            this.label_SYMBOL_BID.Text = symbolArray[0].ToString();
            this.label_SYMBOL_BIDHIGH.Text = symbolArray[1].ToString();
            this.label_SYMBOL_BIDLOW.Text = symbolArray[2].ToString();
            this.label_SYMBOL_ASK.Text = symbolArray[3].ToString();
            this.label_SYMBOL_ASKHIGH.Text = symbolArray[4].ToString();
            this.label_SYMBOL_ASKLOW.Text = symbolArray[5].ToString();
            this.label_SYMBOL_LAST.Text = symbolArray[6].ToString();
            this.label_SYMBOL_LASTHIGH.Text = symbolArray[7].ToString();
            this.label_SYMBOL_LASTLOW.Text = symbolArray[8].ToString();
            this.label_SYMBOL_VOLUME_REAL.Text = symbolArray[9].ToString();
            this.label_SYMBOL_VOLUMEHIGH_REAL.Text = symbolArray[10].ToString();
            this.label_SYMBOL_VOLUMELOW_REAL.Text = symbolArray[11].ToString();
            this.label_SYMBOL_OPTION_STRIKE.Text = symbolArray[12].ToString();
            this.label_SYMBOL_POINT.Text = symbolArray[13].ToString("N5");
            this.label_SYMBOL_TRADE_TICK_VALUE.Text = symbolArray[14].ToString();
            this.label_SYMBOL_TRADE_TICK_VALUE_PROFIT.Text = symbolArray[15].ToString();
            this.label_SYMBOL_TRADE_TICK_VALUE_LOSS.Text = symbolArray[16].ToString();
            this.label_SYMBOL_TRADE_TICK_SIZE.Text = symbolArray[17].ToString("N5");
            this.label_SYMBOL_TRADE_CONTRACT_SIZE.Text = symbolArray[18].ToString();
            this.label_SYMBOL_TRADE_ACCRUED_INTEREST.Text = symbolArray[19].ToString();
            this.label_SYMBOL_TRADE_FACE_VALUE.Text = symbolArray[20].ToString();
            this.label_SYMBOL_TRADE_LIQUIDITY_RATE.Text = symbolArray[21].ToString();
            this.label_SYMBOL_VOLUME_MIN.Text = symbolArray[22].ToString();
            this.label_SYMBOL_VOLUME_MAX.Text = symbolArray[23].ToString();
            this.label_SYMBOL_VOLUME_STEP.Text = symbolArray[24].ToString();
            this.label_SYMBOL_VOLUME_LIMIT.Text = symbolArray[25].ToString();
            this.label_SYMBOL_SWAP_LONG.Text = symbolArray[26].ToString();
            this.label_SYMBOL_SWAP_SHORT.Text = symbolArray[27].ToString();
            this.label_SYMBOL_MARGIN_INITIAL.Text = symbolArray[28].ToString();
            this.label_SYMBOL_MARGIN_MAINTENANCE.Text = symbolArray[29].ToString();
            this.label_SYMBOL_SESSION_VOLUME.Text = symbolArray[30].ToString();
            this.label_SYMBOL_SESSION_TURNOVER.Text = symbolArray[31].ToString();
            this.label_SYMBOL_SESSION_INTEREST.Text = symbolArray[32].ToString();
            this.label_SYMBOL_SESSION_BUY_ORDERS_VOLUME.Text = symbolArray[33].ToString();
            this.label_SYMBOL_SESSION_SELL_ORDERS_VOLUME.Text = symbolArray[34].ToString();
            this.label_SYMBOL_SESSION_OPEN.Text = symbolArray[35].ToString();
            this.label_SYMBOL_SESSION_CLOSE.Text = symbolArray[36].ToString();
            this.label_SYMBOL_SESSION_AW.Text = symbolArray[37].ToString();
            this.label_SYMBOL_SESSION_PRICE_SETTLEMENT.Text = symbolArray[38].ToString();
            this.label_SYMBOL_SESSION_PRICE_LIMIT_MIN.Text = symbolArray[39].ToString();
            this.label_SYMBOL_SESSION_PRICE_LIMIT_MAX.Text = symbolArray[40].ToString();
            this.label_SYMBOL_MARGIN_HEDGED.Text = symbolArray[41].ToString();
        }
        public void AA_UpdateAccountFormString(string[] accountArray)
        {
            this.label_ACCOUNT_NAME.Text = accountArray[0];
            this.label_ACCOUNT_SERVER.Text = accountArray[1];
            this.label_ACCOUNT_CURRENCY.Text = accountArray[2];
            this.label_ACCOUNT_COMPANY.Text = accountArray[3];
        }
        public void AA_UpdateAccountFormDouble(double[] accountArray)
        {
            this.label_ACCOUNT_BALANCE.Text = accountArray[0].ToString();
            this.label_ACCOUNT_CREDIT.Text = accountArray[1].ToString();
            this.label_ACCOUNT_PROFIT.Text = accountArray[2].ToString();
            this.label_ACCOUNT_EQUITY.Text = accountArray[3].ToString();
            this.label_ACCOUNT_MARGIN.Text = accountArray[4].ToString();
            this.label_ACCOUNT_MARGIN_FREE.Text = accountArray[5].ToString();
            this.label_ACCOUNT_MARGIN_LEVEL.Text = accountArray[6].ToString();
            this.label_ACCOUNT_MARGIN_SO_CALL.Text = accountArray[7].ToString();
            this.label_ACCOUNT_MARGIN_SO_SO.Text = accountArray[8].ToString();
            this.label_ACCOUNT_MARGIN_INITIAL.Text = accountArray[9].ToString();
            this.label_ACCOUNT_MARGIN_MAINTENANCE.Text = accountArray[10].ToString();
            this.label_ACCOUNT_ASSETS.Text = accountArray[11].ToString();
            this.label_ACCOUNT_LIABILITIES.Text = accountArray[12].ToString();
            this.label_ACCOUNT_COMMISSION_BLOCKED.Text = accountArray[13].ToString();
            
        }
    }

}