using System;
using System.ComponentModel;
using System.Diagnostics.SymbolStore;
using System.Windows.Forms;
using System.Threading;
namespace AT_Lib
{
    public class MainClass
    {

        public static MainForm MyForm;
        public static Thread Thread1;
        [STAThread]
        public static void ShowMainForm()
        {
            if (MyForm == null)
            {
               MyForm = new MainForm();
               Thread1 = new Thread(() => Application.Run(MyForm));
               Thread1.SetApartmentState(ApartmentState.STA);
               Thread1.Start();
               Thread.Sleep(200);
               //UpdateSymbolInfoDouble();
               
            }

        }

        public static void HideMainForm()
        {
            if (MyForm != null)
            {
                MyForm.Dispose();
                MyForm = null;
            }
        }

        public static void UpdateSymbolInfoDouble(
                double symbol_bid=0,
                double symbol_bidhigh = 0,
                double symbol_bidlow = 0,
                double symbol_ask = 0,
                double symbol_askhigh = 0,
                double symbol_asklow = 0,
                double symbol_last = 0,
                double symbol_lasthigh = 0,
                double symbol_lastlow = 0,
                double symbol_volume_real = 0,
                double symbol_volumehigh_real = 0,
                double symbol_volumelow_real = 0,
                double symbol_option_strike = 0,
                double symbol_point = 0,
                double symbol_trade_tick_value = 0,
                double symbol_trade_tick_value_profit = 0,
                double symbol_trade_tick_value_loss = 0,
                double symbol_trade_tick_size = 0,
                double symbol_trade_contract_size = 0,
                double symbol_trade_accrued_interest = 0,
                double symbol_trade_face_value = 0,
                double symbol_trade_liquidity_rate = 0,
                double symbol_volme_min = 0,
                double symbol_volme_max = 0,
                double symbol_volme_step = 0,
                double symbol_volme_limit = 0,
                double symbol_swap_long = 0,
                double symbol_swap_short = 0,
                double symbol_margin_initial = 0,
                double symbol_margin_maintenance = 0,
                double symbol_session_volume = 0,
                double symbol_session_turnover = 0,
                double symbol_session_interest = 0,
                double symbol_session_buy_orders_volume = 0,
                double symbol_session_sell_orders_volume = 0,
                double symbol_session_open = 0,
                double symbol_session_close = 0,
                double symbol_session_aw = 0,
                double symbol_session_price_setlement = 0,
                double symbol_session_price_limit_min = 0,
                double symbol_session_price_limit_max = 0,
                double symbol_margin_hedged = 0
            )
        {
            if (MyForm != null)
            {
                MyForm.bid_data.Text = symbol_bid.ToString("0.00000");
                MyForm.bidhigh_data.Text = symbol_bidhigh.ToString("0.00000");
                MyForm.bidlow_data.Text = symbol_bidlow.ToString("0.00000");

                MyForm.ask_data.Text = symbol_ask.ToString("0.00000");
                MyForm.askhigh_data.Text = symbol_askhigh.ToString("0.00000");
                MyForm.asklow_data.Text = symbol_asklow.ToString("0.00000");

                MyForm.last_data.Text = symbol_last.ToString();
                MyForm.lasthigh_data.Text = symbol_lasthigh.ToString();
                MyForm.lastlow_data.Text = symbol_lastlow.ToString();

                MyForm.volume_real_data.Text = symbol_volume_real.ToString();
                MyForm.volumehigh_real_data.Text = symbol_volumehigh_real.ToString();
                MyForm.volumelow_real_data.Text = symbol_volumelow_real.ToString();

                MyForm.option_strike_data.Text = symbol_option_strike.ToString();
                MyForm.point_data.Text = symbol_point.ToString("0.00000");

                MyForm.trade_tick_value_data.Text = symbol_trade_tick_value.ToString();
                MyForm.trade_tick_value_profit_data.Text = symbol_trade_tick_value_profit.ToString();
                MyForm.trade_tick_value_loss_data.Text = symbol_trade_tick_value_loss.ToString();
                MyForm.trade_tick_size_data.Text = symbol_trade_tick_size.ToString("0.00000");
                MyForm.trade_contract_size_data.Text = symbol_trade_contract_size.ToString();
                MyForm.trade_accrued_interest_data.Text = symbol_trade_accrued_interest.ToString();
                MyForm.trade_face_value_data.Text = symbol_trade_face_value.ToString();
                MyForm.trade_liquidity_rate_data.Text = symbol_trade_liquidity_rate.ToString();

                MyForm.volme_min_data.Text = symbol_volme_min.ToString();
                MyForm.volme_max_data.Text = symbol_volme_max.ToString();
                MyForm.volme_step_data.Text = symbol_volme_step.ToString();
                MyForm.volme_limit_data.Text = symbol_volme_limit.ToString();

                MyForm.swap_long_data.Text = symbol_swap_long.ToString();
                MyForm.swap_short_data.Text = symbol_swap_short.ToString();

                MyForm.margin_initial_data.Text = symbol_margin_initial.ToString();
                MyForm.margin_maintenance_data.Text = symbol_margin_maintenance.ToString();

                MyForm.session_volume_data.Text = symbol_session_volume.ToString();
                MyForm.session_turnover_data.Text = symbol_session_turnover.ToString();
                MyForm.session_interest_data.Text = symbol_session_interest.ToString();
                MyForm.session_buy_orders_volume_data.Text = symbol_session_buy_orders_volume.ToString();
                MyForm.session_sell_orders_volume_data.Text = symbol_session_sell_orders_volume.ToString();
                MyForm.session_open_data.Text = symbol_session_open.ToString();
                MyForm.session_close_data.Text = symbol_session_close.ToString();
                MyForm.session_aw_data.Text = symbol_session_aw.ToString();
                MyForm.session_price_setlement_data.Text = symbol_session_price_setlement.ToString();
                MyForm.session_price_limit_min_data.Text = symbol_session_price_limit_min.ToString();
                MyForm.session_price_limit_max_data.Text = symbol_session_price_limit_max.ToString();

                MyForm.margin_hedged_data.Text = symbol_margin_hedged.ToString();

            }
        }

        public static void UpdateAccountInfoDouble(
            double account_balace=0
            )
        {
            MyForm.account_balance_data.Text = account_balace.ToString();
            
        }

    }
}

/*
                
                symbol_bid,
                symbol_bidhigh,
                symbol_bidlow,
                symbol_ask,
                symbol_askhigh,
                symbol_asklow,

                symbol_last,
                symbol_lasthigh,
                symbol_lastlow,

                symbol_volume_real,
                symbol_volumehigh_real,
                symbol_volumelow_real,

                symbol_option_strike,
                symbol_point,

                symbol_trade_tick_value,
                symbol_trade_tick_value_profit,
                symbol_trade_tick_value_loss,
                symbol_trade_tick_size,
                symbol_trade_contract_size,
                symbol_trade_accrued_interest,
                symbol_trade_face_value,
                symbol_trade_liquidity_rate,

                symbol_volme_min,
                symbol_volme_max,
                symbol_volme_step,
                symbol_volme_limit,

                symbol_swap_long,
                symbol_swap_short,

                symbol_margin_initial,
                symbol_margin_maintenance,

                symbol_session_volume,
                symbol_session_turnover,
                symbol_session_interest,
                symbol_session_buy_orders_volume,
                symbol_session_sell_orders_volume,
                symbol_session_open,
                symbol_session_close,
                symbol_session_aw,
                symbol_session_price_setlement,
                symbol_session_price_limit_min,
                symbol_session_price_limit_max,

                symbol_margin_hedged
                
                 */
