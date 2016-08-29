<%@ Page Title="Home Page" Language="VB" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content runat="server" ID="FeaturedContent"  ContentPlaceHolderID="FeaturedContent">
    <section class="featured">
        <div class="content-wrapper">
            <hgroup class="title">
                <h1></h1>
                <h2>Chào mừng các bạn đến với Website của chúng tôi.</h2>
				<h2>Welcome to My Website.</h2>
            </hgroup>
            <p>
                Website của chúng tôi luôn phục vụ các bạn tận tâm.</a>.
                Tôn chỉ hoạt động của Website chúng tôi là:</mark> Niềm vui của khách hàng là hạnh phúc với chúng tôi.
                Rất mong các bạn ủng hộ chúng tôi<a href="Default.aspx" title="ASP.NET Forum">Hãy đến với chúng tôi.</a>.
            </p>
            <img src="Images/logo.jpg" alt="logo" />
        </div>
    </section>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    
    <ol class="round">
        <li class="one">
            
            <h5>Khách Hàng - Table 1</h5>
            <asp:DetailsView ID="DetailsView2" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_kh" DataSourceID="SqlDataSource1">
                <Fields>
                    <asp:BoundField DataField="id_kh" HeaderText="id_kh" ReadOnly="True" SortExpression="id_kh" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="email" HeaderText="email" SortExpression="email" />
                    <asp:BoundField DataField="address" HeaderText="address" SortExpression="address" />
                    <asp:BoundField DataField="phone_munber" HeaderText="phone_munber" SortExpression="phone_munber" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHang_Group9_INF205ConnectionString13 %>" DeleteCommand="DELETE FROM [KhachHang] WHERE [id_kh] = @id_kh" InsertCommand="INSERT INTO [KhachHang] ([id_kh], [name], [email], [address], [phone_munber]) VALUES (@id_kh, @name, @email, @address, @phone_munber)" SelectCommand="SELECT [id_kh], [name], [email], [address], [phone_munber] FROM [KhachHang]" UpdateCommand="UPDATE [KhachHang] SET [name] = @name, [email] = @email, [address] = @address, [phone_munber] = @phone_munber WHERE [id_kh] = @id_kh">
                <DeleteParameters>
                    <asp:Parameter Name="id_kh" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_kh" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone_munber" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="email" Type="String" />
                    <asp:Parameter Name="address" Type="String" />
                    <asp:Parameter Name="phone_munber" Type="Int32" />
                    <asp:Parameter Name="id_kh" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="two">
            <h5>Sản Phẩm - Table 2</h5>
            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_sp" DataSourceID="SqlDataSource2">
                <Fields>
                    <asp:BoundField DataField="id_sp" HeaderText="id_sp" ReadOnly="True" SortExpression="id_sp" />
                    <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                    <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                    <asp:BoundField DataField="description" HeaderText="description" SortExpression="description" />
                    <asp:BoundField DataField="LoaiSanPham_sku" HeaderText="LoaiSanPham_sku" SortExpression="LoaiSanPham_sku" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHang_Group9_INF205ConnectionString15 %>" DeleteCommand="DELETE FROM [SanPham] WHERE [id_sp] = @id_sp" InsertCommand="INSERT INTO [SanPham] ([id_sp], [name], [price], [description], [LoaiSanPham_sku]) VALUES (@id_sp, @name, @price, @description, @LoaiSanPham_sku)" SelectCommand="SELECT [id_sp], [name], [price], [description], [LoaiSanPham_sku] FROM [SanPham]" UpdateCommand="UPDATE [SanPham] SET [name] = @name, [price] = @price, [description] = @description, [LoaiSanPham_sku] = @LoaiSanPham_sku WHERE [id_sp] = @id_sp">
                <DeleteParameters>
                    <asp:Parameter Name="id_sp" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_sp" Type="Int32" />
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="LoaiSanPham_sku" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name" Type="String" />
                    <asp:Parameter Name="price" Type="Decimal" />
                    <asp:Parameter Name="description" Type="String" />
                    <asp:Parameter Name="LoaiSanPham_sku" Type="Int32" />
                    <asp:Parameter Name="id_sp" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="three">
            <h5>Chi Tiết Hóa Đơn - Table 3</h5>
            <asp:DetailsView ID="DetailsView3" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataSourceID="SqlDataSource3">
                <Fields>
                    <asp:BoundField DataField="HoaDon_id_hd" HeaderText="HoaDon_id_hd" SortExpression="HoaDon_id_hd" />
                    <asp:BoundField DataField="SanPham_id_sp" HeaderText="SanPham_id_sp" SortExpression="SanPham_id_sp" />
                    <asp:BoundField DataField="so_luong" HeaderText="so_luong" SortExpression="so_luong" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHang_Group9_INF205ConnectionString16 %>" SelectCommand="SELECT [HoaDon_id_hd], [SanPham_id_sp], [so_luong], [amount] FROM [ChiTietHoaDon]"></asp:SqlDataSource>
        </li>
        <li class="four">
            <h5>Loại Sản Phẩm</h5>
            <asp:DetailsView ID="DetailsView4" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="sku" DataSourceID="SqlDataSource4">
                <Fields>
                    <asp:BoundField DataField="sku" HeaderText="sku" ReadOnly="True" SortExpression="sku" />
                    <asp:BoundField DataField="name_sku" HeaderText="name_sku" SortExpression="name_sku" />
                    <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHang_Group9_INF205ConnectionString17 %>" DeleteCommand="DELETE FROM [LoaiSanPham] WHERE [sku] = @sku" InsertCommand="INSERT INTO [LoaiSanPham] ([sku], [name_sku]) VALUES (@sku, @name_sku)" SelectCommand="SELECT [sku], [name_sku] FROM [LoaiSanPham]" UpdateCommand="UPDATE [LoaiSanPham] SET [name_sku] = @name_sku WHERE [sku] = @sku">
                <DeleteParameters>
                    <asp:Parameter Name="sku" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="sku" Type="Int32" />
                    <asp:Parameter Name="name_sku" Type="String" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter Name="name_sku" Type="String" />
                    <asp:Parameter Name="sku" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
        <li class="five">
            <h5>Hóa Đơn</h5>
            <asp:DetailsView ID="DetailsView5" runat="server" Height="50px" Width="125px" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="id_hd" DataSourceID="SqlDataSource5">
                <Fields>
                    <asp:BoundField DataField="id_hd" HeaderText="id_hd" ReadOnly="True" SortExpression="id_hd" />
                    <asp:BoundField DataField="date_time" HeaderText="date_time" SortExpression="date_time" />
                    <asp:BoundField DataField="KhachHang_id_kh" HeaderText="KhachHang_id_kh" SortExpression="KhachHang_id_kh" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:QuanLyBanHang_Group9_INF205ConnectionString18 %>" DeleteCommand="DELETE FROM [HoaDon] WHERE [id_hd] = @id_hd" InsertCommand="INSERT INTO [HoaDon] ([id_hd], [date_time], [KhachHang_id_kh]) VALUES (@id_hd, @date_time, @KhachHang_id_kh)" SelectCommand="SELECT [id_hd], [date_time], [KhachHang_id_kh] FROM [HoaDon]" UpdateCommand="UPDATE [HoaDon] SET [date_time] = @date_time, [KhachHang_id_kh] = @KhachHang_id_kh WHERE [id_hd] = @id_hd">
                <DeleteParameters>
                    <asp:Parameter Name="id_hd" Type="Int32" />
                </DeleteParameters>
                <InsertParameters>
                    <asp:Parameter Name="id_hd" Type="Int32" />
                    <asp:Parameter DbType="Date" Name="date_time" />
                    <asp:Parameter Name="KhachHang_id_kh" Type="Int32" />
                </InsertParameters>
                <UpdateParameters>
                    <asp:Parameter DbType="Date" Name="date_time" />
                    <asp:Parameter Name="KhachHang_id_kh" Type="Int32" />
                    <asp:Parameter Name="id_hd" Type="Int32" />
                </UpdateParameters>
            </asp:SqlDataSource>
        </li>
    </ol>
</asp:Content>
