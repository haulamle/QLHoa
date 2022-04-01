using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;

namespace QLHOA
{
    public class KetNoi
    {
        SqlConnection con;
        private void layKnoi()
        {
            //khởi tạo giá trị cho đối tượng SqlConnection 
            con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\desktop\Dev Web\Back End\ASP\KiemTraThi\QLHOA\QLHOA\App_Data\Database.mdf;Integrated Security=True");
            con.Open();//mở kết nối
        }
        //xây dựng hàm đóng kết nối
        private void dongketnoi()
        {
            if (con.State == ConnectionState.Open)//nếu kết nối đang mở
                con.Close();
        }
        // cập nhật dữ liệu
        public int capnhat(string sql)
        {
            int kq = 0;
            try
            {
                layKnoi();
                SqlCommand cmd = new SqlCommand(sql, con);
                kq = cmd.ExecuteNonQuery(); // thực thi câu lệnh truy vấn
            }
            catch
            {
                kq = 0;
            }
            finally
            {
                dongketnoi();
            }
            return kq;
        }
        // hàm lấy dữ liệu có kiểu là DataTable, giá trị truyền vào là 1 chuỗi sql
        public DataTable laydata(String sql)
        {
            DataTable dt = new DataTable();
            try
            {
                layKnoi(); // mở kết nối
                SqlDataAdapter adapter = new SqlDataAdapter(sql, con);
                adapter.Fill(dt); // đỗ dữ liệu vào dt 
            }
            catch
            {
                dt = null;
            }
            finally
            {
                dongketnoi();
            }
            return dt; // kết quả trả về là 1 table
        }
    }
}