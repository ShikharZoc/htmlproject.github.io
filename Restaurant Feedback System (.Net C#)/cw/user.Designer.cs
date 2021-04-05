
namespace cw
{
    partial class user
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
            this.panel1 = new System.Windows.Forms.Panel();
            this.label5 = new System.Windows.Forms.Label();
            this.genderCombo = new System.Windows.Forms.ComboBox();
            this.datetime = new System.Windows.Forms.DateTimePicker();
            this.email = new System.Windows.Forms.TextBox();
            this.number = new System.Windows.Forms.TextBox();
            this.address = new System.Windows.Forms.TextBox();
            this.custName = new System.Windows.Forms.TextBox();
            this.label4 = new System.Windows.Forms.Label();
            this.label3 = new System.Windows.Forms.Label();
            this.label2 = new System.Windows.Forms.Label();
            this.label1 = new System.Windows.Forms.Label();
            this.backgroundWorker1 = new System.ComponentModel.BackgroundWorker();
            this.submitBtn = new System.Windows.Forms.Button();
            this.clearBtn = new System.Windows.Forms.Button();
            this.exitBtn = new System.Windows.Forms.Button();
            this.dataGridView1 = new System.Windows.Forms.DataGridView();
            this.label6 = new System.Windows.Forms.Label();
            this.panel2 = new System.Windows.Forms.Panel();
            this.Criteria = new System.Windows.Forms.DataGridViewTextBoxColumn();
            this.Excellent = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Good = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Average = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Bad = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.Horrible = new System.Windows.Forms.DataGridViewCheckBoxColumn();
            this.panel1.SuspendLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).BeginInit();
            this.panel2.SuspendLayout();
            this.SuspendLayout();
            // 
            // panel1
            // 
            this.panel1.BackColor = System.Drawing.Color.Transparent;
            this.panel1.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Center;
            this.panel1.Controls.Add(this.label5);
            this.panel1.Controls.Add(this.genderCombo);
            this.panel1.Controls.Add(this.datetime);
            this.panel1.Controls.Add(this.email);
            this.panel1.Controls.Add(this.number);
            this.panel1.Controls.Add(this.address);
            this.panel1.Controls.Add(this.custName);
            this.panel1.Controls.Add(this.label4);
            this.panel1.Controls.Add(this.label3);
            this.panel1.Controls.Add(this.label2);
            this.panel1.Controls.Add(this.label1);
            this.panel1.Location = new System.Drawing.Point(41, 12);
            this.panel1.Name = "panel1";
            this.panel1.Size = new System.Drawing.Size(779, 222);
            this.panel1.TabIndex = 0;
            this.panel1.Paint += new System.Windows.Forms.PaintEventHandler(this.panel1_Paint);
            // 
            // label5
            // 
            this.label5.AutoSize = true;
            this.label5.BackColor = System.Drawing.Color.Transparent;
            this.label5.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label5.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label5.Location = new System.Drawing.Point(416, 75);
            this.label5.Name = "label5";
            this.label5.Size = new System.Drawing.Size(80, 18);
            this.label5.TabIndex = 11;
            this.label5.Text = "Gender";
            // 
            // genderCombo
            // 
            this.genderCombo.AllowDrop = true;
            this.genderCombo.FormattingEnabled = true;
            this.genderCombo.Items.AddRange(new object[] {
            "Male",
            "Female",
            "Others"});
            this.genderCombo.Location = new System.Drawing.Point(587, 70);
            this.genderCombo.Name = "genderCombo";
            this.genderCombo.Size = new System.Drawing.Size(121, 28);
            this.genderCombo.TabIndex = 10;
            this.genderCombo.Text = "Choose";
            // 
            // datetime
            // 
            this.datetime.Location = new System.Drawing.Point(397, 193);
            this.datetime.Name = "datetime";
            this.datetime.Size = new System.Drawing.Size(320, 26);
            this.datetime.TabIndex = 8;
            this.datetime.ValueChanged += new System.EventHandler(this.dobPicker_ValueChanged);
            // 
            // email
            // 
            this.email.Location = new System.Drawing.Point(192, 117);
            this.email.Name = "email";
            this.email.Size = new System.Drawing.Size(287, 26);
            this.email.TabIndex = 7;
            this.email.TextChanged += new System.EventHandler(this.email_TextChanged);
            // 
            // number
            // 
            this.number.Location = new System.Drawing.Point(587, 20);
            this.number.Name = "number";
            this.number.Size = new System.Drawing.Size(175, 26);
            this.number.TabIndex = 6;
            // 
            // address
            // 
            this.address.Location = new System.Drawing.Point(192, 70);
            this.address.Name = "address";
            this.address.Size = new System.Drawing.Size(189, 26);
            this.address.TabIndex = 5;
            // 
            // custName
            // 
            this.custName.Location = new System.Drawing.Point(192, 20);
            this.custName.Name = "custName";
            this.custName.Size = new System.Drawing.Size(189, 26);
            this.custName.TabIndex = 4;
            // 
            // label4
            // 
            this.label4.AutoSize = true;
            this.label4.BackColor = System.Drawing.Color.Transparent;
            this.label4.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label4.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label4.Location = new System.Drawing.Point(18, 125);
            this.label4.Name = "label4";
            this.label4.Size = new System.Drawing.Size(68, 18);
            this.label4.TabIndex = 3;
            this.label4.Text = "Email";
            // 
            // label3
            // 
            this.label3.AutoSize = true;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.label3.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label3.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label3.Location = new System.Drawing.Point(405, 25);
            this.label3.Name = "label3";
            this.label3.Size = new System.Drawing.Size(176, 18);
            this.label3.TabIndex = 2;
            this.label3.Text = "Contact Number";
            // 
            // label2
            // 
            this.label2.AutoSize = true;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label2.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label2.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label2.Location = new System.Drawing.Point(18, 75);
            this.label2.Name = "label2";
            this.label2.Size = new System.Drawing.Size(92, 18);
            this.label2.TabIndex = 1;
            this.label2.Text = "Address";
            // 
            // label1
            // 
            this.label1.AutoSize = true;
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label1.Font = new System.Drawing.Font("Lucida Console", 9F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label1.ForeColor = System.Drawing.SystemColors.ButtonHighlight;
            this.label1.Location = new System.Drawing.Point(18, 25);
            this.label1.Name = "label1";
            this.label1.Size = new System.Drawing.Size(164, 18);
            this.label1.TabIndex = 0;
            this.label1.Text = "Customer Name";
            this.label1.Click += new System.EventHandler(this.label1_Click_1);
            // 
            // submitBtn
            // 
            this.submitBtn.BackColor = System.Drawing.SystemColors.GradientActiveCaption;
            this.submitBtn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.submitBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.submitBtn.Location = new System.Drawing.Point(410, 644);
            this.submitBtn.Name = "submitBtn";
            this.submitBtn.Size = new System.Drawing.Size(127, 41);
            this.submitBtn.TabIndex = 2;
            this.submitBtn.Text = "SUBMIT";
            this.submitBtn.UseVisualStyleBackColor = false;
            this.submitBtn.Click += new System.EventHandler(this.submitBtn_Click);
            // 
            // clearBtn
            // 
            this.clearBtn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.clearBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.clearBtn.Location = new System.Drawing.Point(568, 644);
            this.clearBtn.Name = "clearBtn";
            this.clearBtn.Size = new System.Drawing.Size(88, 41);
            this.clearBtn.TabIndex = 3;
            this.clearBtn.Text = "CLEAR";
            this.clearBtn.UseVisualStyleBackColor = true;
            this.clearBtn.Click += new System.EventHandler(this.clearBtn_Click);
            // 
            // exitBtn
            // 
            this.exitBtn.BackColor = System.Drawing.Color.Red;
            this.exitBtn.FlatStyle = System.Windows.Forms.FlatStyle.Popup;
            this.exitBtn.Font = new System.Drawing.Font("Microsoft Sans Serif", 8F, System.Drawing.FontStyle.Bold, System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.exitBtn.Location = new System.Drawing.Point(684, 644);
            this.exitBtn.Name = "exitBtn";
            this.exitBtn.Size = new System.Drawing.Size(119, 41);
            this.exitBtn.TabIndex = 4;
            this.exitBtn.Text = "LOG OUT";
            this.exitBtn.UseVisualStyleBackColor = false;
            this.exitBtn.Click += new System.EventHandler(this.exitBtn_Click);
            // 
            // dataGridView1
            // 
            this.dataGridView1.AllowUserToAddRows = false;
            this.dataGridView1.AutoSizeColumnsMode = System.Windows.Forms.DataGridViewAutoSizeColumnsMode.Fill;
            this.dataGridView1.BorderStyle = System.Windows.Forms.BorderStyle.None;
            this.dataGridView1.ColumnHeadersHeightSizeMode = System.Windows.Forms.DataGridViewColumnHeadersHeightSizeMode.AutoSize;
            this.dataGridView1.Columns.AddRange(new System.Windows.Forms.DataGridViewColumn[] {
            this.Criteria,
            this.Excellent,
            this.Good,
            this.Average,
            this.Bad,
            this.Horrible});
            this.dataGridView1.Location = new System.Drawing.Point(21, 61);
            this.dataGridView1.Name = "dataGridView1";
            this.dataGridView1.RowHeadersWidth = 62;
            this.dataGridView1.RowTemplate.Height = 28;
            this.dataGridView1.Size = new System.Drawing.Size(735, 291);
            this.dataGridView1.TabIndex = 5;
            this.dataGridView1.CellContentClick += new System.Windows.Forms.DataGridViewCellEventHandler(this.dataGridView1_CellContentClick_1);
            // 
            // label6
            // 
            this.label6.AutoSize = true;
            this.label6.BackColor = System.Drawing.Color.Transparent;
            this.label6.Font = new System.Drawing.Font("Microsoft Uighur", 22F, ((System.Drawing.FontStyle)((System.Drawing.FontStyle.Bold | System.Drawing.FontStyle.Italic))), System.Drawing.GraphicsUnit.Point, ((byte)(0)));
            this.label6.ForeColor = System.Drawing.Color.White;
            this.label6.Location = new System.Drawing.Point(21, 6);
            this.label6.Name = "label6";
            this.label6.Size = new System.Drawing.Size(147, 52);
            this.label6.TabIndex = 6;
            this.label6.Text = "Feedback";
            this.label6.Click += new System.EventHandler(this.label6_Click_1);
            // 
            // panel2
            // 
            this.panel2.BackColor = System.Drawing.Color.Transparent;
            this.panel2.Controls.Add(this.dataGridView1);
            this.panel2.Controls.Add(this.label6);
            this.panel2.Location = new System.Drawing.Point(41, 259);
            this.panel2.Name = "panel2";
            this.panel2.Size = new System.Drawing.Size(779, 370);
            this.panel2.TabIndex = 7;
            // 
            // Criteria
            // 
            this.Criteria.FillWeight = 184.4008F;
            this.Criteria.HeaderText = "Criteria";
            this.Criteria.MinimumWidth = 12;
            this.Criteria.Name = "Criteria";
            this.Criteria.ReadOnly = true;
            // 
            // Excellent
            // 
            this.Excellent.HeaderText = "Excellent";
            this.Excellent.MinimumWidth = 8;
            this.Excellent.Name = "Excellent";
            this.Excellent.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Excellent.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Excellent.TrueValue = "TRUE";
            // 
            // Good
            // 
            this.Good.FillWeight = 71.30164F;
            this.Good.HeaderText = "Good";
            this.Good.MinimumWidth = 8;
            this.Good.Name = "Good";
            this.Good.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Good.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Good.TrueValue = "TRUE";
            // 
            // Average
            // 
            this.Average.FillWeight = 71.30164F;
            this.Average.HeaderText = "Average";
            this.Average.MinimumWidth = 8;
            this.Average.Name = "Average";
            this.Average.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Average.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Average.TrueValue = "TRUE";
            // 
            // Bad
            // 
            this.Bad.FillWeight = 71.30164F;
            this.Bad.HeaderText = "Bad";
            this.Bad.MinimumWidth = 8;
            this.Bad.Name = "Bad";
            this.Bad.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Bad.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Bad.TrueValue = "TRUE";
            // 
            // Horrible
            // 
            this.Horrible.FillWeight = 71.30164F;
            this.Horrible.HeaderText = "Horrible";
            this.Horrible.MinimumWidth = 8;
            this.Horrible.Name = "Horrible";
            this.Horrible.Resizable = System.Windows.Forms.DataGridViewTriState.True;
            this.Horrible.SortMode = System.Windows.Forms.DataGridViewColumnSortMode.Automatic;
            this.Horrible.TrueValue = "TRUE";
            // 
            // user
            // 
            this.AutoScaleDimensions = new System.Drawing.SizeF(9F, 20F);
            this.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font;
            this.BackgroundImage = global::cw.Properties.Resources.user;
            this.BackgroundImageLayout = System.Windows.Forms.ImageLayout.Stretch;
            this.ClientSize = new System.Drawing.Size(857, 697);
            this.Controls.Add(this.panel2);
            this.Controls.Add(this.exitBtn);
            this.Controls.Add(this.clearBtn);
            this.Controls.Add(this.submitBtn);
            this.Controls.Add(this.panel1);
            this.FormBorderStyle = System.Windows.Forms.FormBorderStyle.FixedToolWindow;
            this.MaximizeBox = false;
            this.MinimizeBox = false;
            this.Name = "user";
            this.Text = "Customer";
            this.Load += new System.EventHandler(this.user_Load);
            this.panel1.ResumeLayout(false);
            this.panel1.PerformLayout();
            ((System.ComponentModel.ISupportInitialize)(this.dataGridView1)).EndInit();
            this.panel2.ResumeLayout(false);
            this.panel2.PerformLayout();
            this.ResumeLayout(false);

        }

        #endregion

        private System.Windows.Forms.Panel panel1;
        private System.Windows.Forms.Label label1;
        private System.Windows.Forms.DateTimePicker datetime;
        private System.Windows.Forms.TextBox email;
        private System.Windows.Forms.TextBox number;
        private System.Windows.Forms.TextBox address;
        private System.Windows.Forms.TextBox custName;
        private System.Windows.Forms.Label label4;
        private System.Windows.Forms.Label label3;
        private System.Windows.Forms.Label label2;
        private System.Windows.Forms.Label label5;
        private System.Windows.Forms.ComboBox genderCombo;
        private System.ComponentModel.BackgroundWorker backgroundWorker1;
        private System.Windows.Forms.Button submitBtn;
        private System.Windows.Forms.Button clearBtn;
        private System.Windows.Forms.Button exitBtn;
        private System.Windows.Forms.DataGridView dataGridView1;
        private System.Windows.Forms.Label label6;
        private System.Windows.Forms.Panel panel2;
        private System.Windows.Forms.DataGridViewTextBoxColumn Criteria;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Excellent;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Good;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Average;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Bad;
        private System.Windows.Forms.DataGridViewCheckBoxColumn Horrible;
    }
}