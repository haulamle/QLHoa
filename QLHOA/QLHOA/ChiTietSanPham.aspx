<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="ChiTietSanPham.aspx.cs" Inherits="QLHOA.ChiTietSanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sp {
            display: flex;
            align-items:center;
        }
        .sp .chitiet {
            display: flex;
            justify-content: center;
            flex-direction: column;
            align-items: center;
        }
        .tensp {
            color: darkblue;
            font-size: 18px;
            font-weight: 700;
        }
        .hinh {
            width: 200px;
            height:150px;
        }
        .gia {
            font-size: 20px;
            font-weight: bold;
            color: red;
        }
        .input-sl {
            width: 60px;
            margin-right: 4px;
        }
        .chucnang {
            margin-top: 10px;
            display: flex;
            justify-content: center;
        }
        .chucnang * {
            margin: 0 4px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <div class="sp">
            <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
            &nbsp;&nbsp;
            <asp:Label CssClass="tensp" ID="Label1" runat="server" Text='<%# Eval("TenHoa") %>'></asp:Label>
            <br />
            <asp:Label ID="Label2" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
            <br />
            </div>
            <div class="chucnang">
                <asp:Button ID="btnMua" runat="server" Text="Mua" />
                <asp:Button ID="btnGioHang" runat="server" Text="Xem Giỏ hàng" />
            </div>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
