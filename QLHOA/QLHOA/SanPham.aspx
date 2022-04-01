<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="SanPham.aspx.cs" Inherits="QLHOA.SanPham" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
        .sp {
            text-align:center;
        }
        .tensp {
            color: darkblue;
            font-size: 18px;
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
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:DataList ID="DataList1" runat="server">
        <ItemTemplate>
            <asp:Image CssClass="hinh" ID="Image1" runat="server" ImageUrl='<%# "~/images/"+Eval("HinhAnh") %>' />
            <br />
            <asp:LinkButton CssClass="tensp" ID="LinkButton2" runat="server" Text='<%# Eval("TenHoa") %>' CommandArgument='<%# Eval("MaHoa") %>' OnClick="LinkButton2_Click"></asp:LinkButton>
            <br />
            <asp:Label CssClass="gia" ID="Label1" runat="server" Text='<%# Eval("DonGia") %>'></asp:Label>
        </ItemTemplate>
    </asp:DataList>
</asp:Content>
