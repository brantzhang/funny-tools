using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.IO;
using System.Net;
using System.Text;
using System.Threading;
using System.Windows.Forms;

namespace Seay
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            CheckForIllegalCrossThreadCalls = false;

        }

        string cookies = "";
        string html = "";

        public string post(bool isreg, string posturl, string postdata, string cookie)
        {
            try
            {


                byte[] data = Encoding.Default.GetBytes(postdata);

                HttpWebRequest req = (HttpWebRequest)WebRequest.Create(posturl);
                req.Method = "POST";

                req.ContentLength = data.Length;
                req.ContentType = "application/x-www-form-urlencoded; charset=UTF-8";
                req.Accept = "application/json, text/javascript, */*; q=0.01";
                req.Referer = "http://www.douguo.com/signup.html";
                req.UserAgent = "a";
                if (isreg)
                {
                    req.Headers.Add("cookie", "bdshare_firstime=1409932112477; CNZZDATA30029854=cnzz_eid%3D1361503193-1409928798-http%253A%252F%252Fwww.douguo.com%252F%26ntime%3D1409928798; Hm_lvt_a2b4c73b05ad5f4b724f1393c72b67cc=1409932115; Hm_lpvt_a2b4c73b05ad5f4b724f1393c72b67cc=1409932664; last_show=1409932115499; showNums=3; username=u09924428671886; dg_auths=a%3A5%3A%7Bs%3A10%3A%22session_id%22%3Bs%3A32%3A%22cc03899888dcc1b708aab2292c9b5981%22%3Bs%3A10%3A%22ip_address%22%3Bs%3A14%3A%22101.40.134.123%22%3Bs%3A10%3A%22user_agent%22%3Bs%3A1%3A%22a%22%3Bs%3A13%3A%22last_activity%22%3Bi%3A1409932663%3Bs%3A9%3A%22mycaptcha%22%3Bs%3A4%3A%225AZU%22%3B%7D0b9a0b3ca73451e20a5648d82ba46244");
                }
                else
                {
                    req.Headers.Add("cookie", cookies);
                }

                Stream s = req.GetRequestStream();
                s.Write(data, 0, data.Length);
                s.Close();

                HttpWebResponse res = (HttpWebResponse)req.GetResponse();
                StreamReader sr = new StreamReader(res.GetResponseStream(), Encoding.UTF8);
                html = sr.ReadToEnd();
                sr.Close();
                res.Close();

                cookies = res.Headers["set-cookie"].Replace("path=/,", "");

                
            }
            catch (Exception)
            {

            }

            return html;
        }


        public void start()
        {
            if (textBox1.Text.Trim() == "")
            {
                MessageBox.Show("请输入要刷票的ID");
                return;
            }

            if (!File.Exists("1.txt"))
            {
                MessageBox.Show("请把用户名列表一行一个放到这个程序目录下面，并且文件名为1.txt");
                return;
            }

            System.DateTime startTime = TimeZone.CurrentTimeZone.ToLocalTime(new System.DateTime(1970, 1, 1));

            string[] names = File.ReadAllLines("1.txt",Encoding.GetEncoding("utf-8"));

            for (int i = 1; i < names.Length; i++)
            {
                //注册及登陆
                try
                {
                    if (post(true, "http://www.douguo.com/ajax/signup", "&user=" + textBox2.Text.Trim() + i + "@qq.com&pwd=woshimima&nickname=" + names[i]  + "&code=5AZU&lvyun=1", "").Contains("\"status\":\"ERR\""))
                    {
                        continue;
                    }

                    if (post(false, "http://www.douguo.com/uajax/addDishFav", "&d_id=" + textBox1.Text.Trim(), cookies).Contains("\"status\":\"OK\""))
                    {
                        File.AppendAllText("regsuccess.txt","注册邮箱为："+textBox2.Text.Trim() + i + "@qq.com\r\n");
                    }

                    label2.Text = "刷票次数：" + i;
                }
                catch (Exception)
                {
                    continue;
                }

            }

        }
        Thread th = null;
        private void button1_Click(object sender, EventArgs e)
        {
            th = new Thread(start);
            th.Start();

        }

        private void button2_Click(object sender, EventArgs e)
        {
            if (th != null && th.ThreadState != ThreadState.Aborted)
            {
                th.Abort();
            }
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (th != null && th.ThreadState != ThreadState.Aborted)
            {
                th.Abort();
            }
        }
    }
}
