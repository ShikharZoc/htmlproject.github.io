
namespace cw
{
    partial class admin
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
            this.addCriteriaBtn = new System.Windows.Forms.Button();
            this.bargraphBtn = new System.Windows.Forms.Button();
            this.reportGenerateBtn = new System.Windows.Forms.Button();
            this.exitBtn = new System.Windows.Forms.Button();
            this.panel1 = new System.Windows.Forms.Panel();
            this.panel2 = new System.Windows.Forms.Panel();
            this.pictureBox1 = new System.Windows.Forms.PictureBox();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).BeginInit();
            this.SuspendLayout();
            // 
            // addCriteriaBtn
            // 
            this.addCriteriaBtn.BackColor = System.Drawing.SystemColors.Info;
            this.addCriteriaBtn.Font = new System.Drawing.Font("Microsoft PhagsPa", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.addCriteriaBtn.Location = new System.Drawing.Point(4, 3);
            this.addCriteriaBtn.Name = "addCriteriaBtn";
            this.addCriteriaBtn.Size = new System.Drawing.Size(328, 54);
            this.addCriteriaBtn.TabIndex = 0;
            this.addCriteriaBtn.Text = "Add Criteria";
            this.addCriteriaBtn.UseVisualStyleBackColor = false;
            this.addCriteriaBtn.Click += new System.EventHandler(this.addCriteriaBtn_Click);
            // 
            // bargraphBtn
            // 
            this.bargraphBtn.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.bargraphBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.bargraphBtn.Location = new System.Drawing.Point(358, 3);
            this.bargraphBtn.Name = "bargraphBtn";
            this.bargraphBtn.Size = new System.Drawing.Size(318, 54);
            this.bargraphBtn.TabIndex = 1;
            this.bargraphBtn.Text = "Bar Graph";
            this.bargraphBtn.UseVisualStyleBackColor = false;
            this.bargraphBtn.Click += new System.EventHandler(this.button2_Click);
            // 
            // reportGenerateBtn
            // 
            this.reportGenerateBtn.BackColor = System.Drawing.Color.PaleGreen;
            this.reportGenerateBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 10F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.reportGenerateBtn.Location = new System.Drawing.Point(699, 3);
            this.reportGenerateBtn.Name = "reportGenerateBtn";
            this.reportGenerateBtn.Size = new System.Drawing.Size(314, 54);
            this.reportGenerateBtn.TabIndex = 2;
            this.reportGenerateBtn.Text = "Report Generation";
            this.reportGenerateBtn.UseVisualStyleBackColor = false;
            this.reportGenerateBtn.Click += new System.EventHandler(this.reportGenerateBtn_Click);
            // 
            // exitBtn
            // 
            this.exitBtn.BackColor = System.Drawing.Color.Red;
            this.exitBtn.Font = new System.Drawing.Font("Microsoft PhagsPa", 11F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.exitBtn.Location = new System.Drawing.Point(1, 468);
            this.exitBtn.Name = "exitBtn";
            this.exitBtn.Size = new System.Drawing.Size(191, 52);
            this.exitBtn.TabIndex = 3;
            this.exitBtn.Text = "Log Out";
            this.exitBtn.UseVisualStyleBackColor = false;
            this.exitBtn.Click += new System.EventHandler(this.exitBtn_Click);
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.Controls.Add(this.panel2);
            this.panel1.Location = new System.Drawing.Point(198, 63);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(889, 517);
            this.panel1.TabIndex = 4;
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Dock = System.Windows.Forms.DockStyle.Fill;
            this.panel2.Location = new System.Drawing.Point(0, 0);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(889, 517);
            this.panel2.TabIndex = 0;
            this.panel2.Paint += new System.Windows.Forms.PaintEventHandler(this.panel2_Paint);
            // 
            // pictureBox1
            // 
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.Image = global::cw.Properties.Resources.favpng_chophouse_restaurant_logo_cafe;
            this.pictureBox1.Location = new System.Drawing.Point(4, 63);
            this.pictureBox1.Name = "pictureBox1";
            this.pictureBox1.Size = new System.Drawing.Size(188, 399);
            this.pictureBox1.SizeMode = System.Windows.Forms.PictureBoxSizeMode.Zoom;
            this.pictureBox1.TabIndex = 5;
            this.pictureBox1.TabStop = false;
            this.pictureBox1.Click += new System.EventHandler(this.pictureBox1_Click);
            // 
            // admin
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackColor = System.Drawing.SystemColors.InactiveCaption;
            this.BackgroundImage = global::cw.Properties.Resources.restaurant;
            this.ClientSize = new System.Drawing.Size(1191, 634);
            this.Controls.Add(this.pictureBox1);
            this.Controls.Add(this.panel1);
            this.Controls.Add(this.exitBtn);
            this.Controls.Add(this.reportGenerateBtn);
            this.Controls.Add(this.bargraphBtn);
            this.Controls.Add(this.addCriteriaBtn);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedSingle;
            this.MaximizeBox = false;
            this.Name = "admin";
            this.Text = "admin";
            this.Load += new System.EventHandler(this.admin_Load);
            this.panel1.ResumeLayout(false);
            ((System.ComponentModel.ISupportInitialize)(this.pictureBox1)).EndInit();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Button addCriteriaBtn;
        private System.Windows.Forms.Button bargraphBtn;
        private System.Windows.Forms.Button reportGenerateBtn;
        private System.Windows.Forms.Button exitBtn;
        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.PictureBox pictureBox1;
    }
}