using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ext.Net;

namespace printf
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!X.IsAjaxRequest){
                bindUser();
            }
        }


        List<EB_Student> stulist = new List<EB_Student>();

        public void bindUser()
        {
            stulist.Add(new EB_Student() { Id = "001", Name = "张三", Course = "英语", Address = "海珠区", Tel = "13526201350" });
            stulist.Add(new EB_Student() { Id = "002", Name = "李四", Course = "数学", Address = "白云区", Tel = "15236865280" });
            stulist.Add(new EB_Student() { Id = "003", Name = "王五", Course = "金融", Address = "天河区", Tel = "13524680888" });
            stulist.Add(new EB_Student() { Id = "004", Name = "陆六", Course = "法语", Address = "番禺区", Tel = "15625523666" });
            stulist.Add(new EB_Student() { Id = "005", Name = "陈七", Course = "中医", Address = "越秀区", Tel = "14586856285" });
            stulist.Add(new EB_Student() { Id = "006", Name = "赵八", Course = "法律", Address = "荔湾区", Tel = "15299665533" });
            stulist.Add(new EB_Student() { Id = "007", Name = "钱九", Course = "材料", Address = "南沙区", Tel = "13624562563" });

         
            Store1.RemoveAll();
            Store1.DataSource = stulist;
            Store1.DataBind();

        }

         [DirectMethod]
        public void printfs(object sender, Ext.Net.DirectEventArgs e)
        {
            bindUser();
            RowSelectionModel sm = GridPanel1.GetSelectionModel() as RowSelectionModel;
            List<string> ids = new List<string>();
            ids = sm.SelectedRows.Select(row => row.RecordID).ToList<string>();

            List<EB_Student> namelist = (from people in stulist
                                     where people.Id == ids[0]
                                     select people).ToList<EB_Student>();

            X.Call("SelectNum", namelist);

        }

        public class EB_Student {
            public string Id { get; set; }

            public string Name { get; set; }

            public string Course { get; set; }

            public string Address { get; set; }

            public string Tel { get; set; }
        }
    }
}