<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent" ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
            <Fields>
                <asp:BoundField DataField="id" HeaderText="id" ReadOnly="True" SortExpression="id" />
                <asp:BoundField DataField="id_TheLoai_LanPham" HeaderText="id_TheLoai_LanPham" SortExpression="id_TheLoai_LanPham" />
                <asp:BoundField DataField="Kho" HeaderText="Kho" SortExpression="Kho" />
                <asp:BoundField DataField="TenSanPham" HeaderText="TenSanPham" SortExpression="TenSanPham" />
                <asp:BoundField DataField="Gia" HeaderText="Gia" SortExpression="Gia" />
                <asp:BoundField DataField="MieuTa" HeaderText="MieuTa" SortExpression="MieuTa" />
                <asp:BoundField DataField="HinhAnh" HeaderText="HinhAnh" SortExpression="HinhAnh" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:DataBaseNhom11ConnectionString %>" DeleteCommand="DELETE FROM [SanPham] WHERE [id] = @id" InsertCommand="INSERT INTO [SanPham] ([id], [id_TheLoai_LanPham], [Kho], [TenSanPham], [Gia], [MieuTa], [HinhAnh]) VALUES (@id, @id_TheLoai_LanPham, @Kho, @TenSanPham, @Gia, @MieuTa, @HinhAnh)" SelectCommand="SELECT * FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [id_TheLoai_LanPham] = @id_TheLoai_LanPham, [Kho] = @Kho, [TenSanPham] = @TenSanPham, [Gia] = @Gia, [MieuTa] = @MieuTa, [HinhAnh] = @HinhAnh WHERE [id] = @id">
            <DeleteParameters>
                <asp:Parameter Name="id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="id" Type="Int32" />
                <asp:Parameter Name="id_TheLoai_LanPham" Type="Int32" />
                <asp:Parameter Name="Kho" Type="String" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MieuTa" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="id_TheLoai_LanPham" Type="Int32" />
                <asp:Parameter Name="Kho" Type="String" />
                <asp:Parameter Name="TenSanPham" Type="String" />
                <asp:Parameter Name="Gia" Type="Decimal" />
                <asp:Parameter Name="MieuTa" Type="String" />
                <asp:Parameter Name="HinhAnh" Type="String" />
                <asp:Parameter Name="id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
        <div class="content-wrapper">
            <hgroup class="title">
                <h1><%: Title %>.</h1>
                <h2>Modify this template to jump-start your ASP.NET application.</h2>
            </hgroup>

            <p>
                To learn more about ASP.NET, visit <a href="http://asp.net" title="ASP.NET Website">http://asp.net</a>.
                The page features <mark>videos, tutorials, and samples</mark> to help you get the most from ASP.NET.
                If you have any questions about ASP.NET visit <a href="http://forums.asp.net/18.aspx" title="ASP.NET Forum">our forums</a>.
            </p>
        </div>
    </section>
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h3>We suggest the following:</h3>
    <ol class="round">
        <li class="one">
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px"></asp:DetailsView>
            <h5>Getting Started</h5>
            ASP.NET Web Forms lets you build dynamic websites using a familiar drag-and-drop, event-driven model.
            A design surface and hundreds of controls and components let you rapidly build sophisticated, powerful UI-driven sites with data access.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245146">Learn more…</a>
        </li>
        <li class="two">
            <h5>Add NuGet packages and jump-start your coding</h5>
            NuGet makes it easy to install and update free libraries and tools.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245147">Learn more…</a>
        </li>
        <li class="three">
            <h5>Find Web Hosting</h5>
            You can easily find a web hosting company that offers the right mix of features and price for your applications.
            <a href="http://go.microsoft.com/fwlink/?LinkId=245143">Learn more…</a>
        </li>
    </ol>
</asp:Content>
