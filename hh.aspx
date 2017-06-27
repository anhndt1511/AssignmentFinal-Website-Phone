<%@ Page Language="C#" AutoEventWireup="true" CodeFile="hh.aspx.cs" Inherits="hh" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:GridView ID="GridView1" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="Ma" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowSelectButton="True" />
                <asp:BoundField DataField="Ma" HeaderText="Ma" ReadOnly="True" SortExpression="Ma" />
                <asp:BoundField DataField="SoLuong" HeaderText="SoLuong" SortExpression="SoLuong" />
                <asp:BoundField DataField="MaHoaDon" HeaderText="MaHoaDon" SortExpression="MaHoaDon" />
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" SortExpression="MaSP" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConflictDetection="CompareAllValues" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [ChiTietHoaDon] WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong" InsertCommand="INSERT INTO [ChiTietHoaDon] ([Ma], [MaHoaDon], [MaSP], [SoLuong]) VALUES (@Ma, @MaHoaDon, @MaSP, @SoLuong)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [ChiTietHoaDon]" UpdateCommand="UPDATE [ChiTietHoaDon] SET [MaHoaDon] = @MaHoaDon, [MaSP] = @MaSP, [SoLuong] = @SoLuong WHERE [Ma] = @original_Ma AND [MaHoaDon] = @original_MaHoaDon AND [MaSP] = @original_MaSP AND [SoLuong] = @original_SoLuong">
            <DeleteParameters>
                <asp:Parameter Name="original_Ma" Type="Int32" />
                <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="Ma" Type="Int32" />
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="MaHoaDon" Type="Int32" />
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="SoLuong" Type="Int32" />
                <asp:Parameter Name="original_Ma" Type="Int32" />
                <asp:Parameter Name="original_MaHoaDon" Type="Int32" />
                <asp:Parameter Name="original_MaSP" Type="Int32" />
                <asp:Parameter Name="original_SoLuong" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
