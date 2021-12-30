using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;

/// <summary>
/// SweetAlert 的摘要描述
/// </summary>
public class SweetAlert
{
    public class SweetDialog
    {
        public enum MessageIcon : int
        {
            SUCCESS = 0,
            FAIL,
            WARNING,
            INFO
        }

        //t = 標題文字 c = 內容 icon = 要顯示的ICON p = 該網頁
        public void Show(Page p, String t, String c, int icon)
        {
            String info;

            switch (icon)
            {
                case (int)MessageIcon.SUCCESS:
                    info = "success";
                    break;
                case (int)MessageIcon.FAIL:
                    info = "error";
                    break;
                case (int)MessageIcon.WARNING:
                    info = "warning";
                    break;

                case (int)MessageIcon.INFO:
                    info = "info";
                    break;
                default:
                    info = "question";
                    break;
            }

            string js = @"swalDialog('" + t + "', '" + c + "', '" + info + "');";

            ScriptManager.RegisterStartupScript(p, GetType(), "script",
                js, true);
        }
    }
}