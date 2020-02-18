using System.Drawing.Text;

namespace AT_Lib
{
    public partial class MainForm
    {
        /// <summary>
        /// Required designer variable.
        /// </summary>
        private System.ComponentModel.IContainer components = null;

        /// <summary>
        /// Clean up any resources being used.
        /// </summary>
        /// <param name="disposing">true if managed resources should be disposed; otherwise, false.</param>
        protected override void Dispose(bool disposing)
        {
            if (disposing && (components != null))
            {
                components.Dispose();
            }
            base.Dispose(disposing);
        }

        #region Windows Form Designer generated code

        /// <summary>
        /// Required method for Designer support - do not modify
        /// the contents of this method with the code editor.
        /// </summary>
        private void InitializeComponent()
        {
            this.bid = new System.Windows.Forms.Label();
            this.bid_data = new System.Windows.Forms.Label();
            this.ask = new System.Windows.Forms.Label();
            this.ask_data = new System.Windows.Forms.Label();
            this.button1 = new System.Windows.Forms.Button();
            this.tabControl1 = new System.Windows.Forms.TabControl();
            this.tabPage1 = new System.Windows.Forms.TabPage();
            this.margin_hedged_data = new System.Windows.Forms.Label();
            this.session_price_limit_max_data = new System.Windows.Forms.Label();
            this.session_price_limit_min_data = new System.Windows.Forms.Label();
            this.session_price_setlement_data = new System.Windows.Forms.Label();
            this.session_aw_data = new System.Windows.Forms.Label();
            this.session_close_data = new System.Windows.Forms.Label();
            this.session_open_data = new System.Windows.Forms.Label();
            this.session_sell_orders_volume_data = new System.Windows.Forms.Label();
            this.session_buy_orders_volume_data = new System.Windows.Forms.Label();
            this.session_interest_data = new System.Windows.Forms.Label();
            this.session_turnover_data = new System.Windows.Forms.Label();
            this.session_volume_data = new System.Windows.Forms.Label();
            this.margin_maintenance_data = new System.Windows.Forms.Label();
            this.margin_initial_data = new System.Windows.Forms.Label();
            this.swap_short_data = new System.Windows.Forms.Label();
            this.swap_long_data = new System.Windows.Forms.Label();
            this.volme_limit_data = new System.Windows.Forms.Label();
            this.volme_step_data = new System.Windows.Forms.Label();
            this.volme_max_data = new System.Windows.Forms.Label();
            this.volme_min_data = new System.Windows.Forms.Label();
            this.margin_hedged = new System.Windows.Forms.Label();
            this.session_price_limit_max = new System.Windows.Forms.Label();
            this.session_price_limit_min = new System.Windows.Forms.Label();
            this.session_price_setlement = new System.Windows.Forms.Label();
            this.session_aw = new System.Windows.Forms.Label();
            this.session_close = new System.Windows.Forms.Label();
            this.session_open = new System.Windows.Forms.Label();
            this.session_sell_orders_volume = new System.Windows.Forms.Label();
            this.session_buy_orders_volume = new System.Windows.Forms.Label();
            this.session_interest = new System.Windows.Forms.Label();
            this.session_turnover = new System.Windows.Forms.Label();
            this.session_volume = new System.Windows.Forms.Label();
            this.margin_maintenance = new System.Windows.Forms.Label();
            this.margin_initial = new System.Windows.Forms.Label();
            this.swap_short = new System.Windows.Forms.Label();
            this.swap_long = new System.Windows.Forms.Label();
            this.volme_limit = new System.Windows.Forms.Label();
            this.volme_step = new System.Windows.Forms.Label();
            this.volme_max = new System.Windows.Forms.Label();
            this.volme_min = new System.Windows.Forms.Label();
            this.trade_liquidity_rate_data = new System.Windows.Forms.Label();
            this.trade_face_value_data = new System.Windows.Forms.Label();
            this.trade_accrued_interest_data = new System.Windows.Forms.Label();
            this.trade_contract_size_data = new System.Windows.Forms.Label();
            this.trade_tick_size_data = new System.Windows.Forms.Label();
            this.trade_tick_value_loss_data = new System.Windows.Forms.Label();
            this.trade_tick_value_profit_data = new System.Windows.Forms.Label();
            this.trade_tick_value_data = new System.Windows.Forms.Label();
            this.point_data = new System.Windows.Forms.Label();
            this.option_strike_data = new System.Windows.Forms.Label();
            this.trade_liquidity_rate = new System.Windows.Forms.Label();
            this.trade_face_value = new System.Windows.Forms.Label();
            this.trade_accrued_interest = new System.Windows.Forms.Label();
            this.trade_contract_size = new System.Windows.Forms.Label();
            this.trade_tick_size = new System.Windows.Forms.Label();
            this.trade_tick_value_loss = new System.Windows.Forms.Label();
            this.trade_tick_value_profit = new System.Windows.Forms.Label();
            this.trade_tick_value = new System.Windows.Forms.Label();
            this.point = new System.Windows.Forms.Label();
            this.option_strike = new System.Windows.Forms.Label();
            this.volumelow_real_data = new System.Windows.Forms.Label();
            this.volumehigh_real_data = new System.Windows.Forms.Label();
            this.volume_real_data = new System.Windows.Forms.Label();
            this.volumelow_real = new System.Windows.Forms.Label();
            this.volumehigh_real = new System.Windows.Forms.Label();
            this.volume_real = new System.Windows.Forms.Label();
            this.lastlow_data = new System.Windows.Forms.Label();
            this.lastlow = new System.Windows.Forms.Label();
            this.lasthigh_data = new System.Windows.Forms.Label();
            this.last_data = new System.Windows.Forms.Label();
            this.asklow_data = new System.Windows.Forms.Label();
            this.askhigh_data = new System.Windows.Forms.Label();
            this.bidlow_data = new System.Windows.Forms.Label();
            this.bidhigh_data = new System.Windows.Forms.Label();
            this.lasthigh = new System.Windows.Forms.Label();
            this.last = new System.Windows.Forms.Label();
            this.bidhigh = new System.Windows.Forms.Label();
            this.asklow = new System.Windows.Forms.Label();
            this.bidlow = new System.Windows.Forms.Label();
            this.askhigh = new System.Windows.Forms.Label();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.account_balance = new System.Windows.Forms.Label();
            this.account_balance_data = new System.Windows.Forms.Label();
            this.tabControl1.SuspendLayout();
            this.tabPage1.SuspendLayout();
            this.tabPage2.SuspendLayout();
            this.SuspendLayout();
            // 
            // bid
            // 
            this.bid.AutoSize = true;
            this.bid.Location = new System.Drawing.Point(101, 17);
            this.bid.Name = "bid";
            this.bid.Size = new System.Drawing.Size(25, 13);
            this.bid.TabIndex = 1;
            this.bid.Text = "Bid:";
            // 
            // bid_data
            // 
            this.bid_data.AutoSize = true;
            this.bid_data.Location = new System.Drawing.Point(132, 17);
            this.bid_data.Name = "bid_data";
            this.bid_data.Size = new System.Drawing.Size(23, 13);
            this.bid_data.TabIndex = 2;
            this.bid_data.Text = "null";
            // 
            // ask
            // 
            this.ask.AutoSize = true;
            this.ask.Location = new System.Drawing.Point(98, 68);
            this.ask.Name = "ask";
            this.ask.Size = new System.Drawing.Size(28, 13);
            this.ask.TabIndex = 3;
            this.ask.Text = "Ask:";
            // 
            // ask_data
            // 
            this.ask_data.AutoSize = true;
            this.ask_data.Location = new System.Drawing.Point(132, 68);
            this.ask_data.Name = "ask_data";
            this.ask_data.Size = new System.Drawing.Size(23, 13);
            this.ask_data.TabIndex = 4;
            this.ask_data.Text = "null";
            // 
            // button1
            // 
            this.button1.Anchor = ((System.Windows.Forms.AnchorStyles)((System.Windows.Forms.AnchorStyles.Bottom | System.Windows.Forms.AnchorStyles.Left)));
            this.button1.Location = new System.Drawing.Point(544, 34);
            this.button1.Name = "button1";
            this.button1.Size = new System.Drawing.Size(75, 23);
            this.button1.TabIndex = 5;
            this.button1.Text = "button1";
            this.button1.UseVisualStyleBackColor = true;
            
            // 
            // tabControl1
            // 
            this.tabControl1.Controls.Add(this.tabPage1);
            this.tabControl1.Controls.Add(this.tabPage2);
            this.tabControl1.Location = new System.Drawing.Point(12, 12);
            this.tabControl1.Name = "tabControl1";
            this.tabControl1.SelectedIndex = 0;
            this.tabControl1.Size = new System.Drawing.Size(526, 468);
            this.tabControl1.TabIndex = 6;
            // 
            // tabPage1
            // 
            this.tabPage1.BackColor = System.Drawing.Color.White;
            this.tabPage1.Controls.Add(this.margin_hedged_data);
            this.tabPage1.Controls.Add(this.session_price_limit_max_data);
            this.tabPage1.Controls.Add(this.session_price_limit_min_data);
            this.tabPage1.Controls.Add(this.session_price_setlement_data);
            this.tabPage1.Controls.Add(this.session_aw_data);
            this.tabPage1.Controls.Add(this.session_close_data);
            this.tabPage1.Controls.Add(this.session_open_data);
            this.tabPage1.Controls.Add(this.session_sell_orders_volume_data);
            this.tabPage1.Controls.Add(this.session_buy_orders_volume_data);
            this.tabPage1.Controls.Add(this.session_interest_data);
            this.tabPage1.Controls.Add(this.session_turnover_data);
            this.tabPage1.Controls.Add(this.session_volume_data);
            this.tabPage1.Controls.Add(this.margin_maintenance_data);
            this.tabPage1.Controls.Add(this.margin_initial_data);
            this.tabPage1.Controls.Add(this.swap_short_data);
            this.tabPage1.Controls.Add(this.swap_long_data);
            this.tabPage1.Controls.Add(this.volme_limit_data);
            this.tabPage1.Controls.Add(this.volme_step_data);
            this.tabPage1.Controls.Add(this.volme_max_data);
            this.tabPage1.Controls.Add(this.volme_min_data);
            this.tabPage1.Controls.Add(this.margin_hedged);
            this.tabPage1.Controls.Add(this.session_price_limit_max);
            this.tabPage1.Controls.Add(this.session_price_limit_min);
            this.tabPage1.Controls.Add(this.session_price_setlement);
            this.tabPage1.Controls.Add(this.session_aw);
            this.tabPage1.Controls.Add(this.session_close);
            this.tabPage1.Controls.Add(this.session_open);
            this.tabPage1.Controls.Add(this.session_sell_orders_volume);
            this.tabPage1.Controls.Add(this.session_buy_orders_volume);
            this.tabPage1.Controls.Add(this.session_interest);
            this.tabPage1.Controls.Add(this.session_turnover);
            this.tabPage1.Controls.Add(this.session_volume);
            this.tabPage1.Controls.Add(this.margin_maintenance);
            this.tabPage1.Controls.Add(this.margin_initial);
            this.tabPage1.Controls.Add(this.swap_short);
            this.tabPage1.Controls.Add(this.swap_long);
            this.tabPage1.Controls.Add(this.volme_limit);
            this.tabPage1.Controls.Add(this.volme_step);
            this.tabPage1.Controls.Add(this.volme_max);
            this.tabPage1.Controls.Add(this.volme_min);
            this.tabPage1.Controls.Add(this.trade_liquidity_rate_data);
            this.tabPage1.Controls.Add(this.trade_face_value_data);
            this.tabPage1.Controls.Add(this.trade_accrued_interest_data);
            this.tabPage1.Controls.Add(this.trade_contract_size_data);
            this.tabPage1.Controls.Add(this.trade_tick_size_data);
            this.tabPage1.Controls.Add(this.trade_tick_value_loss_data);
            this.tabPage1.Controls.Add(this.trade_tick_value_profit_data);
            this.tabPage1.Controls.Add(this.trade_tick_value_data);
            this.tabPage1.Controls.Add(this.point_data);
            this.tabPage1.Controls.Add(this.option_strike_data);
            this.tabPage1.Controls.Add(this.trade_liquidity_rate);
            this.tabPage1.Controls.Add(this.trade_face_value);
            this.tabPage1.Controls.Add(this.trade_accrued_interest);
            this.tabPage1.Controls.Add(this.trade_contract_size);
            this.tabPage1.Controls.Add(this.trade_tick_size);
            this.tabPage1.Controls.Add(this.trade_tick_value_loss);
            this.tabPage1.Controls.Add(this.trade_tick_value_profit);
            this.tabPage1.Controls.Add(this.trade_tick_value);
            this.tabPage1.Controls.Add(this.point);
            this.tabPage1.Controls.Add(this.option_strike);
            this.tabPage1.Controls.Add(this.volumelow_real_data);
            this.tabPage1.Controls.Add(this.volumehigh_real_data);
            this.tabPage1.Controls.Add(this.volume_real_data);
            this.tabPage1.Controls.Add(this.volumelow_real);
            this.tabPage1.Controls.Add(this.volumehigh_real);
            this.tabPage1.Controls.Add(this.volume_real);
            this.tabPage1.Controls.Add(this.lastlow_data);
            this.tabPage1.Controls.Add(this.lastlow);
            this.tabPage1.Controls.Add(this.lasthigh_data);
            this.tabPage1.Controls.Add(this.last_data);
            this.tabPage1.Controls.Add(this.asklow_data);
            this.tabPage1.Controls.Add(this.askhigh_data);
            this.tabPage1.Controls.Add(this.bidlow_data);
            this.tabPage1.Controls.Add(this.bidhigh_data);
            this.tabPage1.Controls.Add(this.lasthigh);
            this.tabPage1.Controls.Add(this.bid);
            this.tabPage1.Controls.Add(this.bid_data);
            this.tabPage1.Controls.Add(this.last);
            this.tabPage1.Controls.Add(this.ask_data);
            this.tabPage1.Controls.Add(this.bidhigh);
            this.tabPage1.Controls.Add(this.asklow);
            this.tabPage1.Controls.Add(this.ask);
            this.tabPage1.Controls.Add(this.bidlow);
            this.tabPage1.Controls.Add(this.askhigh);
            this.tabPage1.Location = new System.Drawing.Point(4, 22);
            this.tabPage1.Name = "tabPage1";
            this.tabPage1.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage1.Size = new System.Drawing.Size(518, 442);
            this.tabPage1.TabIndex = 0;
            this.tabPage1.Text = "Symbol";
            // 
            // margin_hedged_data
            // 
            this.margin_hedged_data.AutoSize = true;
            this.margin_hedged_data.Location = new System.Drawing.Point(407, 387);
            this.margin_hedged_data.Name = "margin_hedged_data";
            this.margin_hedged_data.Size = new System.Drawing.Size(23, 13);
            this.margin_hedged_data.TabIndex = 84;
            this.margin_hedged_data.Text = "null";
            // 
            // session_price_limit_max_data
            // 
            this.session_price_limit_max_data.AutoSize = true;
            this.session_price_limit_max_data.Location = new System.Drawing.Point(407, 352);
            this.session_price_limit_max_data.Name = "session_price_limit_max_data";
            this.session_price_limit_max_data.Size = new System.Drawing.Size(23, 13);
            this.session_price_limit_max_data.TabIndex = 83;
            this.session_price_limit_max_data.Text = "null";
            // 
            // session_price_limit_min_data
            // 
            this.session_price_limit_min_data.AutoSize = true;
            this.session_price_limit_min_data.Location = new System.Drawing.Point(407, 339);
            this.session_price_limit_min_data.Name = "session_price_limit_min_data";
            this.session_price_limit_min_data.Size = new System.Drawing.Size(23, 13);
            this.session_price_limit_min_data.TabIndex = 82;
            this.session_price_limit_min_data.Text = "null";
            // 
            // session_price_setlement_data
            // 
            this.session_price_setlement_data.AutoSize = true;
            this.session_price_setlement_data.Location = new System.Drawing.Point(407, 326);
            this.session_price_setlement_data.Name = "session_price_setlement_data";
            this.session_price_setlement_data.Size = new System.Drawing.Size(23, 13);
            this.session_price_setlement_data.TabIndex = 81;
            this.session_price_setlement_data.Text = "null";
            // 
            // session_aw_data
            // 
            this.session_aw_data.AutoSize = true;
            this.session_aw_data.Location = new System.Drawing.Point(407, 313);
            this.session_aw_data.Name = "session_aw_data";
            this.session_aw_data.Size = new System.Drawing.Size(23, 13);
            this.session_aw_data.TabIndex = 80;
            this.session_aw_data.Text = "null";
            // 
            // session_close_data
            // 
            this.session_close_data.AutoSize = true;
            this.session_close_data.Location = new System.Drawing.Point(407, 296);
            this.session_close_data.Name = "session_close_data";
            this.session_close_data.Size = new System.Drawing.Size(23, 13);
            this.session_close_data.TabIndex = 79;
            this.session_close_data.Text = "null";
            // 
            // session_open_data
            // 
            this.session_open_data.AutoSize = true;
            this.session_open_data.Location = new System.Drawing.Point(407, 279);
            this.session_open_data.Name = "session_open_data";
            this.session_open_data.Size = new System.Drawing.Size(23, 13);
            this.session_open_data.TabIndex = 78;
            this.session_open_data.Text = "null";
            // 
            // session_sell_orders_volume_data
            // 
            this.session_sell_orders_volume_data.AutoSize = true;
            this.session_sell_orders_volume_data.Location = new System.Drawing.Point(407, 262);
            this.session_sell_orders_volume_data.Name = "session_sell_orders_volume_data";
            this.session_sell_orders_volume_data.Size = new System.Drawing.Size(23, 13);
            this.session_sell_orders_volume_data.TabIndex = 77;
            this.session_sell_orders_volume_data.Text = "null";
            // 
            // session_buy_orders_volume_data
            // 
            this.session_buy_orders_volume_data.AutoSize = true;
            this.session_buy_orders_volume_data.Location = new System.Drawing.Point(407, 245);
            this.session_buy_orders_volume_data.Name = "session_buy_orders_volume_data";
            this.session_buy_orders_volume_data.Size = new System.Drawing.Size(23, 13);
            this.session_buy_orders_volume_data.TabIndex = 76;
            this.session_buy_orders_volume_data.Text = "null";
            // 
            // session_interest_data
            // 
            this.session_interest_data.AutoSize = true;
            this.session_interest_data.Location = new System.Drawing.Point(407, 227);
            this.session_interest_data.Name = "session_interest_data";
            this.session_interest_data.Size = new System.Drawing.Size(23, 13);
            this.session_interest_data.TabIndex = 75;
            this.session_interest_data.Text = "null";
            // 
            // session_turnover_data
            // 
            this.session_turnover_data.AutoSize = true;
            this.session_turnover_data.Location = new System.Drawing.Point(407, 210);
            this.session_turnover_data.Name = "session_turnover_data";
            this.session_turnover_data.Size = new System.Drawing.Size(23, 13);
            this.session_turnover_data.TabIndex = 74;
            this.session_turnover_data.Text = "null";
            // 
            // session_volume_data
            // 
            this.session_volume_data.AutoSize = true;
            this.session_volume_data.Location = new System.Drawing.Point(407, 194);
            this.session_volume_data.Name = "session_volume_data";
            this.session_volume_data.Size = new System.Drawing.Size(23, 13);
            this.session_volume_data.TabIndex = 73;
            this.session_volume_data.Text = "null";
            // 
            // margin_maintenance_data
            // 
            this.margin_maintenance_data.AutoSize = true;
            this.margin_maintenance_data.Location = new System.Drawing.Point(407, 152);
            this.margin_maintenance_data.Name = "margin_maintenance_data";
            this.margin_maintenance_data.Size = new System.Drawing.Size(23, 13);
            this.margin_maintenance_data.TabIndex = 72;
            this.margin_maintenance_data.Text = "null";
            // 
            // margin_initial_data
            // 
            this.margin_initial_data.AutoSize = true;
            this.margin_initial_data.Location = new System.Drawing.Point(407, 139);
            this.margin_initial_data.Name = "margin_initial_data";
            this.margin_initial_data.Size = new System.Drawing.Size(23, 13);
            this.margin_initial_data.TabIndex = 71;
            this.margin_initial_data.Text = "null";
            // 
            // swap_short_data
            // 
            this.swap_short_data.AutoSize = true;
            this.swap_short_data.Location = new System.Drawing.Point(407, 110);
            this.swap_short_data.Name = "swap_short_data";
            this.swap_short_data.Size = new System.Drawing.Size(23, 13);
            this.swap_short_data.TabIndex = 70;
            this.swap_short_data.Text = "null";
            // 
            // swap_long_data
            // 
            this.swap_long_data.AutoSize = true;
            this.swap_long_data.Location = new System.Drawing.Point(407, 94);
            this.swap_long_data.Name = "swap_long_data";
            this.swap_long_data.Size = new System.Drawing.Size(23, 13);
            this.swap_long_data.TabIndex = 69;
            this.swap_long_data.Text = "null";
            // 
            // volme_limit_data
            // 
            this.volme_limit_data.AutoSize = true;
            this.volme_limit_data.Location = new System.Drawing.Point(407, 54);
            this.volme_limit_data.Name = "volme_limit_data";
            this.volme_limit_data.Size = new System.Drawing.Size(23, 13);
            this.volme_limit_data.TabIndex = 68;
            this.volme_limit_data.Text = "null";
            // 
            // volme_step_data
            // 
            this.volme_step_data.AutoSize = true;
            this.volme_step_data.Location = new System.Drawing.Point(407, 41);
            this.volme_step_data.Name = "volme_step_data";
            this.volme_step_data.Size = new System.Drawing.Size(23, 13);
            this.volme_step_data.TabIndex = 67;
            this.volme_step_data.Text = "null";
            // 
            // volme_max_data
            // 
            this.volme_max_data.AutoSize = true;
            this.volme_max_data.Location = new System.Drawing.Point(407, 28);
            this.volme_max_data.Name = "volme_max_data";
            this.volme_max_data.Size = new System.Drawing.Size(23, 13);
            this.volme_max_data.TabIndex = 66;
            this.volme_max_data.Text = "null";
            // 
            // volme_min_data
            // 
            this.volme_min_data.AutoSize = true;
            this.volme_min_data.Location = new System.Drawing.Point(407, 15);
            this.volme_min_data.Name = "volme_min_data";
            this.volme_min_data.Size = new System.Drawing.Size(23, 13);
            this.volme_min_data.TabIndex = 65;
            this.volme_min_data.Text = "null";
            // 
            // margin_hedged
            // 
            this.margin_hedged.AutoSize = true;
            this.margin_hedged.Location = new System.Drawing.Point(314, 387);
            this.margin_hedged.Name = "margin_hedged";
            this.margin_hedged.Size = new System.Drawing.Size(80, 13);
            this.margin_hedged.TabIndex = 64;
            this.margin_hedged.Text = "MarginHedged:";
            // 
            // session_price_limit_max
            // 
            this.session_price_limit_max.AutoSize = true;
            this.session_price_limit_max.Location = new System.Drawing.Point(282, 353);
            this.session_price_limit_max.Name = "session_price_limit_max";
            this.session_price_limit_max.Size = new System.Drawing.Size(112, 13);
            this.session_price_limit_max.TabIndex = 63;
            this.session_price_limit_max.Text = "SessionPriceLimitMax:";
            // 
            // session_price_limit_min
            // 
            this.session_price_limit_min.AutoSize = true;
            this.session_price_limit_min.Location = new System.Drawing.Point(285, 339);
            this.session_price_limit_min.Name = "session_price_limit_min";
            this.session_price_limit_min.Size = new System.Drawing.Size(109, 13);
            this.session_price_limit_min.TabIndex = 62;
            this.session_price_limit_min.Text = "SessionPriceLimitMin:";
            // 
            // session_price_setlement
            // 
            this.session_price_setlement.AutoSize = true;
            this.session_price_setlement.Location = new System.Drawing.Point(277, 326);
            this.session_price_setlement.Name = "session_price_setlement";
            this.session_price_setlement.Size = new System.Drawing.Size(118, 13);
            this.session_price_setlement.TabIndex = 61;
            this.session_price_setlement.Text = "SessionPriceSetlement:";
            // 
            // session_aw
            // 
            this.session_aw.AutoSize = true;
            this.session_aw.Location = new System.Drawing.Point(332, 313);
            this.session_aw.Name = "session_aw";
            this.session_aw.Size = new System.Drawing.Size(62, 13);
            this.session_aw.TabIndex = 60;
            this.session_aw.Text = "SessionAw:";
            // 
            // session_close
            // 
            this.session_close.AutoSize = true;
            this.session_close.Location = new System.Drawing.Point(322, 296);
            this.session_close.Name = "session_close";
            this.session_close.Size = new System.Drawing.Size(73, 13);
            this.session_close.TabIndex = 59;
            this.session_close.Text = "SessionClose:";
            // 
            // session_open
            // 
            this.session_open.AutoSize = true;
            this.session_open.Location = new System.Drawing.Point(322, 279);
            this.session_open.Name = "session_open";
            this.session_open.Size = new System.Drawing.Size(73, 13);
            this.session_open.TabIndex = 58;
            this.session_open.Text = "SessionOpen:";
            // 
            // session_sell_orders_volume
            // 
            this.session_sell_orders_volume.AutoSize = true;
            this.session_sell_orders_volume.Location = new System.Drawing.Point(264, 262);
            this.session_sell_orders_volume.Name = "session_sell_orders_volume";
            this.session_sell_orders_volume.Size = new System.Drawing.Size(130, 13);
            this.session_sell_orders_volume.TabIndex = 57;
            this.session_sell_orders_volume.Text = "SessionSellOrdersVolume:";
            // 
            // session_buy_orders_volume
            // 
            this.session_buy_orders_volume.AutoSize = true;
            this.session_buy_orders_volume.Location = new System.Drawing.Point(263, 245);
            this.session_buy_orders_volume.Name = "session_buy_orders_volume";
            this.session_buy_orders_volume.Size = new System.Drawing.Size(131, 13);
            this.session_buy_orders_volume.TabIndex = 56;
            this.session_buy_orders_volume.Text = "SessionBuyOrdersVolume:";
            // 
            // session_interest
            // 
            this.session_interest.AutoSize = true;
            this.session_interest.Location = new System.Drawing.Point(312, 227);
            this.session_interest.Name = "session_interest";
            this.session_interest.Size = new System.Drawing.Size(82, 13);
            this.session_interest.TabIndex = 55;
            this.session_interest.Text = "SessionInterest:";
            // 
            // session_turnover
            // 
            this.session_turnover.AutoSize = true;
            this.session_turnover.Location = new System.Drawing.Point(304, 210);
            this.session_turnover.Name = "session_turnover";
            this.session_turnover.Size = new System.Drawing.Size(90, 13);
            this.session_turnover.TabIndex = 54;
            this.session_turnover.Text = "SessionTurnover:";
            // 
            // session_volume
            // 
            this.session_volume.AutoSize = true;
            this.session_volume.Location = new System.Drawing.Point(312, 194);
            this.session_volume.Name = "session_volume";
            this.session_volume.Size = new System.Drawing.Size(82, 13);
            this.session_volume.TabIndex = 53;
            this.session_volume.Text = "SessionVolume:";
            // 
            // margin_maintenance
            // 
            this.margin_maintenance.AutoSize = true;
            this.margin_maintenance.Location = new System.Drawing.Point(290, 152);
            this.margin_maintenance.Name = "margin_maintenance";
            this.margin_maintenance.Size = new System.Drawing.Size(104, 13);
            this.margin_maintenance.TabIndex = 52;
            this.margin_maintenance.Text = "MarginMaintenance:";
            // 
            // margin_initial
            // 
            this.margin_initial.AutoSize = true;
            this.margin_initial.Location = new System.Drawing.Point(328, 139);
            this.margin_initial.Name = "margin_initial";
            this.margin_initial.Size = new System.Drawing.Size(66, 13);
            this.margin_initial.TabIndex = 51;
            this.margin_initial.Text = "MarginInitial:";
            // 
            // swap_short
            // 
            this.swap_short.AutoSize = true;
            this.swap_short.Location = new System.Drawing.Point(328, 110);
            this.swap_short.Name = "swap_short";
            this.swap_short.Size = new System.Drawing.Size(62, 13);
            this.swap_short.TabIndex = 50;
            this.swap_short.Text = "SwapShort:";
            // 
            // swap_long
            // 
            this.swap_long.AutoSize = true;
            this.swap_long.Location = new System.Drawing.Point(329, 93);
            this.swap_long.Name = "swap_long";
            this.swap_long.Size = new System.Drawing.Size(61, 13);
            this.swap_long.TabIndex = 49;
            this.swap_long.Text = "SwapLong:";
            // 
            // volme_limit
            // 
            this.volme_limit.AutoSize = true;
            this.volme_limit.Location = new System.Drawing.Point(326, 57);
            this.volme_limit.Name = "volme_limit";
            this.volme_limit.Size = new System.Drawing.Size(60, 13);
            this.volme_limit.TabIndex = 48;
            this.volme_limit.Text = "VolmeLimit:";
            // 
            // volme_step
            // 
            this.volme_step.AutoSize = true;
            this.volme_step.Location = new System.Drawing.Point(326, 44);
            this.volme_step.Name = "volme_step";
            this.volme_step.Size = new System.Drawing.Size(61, 13);
            this.volme_step.TabIndex = 47;
            this.volme_step.Text = "VolmeStep:";
            // 
            // volme_max
            // 
            this.volme_max.AutoSize = true;
            this.volme_max.Location = new System.Drawing.Point(326, 29);
            this.volme_max.Name = "volme_max";
            this.volme_max.Size = new System.Drawing.Size(59, 13);
            this.volme_max.TabIndex = 46;
            this.volme_max.Text = "VolmeMax:";
            // 
            // volme_min
            // 
            this.volme_min.AutoSize = true;
            this.volme_min.Location = new System.Drawing.Point(326, 16);
            this.volme_min.Name = "volme_min";
            this.volme_min.Size = new System.Drawing.Size(56, 13);
            this.volme_min.TabIndex = 45;
            this.volme_min.Text = "VolmeMin:";
            // 
            // trade_liquidity_rate_data
            // 
            this.trade_liquidity_rate_data.AutoSize = true;
            this.trade_liquidity_rate_data.Location = new System.Drawing.Point(132, 404);
            this.trade_liquidity_rate_data.Name = "trade_liquidity_rate_data";
            this.trade_liquidity_rate_data.Size = new System.Drawing.Size(23, 13);
            this.trade_liquidity_rate_data.TabIndex = 44;
            this.trade_liquidity_rate_data.Text = "null";
            // 
            // trade_face_value_data
            // 
            this.trade_face_value_data.AutoSize = true;
            this.trade_face_value_data.Location = new System.Drawing.Point(132, 387);
            this.trade_face_value_data.Name = "trade_face_value_data";
            this.trade_face_value_data.Size = new System.Drawing.Size(23, 13);
            this.trade_face_value_data.TabIndex = 43;
            this.trade_face_value_data.Text = "null";
            // 
            // trade_accrued_interest_data
            // 
            this.trade_accrued_interest_data.AutoSize = true;
            this.trade_accrued_interest_data.Location = new System.Drawing.Point(132, 370);
            this.trade_accrued_interest_data.Name = "trade_accrued_interest_data";
            this.trade_accrued_interest_data.Size = new System.Drawing.Size(23, 13);
            this.trade_accrued_interest_data.TabIndex = 42;
            this.trade_accrued_interest_data.Text = "null";
            // 
            // trade_contract_size_data
            // 
            this.trade_contract_size_data.AutoSize = true;
            this.trade_contract_size_data.Location = new System.Drawing.Point(132, 353);
            this.trade_contract_size_data.Name = "trade_contract_size_data";
            this.trade_contract_size_data.Size = new System.Drawing.Size(23, 13);
            this.trade_contract_size_data.TabIndex = 41;
            this.trade_contract_size_data.Text = "null";
            // 
            // trade_tick_size_data
            // 
            this.trade_tick_size_data.AutoSize = true;
            this.trade_tick_size_data.Location = new System.Drawing.Point(132, 336);
            this.trade_tick_size_data.Name = "trade_tick_size_data";
            this.trade_tick_size_data.Size = new System.Drawing.Size(23, 13);
            this.trade_tick_size_data.TabIndex = 40;
            this.trade_tick_size_data.Text = "null";
            // 
            // trade_tick_value_loss_data
            // 
            this.trade_tick_value_loss_data.AutoSize = true;
            this.trade_tick_value_loss_data.Location = new System.Drawing.Point(132, 319);
            this.trade_tick_value_loss_data.Name = "trade_tick_value_loss_data";
            this.trade_tick_value_loss_data.Size = new System.Drawing.Size(23, 13);
            this.trade_tick_value_loss_data.TabIndex = 39;
            this.trade_tick_value_loss_data.Text = "null";
            // 
            // trade_tick_value_profit_data
            // 
            this.trade_tick_value_profit_data.AutoSize = true;
            this.trade_tick_value_profit_data.Location = new System.Drawing.Point(132, 302);
            this.trade_tick_value_profit_data.Name = "trade_tick_value_profit_data";
            this.trade_tick_value_profit_data.Size = new System.Drawing.Size(23, 13);
            this.trade_tick_value_profit_data.TabIndex = 38;
            this.trade_tick_value_profit_data.Text = "null";
            // 
            // trade_tick_value_data
            // 
            this.trade_tick_value_data.AutoSize = true;
            this.trade_tick_value_data.Location = new System.Drawing.Point(132, 285);
            this.trade_tick_value_data.Name = "trade_tick_value_data";
            this.trade_tick_value_data.Size = new System.Drawing.Size(23, 13);
            this.trade_tick_value_data.TabIndex = 37;
            this.trade_tick_value_data.Text = "null";
            // 
            // point_data
            // 
            this.point_data.AutoSize = true;
            this.point_data.Location = new System.Drawing.Point(132, 245);
            this.point_data.Name = "point_data";
            this.point_data.Size = new System.Drawing.Size(23, 13);
            this.point_data.TabIndex = 36;
            this.point_data.Text = "null";
            // 
            // option_strike_data
            // 
            this.option_strike_data.AutoSize = true;
            this.option_strike_data.Location = new System.Drawing.Point(132, 232);
            this.option_strike_data.Name = "option_strike_data";
            this.option_strike_data.Size = new System.Drawing.Size(23, 13);
            this.option_strike_data.TabIndex = 35;
            this.option_strike_data.Text = "null";
            // 
            // trade_liquidity_rate
            // 
            this.trade_liquidity_rate.AutoSize = true;
            this.trade_liquidity_rate.Location = new System.Drawing.Point(27, 404);
            this.trade_liquidity_rate.Name = "trade_liquidity_rate";
            this.trade_liquidity_rate.Size = new System.Drawing.Size(99, 13);
            this.trade_liquidity_rate.TabIndex = 34;
            this.trade_liquidity_rate.Text = "TradeLiquidityRate:";
            // 
            // trade_face_value
            // 
            this.trade_face_value.AutoSize = true;
            this.trade_face_value.Location = new System.Drawing.Point(37, 387);
            this.trade_face_value.Name = "trade_face_value";
            this.trade_face_value.Size = new System.Drawing.Size(89, 13);
            this.trade_face_value.TabIndex = 33;
            this.trade_face_value.Text = "TradeFaceValue:";
            // 
            // trade_accrued_interest
            // 
            this.trade_accrued_interest.AutoSize = true;
            this.trade_accrued_interest.Location = new System.Drawing.Point(12, 370);
            this.trade_accrued_interest.Name = "trade_accrued_interest";
            this.trade_accrued_interest.Size = new System.Drawing.Size(113, 13);
            this.trade_accrued_interest.TabIndex = 32;
            this.trade_accrued_interest.Text = "TradeAccruedInterest:";
            // 
            // trade_contract_size
            // 
            this.trade_contract_size.AutoSize = true;
            this.trade_contract_size.Location = new System.Drawing.Point(27, 353);
            this.trade_contract_size.Name = "trade_contract_size";
            this.trade_contract_size.Size = new System.Drawing.Size(98, 13);
            this.trade_contract_size.TabIndex = 31;
            this.trade_contract_size.Text = "TradeContractSize:";
            // 
            // trade_tick_size
            // 
            this.trade_tick_size.AutoSize = true;
            this.trade_tick_size.Location = new System.Drawing.Point(46, 336);
            this.trade_tick_size.Name = "trade_tick_size";
            this.trade_tick_size.Size = new System.Drawing.Size(79, 13);
            this.trade_tick_size.TabIndex = 30;
            this.trade_tick_size.Text = "TradeTickSize:";
            // 
            // trade_tick_value_loss
            // 
            this.trade_tick_value_loss.AutoSize = true;
            this.trade_tick_value_loss.Location = new System.Drawing.Point(17, 319);
            this.trade_tick_value_loss.Name = "trade_tick_value_loss";
            this.trade_tick_value_loss.Size = new System.Drawing.Size(108, 13);
            this.trade_tick_value_loss.TabIndex = 29;
            this.trade_tick_value_loss.Text = "TradeTickValueLoss:";
            // 
            // trade_tick_value_profit
            // 
            this.trade_tick_value_profit.AutoSize = true;
            this.trade_tick_value_profit.Location = new System.Drawing.Point(15, 302);
            this.trade_tick_value_profit.Name = "trade_tick_value_profit";
            this.trade_tick_value_profit.Size = new System.Drawing.Size(110, 13);
            this.trade_tick_value_profit.TabIndex = 28;
            this.trade_tick_value_profit.Text = "TradeTickValueProfit:";
            // 
            // trade_tick_value
            // 
            this.trade_tick_value.AutoSize = true;
            this.trade_tick_value.Location = new System.Drawing.Point(40, 285);
            this.trade_tick_value.Name = "trade_tick_value";
            this.trade_tick_value.Size = new System.Drawing.Size(86, 13);
            this.trade_tick_value.TabIndex = 27;
            this.trade_tick_value.Text = "TradeTickValue:";
            // 
            // point
            // 
            this.point.AutoSize = true;
            this.point.Location = new System.Drawing.Point(91, 245);
            this.point.Name = "point";
            this.point.Size = new System.Drawing.Size(34, 13);
            this.point.TabIndex = 26;
            this.point.Text = "Point:";
            // 
            // option_strike
            // 
            this.option_strike.AutoSize = true;
            this.option_strike.Location = new System.Drawing.Point(58, 232);
            this.option_strike.Name = "option_strike";
            this.option_strike.Size = new System.Drawing.Size(68, 13);
            this.option_strike.TabIndex = 25;
            this.option_strike.Text = "OptionStrike:";
            // 
            // volumelow_real_data
            // 
            this.volumelow_real_data.AutoSize = true;
            this.volumelow_real_data.Location = new System.Drawing.Point(132, 207);
            this.volumelow_real_data.Name = "volumelow_real_data";
            this.volumelow_real_data.Size = new System.Drawing.Size(23, 13);
            this.volumelow_real_data.TabIndex = 24;
            this.volumelow_real_data.Text = "null";
            // 
            // volumehigh_real_data
            // 
            this.volumehigh_real_data.AutoSize = true;
            this.volumehigh_real_data.Location = new System.Drawing.Point(132, 194);
            this.volumehigh_real_data.Name = "volumehigh_real_data";
            this.volumehigh_real_data.Size = new System.Drawing.Size(23, 13);
            this.volumehigh_real_data.TabIndex = 23;
            this.volumehigh_real_data.Text = "null";
            // 
            // volume_real_data
            // 
            this.volume_real_data.AutoSize = true;
            this.volume_real_data.Location = new System.Drawing.Point(132, 181);
            this.volume_real_data.Name = "volume_real_data";
            this.volume_real_data.Size = new System.Drawing.Size(23, 13);
            this.volume_real_data.TabIndex = 22;
            this.volume_real_data.Text = "null";
            // 
            // volumelow_real
            // 
            this.volumelow_real.AutoSize = true;
            this.volumelow_real.Location = new System.Drawing.Point(39, 207);
            this.volumelow_real.Name = "volumelow_real";
            this.volumelow_real.Size = new System.Drawing.Size(87, 13);
            this.volumelow_real.TabIndex = 21;
            this.volumelow_real.Text = "VolumeLowReal:";
            // 
            // volumehigh_real
            // 
            this.volumehigh_real.AutoSize = true;
            this.volumehigh_real.Location = new System.Drawing.Point(34, 194);
            this.volumehigh_real.Name = "volumehigh_real";
            this.volumehigh_real.Size = new System.Drawing.Size(92, 13);
            this.volumehigh_real.TabIndex = 20;
            this.volumehigh_real.Text = "VolumeHightReal:";
            // 
            // volume_real
            // 
            this.volume_real.AutoSize = true;
            this.volume_real.Location = new System.Drawing.Point(59, 181);
            this.volume_real.Name = "volume_real";
            this.volume_real.Size = new System.Drawing.Size(67, 13);
            this.volume_real.TabIndex = 19;
            this.volume_real.Text = "VolumeReal:";
            // 
            // lastlow_data
            // 
            this.lastlow_data.AutoSize = true;
            this.lastlow_data.Location = new System.Drawing.Point(132, 152);
            this.lastlow_data.Name = "lastlow_data";
            this.lastlow_data.Size = new System.Drawing.Size(23, 13);
            this.lastlow_data.TabIndex = 18;
            this.lastlow_data.Text = "null";
            // 
            // lastlow
            // 
            this.lastlow.AutoSize = true;
            this.lastlow.Location = new System.Drawing.Point(80, 152);
            this.lastlow.Name = "lastlow";
            this.lastlow.Size = new System.Drawing.Size(46, 13);
            this.lastlow.TabIndex = 17;
            this.lastlow.Text = "Lastlow:";
            // 
            // lasthigh_data
            // 
            this.lasthigh_data.AutoSize = true;
            this.lasthigh_data.Location = new System.Drawing.Point(132, 139);
            this.lasthigh_data.Name = "lasthigh_data";
            this.lasthigh_data.Size = new System.Drawing.Size(23, 13);
            this.lasthigh_data.TabIndex = 16;
            this.lasthigh_data.Text = "null";
            // 
            // last_data
            // 
            this.last_data.AutoSize = true;
            this.last_data.Location = new System.Drawing.Point(132, 126);
            this.last_data.Name = "last_data";
            this.last_data.Size = new System.Drawing.Size(23, 13);
            this.last_data.TabIndex = 15;
            this.last_data.Text = "null";
            // 
            // asklow_data
            // 
            this.asklow_data.AutoSize = true;
            this.asklow_data.Location = new System.Drawing.Point(132, 94);
            this.asklow_data.Name = "asklow_data";
            this.asklow_data.Size = new System.Drawing.Size(23, 13);
            this.asklow_data.TabIndex = 14;
            this.asklow_data.Text = "null";
            // 
            // askhigh_data
            // 
            this.askhigh_data.AutoSize = true;
            this.askhigh_data.Location = new System.Drawing.Point(132, 81);
            this.askhigh_data.Name = "askhigh_data";
            this.askhigh_data.Size = new System.Drawing.Size(23, 13);
            this.askhigh_data.TabIndex = 13;
            this.askhigh_data.Text = "null";
            // 
            // bidlow_data
            // 
            this.bidlow_data.AutoSize = true;
            this.bidlow_data.Location = new System.Drawing.Point(132, 44);
            this.bidlow_data.Name = "bidlow_data";
            this.bidlow_data.Size = new System.Drawing.Size(23, 13);
            this.bidlow_data.TabIndex = 12;
            this.bidlow_data.Text = "null";
            // 
            // bidhigh_data
            // 
            this.bidhigh_data.AutoSize = true;
            this.bidhigh_data.Location = new System.Drawing.Point(132, 30);
            this.bidhigh_data.Name = "bidhigh_data";
            this.bidhigh_data.Size = new System.Drawing.Size(23, 13);
            this.bidhigh_data.TabIndex = 11;
            this.bidhigh_data.Text = "null";
            // 
            // lasthigh
            // 
            this.lasthigh.AutoSize = true;
            this.lasthigh.Location = new System.Drawing.Point(76, 139);
            this.lasthigh.Name = "lasthigh";
            this.lasthigh.Size = new System.Drawing.Size(50, 13);
            this.lasthigh.TabIndex = 10;
            this.lasthigh.Text = "Lasthigh:";
            // 
            // last
            // 
            this.last.AutoSize = true;
            this.last.Location = new System.Drawing.Point(96, 126);
            this.last.Name = "last";
            this.last.Size = new System.Drawing.Size(30, 13);
            this.last.TabIndex = 9;
            this.last.Text = "Last:";
            // 
            // bidhigh
            // 
            this.bidhigh.AutoSize = true;
            this.bidhigh.Location = new System.Drawing.Point(81, 30);
            this.bidhigh.Name = "bidhigh";
            this.bidhigh.Size = new System.Drawing.Size(45, 13);
            this.bidhigh.TabIndex = 5;
            this.bidhigh.Text = "Bidhigh:";
            
            // 
            // asklow
            // 
            this.asklow.AutoSize = true;
            this.asklow.Location = new System.Drawing.Point(82, 94);
            this.asklow.Name = "asklow";
            this.asklow.Size = new System.Drawing.Size(44, 13);
            this.asklow.TabIndex = 8;
            this.asklow.Text = "Asklow:";
            // 
            // bidlow
            // 
            this.bidlow.AutoSize = true;
            this.bidlow.Location = new System.Drawing.Point(85, 44);
            this.bidlow.Name = "bidlow";
            this.bidlow.Size = new System.Drawing.Size(41, 13);
            this.bidlow.TabIndex = 6;
            this.bidlow.Text = "Bidlow:";
            // 
            // askhigh
            // 
            this.askhigh.AutoSize = true;
            this.askhigh.Location = new System.Drawing.Point(78, 81);
            this.askhigh.Name = "askhigh";
            this.askhigh.Size = new System.Drawing.Size(48, 13);
            this.askhigh.TabIndex = 7;
            this.askhigh.Text = "Askhigh:";
            // 
            // tabPage2
            // 
            this.tabPage2.Controls.Add(this.account_balance_data);
            this.tabPage2.Controls.Add(this.account_balance);
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(518, 442);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "Account";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // account_balance
            // 
            this.account_balance.AutoSize = true;
            this.account_balance.Location = new System.Drawing.Point(20, 18);
            this.account_balance.Name = "account_balance";
            this.account_balance.Size = new System.Drawing.Size(89, 13);
            this.account_balance.TabIndex = 0;
            this.account_balance.Text = "AccountBalance:";
            // 
            // account_balance_data
            // 
            this.account_balance_data.AutoSize = true;
            this.account_balance_data.Location = new System.Drawing.Point(128, 17);
            this.account_balance_data.Name = "account_balance_data";
            this.account_balance_data.Size = new System.Drawing.Size(23, 13);
            this.account_balance_data.TabIndex = 1;
            this.account_balance_data.Text = "null";
            // 
            // MainForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(725, 500);
            this.Controls.Add(this.tabControl1);
            this.Controls.Add(this.button1);
            this.Name = "MainForm";
            this.Text = "MainForm";
            this.FormClosed += new System.Windows.Forms.FormClosedEventHandler(this.MainForm_FormClosed);
            this.tabControl1.ResumeLayout(false);
            this.tabPage1.ResumeLayout(false);
            this.tabPage1.PerformLayout();
            this.tabPage2.ResumeLayout(false);
            this.tabPage2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion
        private System.Windows.Forms.Label bid;
        public System.Windows.Forms.Label bid_data;
        private System.Windows.Forms.Label ask;
        public System.Windows.Forms.Label ask_data;
        private System.Windows.Forms.Button button1;
        private System.Windows.Forms.TabControl tabControl1;
        private System.Windows.Forms.TabPage tabPage1;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.Label lasthigh;
        private System.Windows.Forms.Label last;
        private System.Windows.Forms.Label asklow;
        private System.Windows.Forms.Label askhigh;
        private System.Windows.Forms.Label bidlow;
        private System.Windows.Forms.Label bidhigh;
        public System.Windows.Forms.Label lasthigh_data;
        public System.Windows.Forms.Label last_data;
        public System.Windows.Forms.Label asklow_data;
        public System.Windows.Forms.Label askhigh_data;
        public System.Windows.Forms.Label bidlow_data;
        public System.Windows.Forms.Label bidhigh_data;
        public System.Windows.Forms.Label lastlow_data;
        private System.Windows.Forms.Label lastlow;
        public System.Windows.Forms.Label volumelow_real_data;
        public System.Windows.Forms.Label volumehigh_real_data;
        public System.Windows.Forms.Label volume_real_data;
        private System.Windows.Forms.Label volumelow_real;
        private System.Windows.Forms.Label volumehigh_real;
        private System.Windows.Forms.Label volume_real;
        private System.Windows.Forms.Label point;
        private System.Windows.Forms.Label option_strike;
        public System.Windows.Forms.Label trade_liquidity_rate_data;
        public System.Windows.Forms.Label trade_face_value_data;
        public System.Windows.Forms.Label trade_accrued_interest_data;
        public System.Windows.Forms.Label trade_contract_size_data;
        public System.Windows.Forms.Label trade_tick_size_data;
        public System.Windows.Forms.Label trade_tick_value_loss_data;
        public System.Windows.Forms.Label trade_tick_value_profit_data;
        public System.Windows.Forms.Label trade_tick_value_data;
        public System.Windows.Forms.Label point_data;
        public System.Windows.Forms.Label option_strike_data;
        private System.Windows.Forms.Label trade_liquidity_rate;
        private System.Windows.Forms.Label trade_face_value;
        private System.Windows.Forms.Label trade_accrued_interest;
        private System.Windows.Forms.Label trade_contract_size;
        private System.Windows.Forms.Label trade_tick_size;
        private System.Windows.Forms.Label trade_tick_value_loss;
        private System.Windows.Forms.Label trade_tick_value_profit;
        private System.Windows.Forms.Label trade_tick_value;
        private System.Windows.Forms.Label volme_step;
        private System.Windows.Forms.Label volme_max;
        private System.Windows.Forms.Label volme_min;
        public System.Windows.Forms.Label margin_hedged_data;
        public System.Windows.Forms.Label session_price_limit_max_data;
        public System.Windows.Forms.Label session_price_limit_min_data;
        public System.Windows.Forms.Label session_price_setlement_data;
        public System.Windows.Forms.Label session_aw_data;
        public System.Windows.Forms.Label session_close_data;
        public System.Windows.Forms.Label session_open_data;
        public System.Windows.Forms.Label session_sell_orders_volume_data;
        public System.Windows.Forms.Label session_buy_orders_volume_data;
        public System.Windows.Forms.Label session_interest_data;
        public System.Windows.Forms.Label session_turnover_data;
        public System.Windows.Forms.Label session_volume_data;
        public System.Windows.Forms.Label margin_maintenance_data;
        public System.Windows.Forms.Label margin_initial_data;
        public System.Windows.Forms.Label swap_short_data;
        public System.Windows.Forms.Label swap_long_data;
        public System.Windows.Forms.Label volme_limit_data;
        public System.Windows.Forms.Label volme_step_data;
        public System.Windows.Forms.Label volme_max_data;
        public System.Windows.Forms.Label volme_min_data;
        private System.Windows.Forms.Label margin_hedged;
        private System.Windows.Forms.Label session_price_limit_max;
        private System.Windows.Forms.Label session_price_limit_min;
        private System.Windows.Forms.Label session_price_setlement;
        private System.Windows.Forms.Label session_aw;
        private System.Windows.Forms.Label session_close;
        private System.Windows.Forms.Label session_open;
        private System.Windows.Forms.Label session_sell_orders_volume;
        private System.Windows.Forms.Label session_buy_orders_volume;
        private System.Windows.Forms.Label session_interest;
        private System.Windows.Forms.Label session_turnover;
        private System.Windows.Forms.Label session_volume;
        private System.Windows.Forms.Label margin_maintenance;
        private System.Windows.Forms.Label margin_initial;
        private System.Windows.Forms.Label swap_short;
        private System.Windows.Forms.Label swap_long;
        private System.Windows.Forms.Label volme_limit;
        public System.Windows.Forms.Label account_balance_data;
        private System.Windows.Forms.Label account_balance;
    }
}