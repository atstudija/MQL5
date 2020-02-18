namespace AT_Inc.Forms
{
    public partial class IndicatorsForm
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
            this.tabControlIndicators = new System.Windows.Forms.TabControl();
            this.tabPageMA = new System.Windows.Forms.TabPage();
            this.tabPage2 = new System.Windows.Forms.TabPage();
            this.tabPage3 = new System.Windows.Forms.TabPage();
            this.tabPageInfo = new System.Windows.Forms.TabPage();
            this.textBoxAsk = new System.Windows.Forms.TextBox();
            this.textBoxBid = new System.Windows.Forms.TextBox();
            this.tabControlIndicators.SuspendLayout();
            this.tabPageInfo.SuspendLayout();
            this.SuspendLayout();
            // 
            // tabControlIndicators
            // 
            this.tabControlIndicators.Controls.Add(this.tabPageMA);
            this.tabControlIndicators.Controls.Add(this.tabPage2);
            this.tabControlIndicators.Controls.Add(this.tabPage3);
            this.tabControlIndicators.Controls.Add(this.tabPageInfo);
            this.tabControlIndicators.Location = new System.Drawing.Point(12, 12);
            this.tabControlIndicators.Name = "tabControlIndicators";
            this.tabControlIndicators.SelectedIndex = 0;
            this.tabControlIndicators.Size = new System.Drawing.Size(444, 276);
            this.tabControlIndicators.TabIndex = 0;
            // 
            // tabPageMA
            // 
            this.tabPageMA.Location = new System.Drawing.Point(4, 22);
            this.tabPageMA.Name = "tabPageMA";
            this.tabPageMA.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageMA.Size = new System.Drawing.Size(436, 250);
            this.tabPageMA.TabIndex = 0;
            this.tabPageMA.Text = "MA";
            this.tabPageMA.UseVisualStyleBackColor = true;
            // 
            // tabPage2
            // 
            this.tabPage2.Location = new System.Drawing.Point(4, 22);
            this.tabPage2.Name = "tabPage2";
            this.tabPage2.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage2.Size = new System.Drawing.Size(436, 250);
            this.tabPage2.TabIndex = 1;
            this.tabPage2.Text = "BearsPower";
            this.tabPage2.UseVisualStyleBackColor = true;
            // 
            // tabPage3
            // 
            this.tabPage3.Location = new System.Drawing.Point(4, 22);
            this.tabPage3.Name = "tabPage3";
            this.tabPage3.Padding = new System.Windows.Forms.Padding(3);
            this.tabPage3.Size = new System.Drawing.Size(436, 250);
            this.tabPage3.TabIndex = 2;
            this.tabPage3.Text = "BullsPower";
            this.tabPage3.UseVisualStyleBackColor = true;
            // 
            // tabPageInfo
            // 
            this.tabPageInfo.Controls.Add(this.textBoxBid);
            this.tabPageInfo.Controls.Add(this.textBoxAsk);
            this.tabPageInfo.Location = new System.Drawing.Point(4, 22);
            this.tabPageInfo.Name = "tabPageInfo";
            this.tabPageInfo.Padding = new System.Windows.Forms.Padding(3);
            this.tabPageInfo.Size = new System.Drawing.Size(436, 250);
            this.tabPageInfo.TabIndex = 3;
            this.tabPageInfo.Text = "Info";
            // 
            // textBoxAsk
            // 
            this.textBoxAsk.Location = new System.Drawing.Point(7, 7);
            this.textBoxAsk.Name = "textBoxAsk";
            this.textBoxAsk.Size = new System.Drawing.Size(100, 20);
            this.textBoxAsk.TabIndex = 0;
            // 
            // textBoxBid
            // 
            this.textBoxBid.Location = new System.Drawing.Point(114, 7);
            this.textBoxBid.Name = "textBoxBid";
            this.textBoxBid.Size = new System.Drawing.Size(100, 20);
            this.textBoxBid.TabIndex = 1;
            // 
            // IndicatorsForm
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(6F, 13F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.ClientSize = new System.Drawing.Size(471, 333);
            this.Controls.Add(this.tabControlIndicators);
            this.Name = "IndicatorsForm";
            this.Text = "Indicators";
            this.tabControlIndicators.ResumeLayout(false);
            this.tabPageInfo.ResumeLayout(false);
            this.tabPageInfo.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.TabControl tabControlIndicators;
        private System.Windows.Forms.TabPage tabPageMA;
        private System.Windows.Forms.TabPage tabPage2;
        private System.Windows.Forms.TabPage tabPage3;
        private System.Windows.Forms.TabPage tabPageInfo;
        private System.Windows.Forms.TextBox textBoxBid;
        private System.Windows.Forms.TextBox textBoxAsk;
    }
}