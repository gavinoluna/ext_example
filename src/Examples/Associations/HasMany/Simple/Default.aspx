<%@ Page Language="C#" %>਍ഀ
<script runat="server">਍    瀀爀漀琀攀挀琀攀搀 瘀漀椀搀 倀愀最攀开䰀漀愀搀⠀漀戀樀攀挀琀 猀攀渀搀攀爀Ⰰ 䔀瘀攀渀琀䄀爀最猀 攀⤀ഀ
    {਍        匀琀漀爀攀㄀⸀䐀愀琀愀 㴀 琀栀椀猀⸀唀猀攀爀猀㬀ഀ
    }਍ഀ
    public List<User> Users਍    笀ഀ
        get਍        笀ഀ
            return new List<User> ਍            笀 ഀ
                new User(1, "User1", new List<Product>{਍                    渀攀眀 倀爀漀搀甀挀琀⠀㄀Ⰰ ∀倀爀漀搀甀挀琀㄀ 漀昀 唀猀攀爀㄀∀⤀Ⰰഀ
                    new Product(2, "Product2 of User1"),਍                    渀攀眀 倀爀漀搀甀挀琀⠀㌀Ⰰ ∀倀爀漀搀甀挀琀㌀ 漀昀 唀猀攀爀㄀∀⤀ഀ
                }),਍                ഀ
                new User(2, "User2", new List<Product>{਍                    渀攀眀 倀爀漀搀甀挀琀⠀㐀Ⰰ ∀倀爀漀搀甀挀琀㄀ 漀昀 唀猀攀爀㈀∀⤀Ⰰഀ
                    new Product(5, "Product2 of User2"),਍                    渀攀眀 倀爀漀搀甀挀琀⠀㘀Ⰰ ∀倀爀漀搀甀挀琀㌀ 漀昀 唀猀攀爀㈀∀⤀ഀ
                }),਍                ഀ
                new User(3, "User3", new List<Product>{਍                    渀攀眀 倀爀漀搀甀挀琀⠀㜀Ⰰ ∀倀爀漀搀甀挀琀㄀ 漀昀 唀猀攀爀㌀∀⤀Ⰰഀ
                    new Product(8, "Product2 of User3"),਍                    渀攀眀 倀爀漀搀甀挀琀⠀㤀Ⰰ ∀倀爀漀搀甀挀琀㌀ 漀昀 唀猀攀爀㌀∀⤀ഀ
                })਍            紀㬀ഀ
        }਍    紀ഀ
਍    瀀甀戀氀椀挀 挀氀愀猀猀 倀爀漀搀甀挀琀ഀ
    {਍        瀀甀戀氀椀挀 倀爀漀搀甀挀琀⠀椀渀琀 椀搀Ⰰ 猀琀爀椀渀最 渀愀洀攀⤀ഀ
        {਍            琀栀椀猀⸀䤀搀 㴀 椀搀㬀ഀ
            this.Name = name;਍        紀ഀ
        ਍        瀀甀戀氀椀挀 椀渀琀 䤀搀ഀ
        {਍            最攀琀㬀ഀ
            private set;਍        紀ഀ
਍        瀀甀戀氀椀挀 猀琀爀椀渀最 一愀洀攀ഀ
        {਍            最攀琀㬀ഀ
            private set;਍        紀ഀ
    }਍ഀ
    public class User਍    笀ഀ
        public User(int id, string name, List<Product> products)਍        笀ഀ
            this.Id = id;਍            琀栀椀猀⸀一愀洀攀 㴀 渀愀洀攀㬀ഀ
            this.Products = products;਍        紀ഀ
਍        瀀甀戀氀椀挀 椀渀琀 䤀搀ഀ
        {਍            最攀琀㬀ഀ
            private set;਍        紀ഀ
਍        瀀甀戀氀椀挀 猀琀爀椀渀最 一愀洀攀ഀ
        {਍            最攀琀㬀ഀ
            private set;਍        紀ഀ
਍        瀀甀戀氀椀挀 䰀椀猀琀㰀倀爀漀搀甀挀琀㸀 倀爀漀搀甀挀琀猀ഀ
        {਍            最攀琀㬀ഀ
            private set;਍        紀ഀ
    }਍㰀⼀猀挀爀椀瀀琀㸀ഀ
਍㰀℀䐀伀䌀吀夀倀䔀 栀琀洀氀㸀ഀ
਍㰀栀琀洀氀㸀ഀ
<head runat="server">਍    㰀琀椀琀氀攀㸀匀椀洀瀀氀攀 䠀愀猀䴀愀渀礀 䄀猀猀漀挀椀愀琀椀漀渀 ⴀ 䔀砀琀⸀一䔀吀 䔀砀愀洀瀀氀攀猀㰀⼀琀椀琀氀攀㸀ഀ
    <link href="/resources/css/examples.css" rel="stylesheet" />    ਍㰀⼀栀攀愀搀㸀ഀ
<body>਍    㰀攀砀琀㨀刀攀猀漀甀爀挀攀䴀愀渀愀最攀爀 爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ ⼀㸀ഀ
    ਍    㰀栀㄀㸀匀椀洀瀀氀攀 䠀愀猀䴀愀渀礀 䄀猀猀漀挀椀愀琀椀漀渀㰀⼀栀㄀㸀ഀ
਍    㰀攀砀琀㨀䴀漀搀攀氀 爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ 一愀洀攀㴀∀倀爀漀搀甀挀琀∀ 䤀䐀倀爀漀瀀攀爀琀礀㴀∀䤀搀∀㸀ഀ
        <Fields>਍            㰀攀砀琀㨀䴀漀搀攀氀䘀椀攀氀搀 一愀洀攀㴀∀䤀搀∀ 吀礀瀀攀㴀∀䤀渀琀∀ ⼀㸀ഀ
            <ext:ModelField Name="Name" Type="String" />਍        㰀⼀䘀椀攀氀搀猀㸀        ഀ
    </ext:Model>਍ഀ
    <ext:Store ID="Store1" runat="server">਍        㰀䴀漀搀攀氀㸀ഀ
            <ext:Model runat="server" Name="User" IDProperty="Id">਍                㰀䘀椀攀氀搀猀㸀ഀ
                    <ext:ModelField Name="Id" Type="Int" />਍                    㰀攀砀琀㨀䴀漀搀攀氀䘀椀攀氀搀 一愀洀攀㴀∀一愀洀攀∀ 吀礀瀀攀㴀∀匀琀爀椀渀最∀ ⼀㸀ഀ
                </Fields>        ਍                㰀䄀猀猀漀挀椀愀琀椀漀渀猀㸀ഀ
                    <ext:HasManyAssociation Model="Product" Name="products" AssociationKey="Products"/>਍                㰀⼀䄀猀猀漀挀椀愀琀椀漀渀猀㸀ഀ
            </ext:Model>਍        㰀⼀䴀漀搀攀氀㸀ഀ
    </ext:Store>਍ഀ
    <ext:Panel runat="server" Border="false" Width="500" Height="250">਍        㰀䰀愀礀漀甀琀䌀漀渀昀椀最㸀ഀ
            <ext:HBoxLayoutConfig Align="Stretch" />਍        㰀⼀䰀愀礀漀甀琀䌀漀渀昀椀最㸀ഀ
        <Defaults>਍            㰀攀砀琀㨀倀愀爀愀洀攀琀攀爀 一愀洀攀㴀∀洀愀爀最椀渀∀ 嘀愀氀甀攀㴀∀㔀∀ 䴀漀搀攀㴀∀刀愀眀∀ ⼀㸀ഀഀ
        </Defaults>਍        㰀䤀琀攀洀猀㸀ഀ
            <ext:GridPanel ਍                爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ ഀ
                StoreID="Store1"਍                吀椀琀氀攀㴀∀唀猀攀爀猀 ⠀猀攀氀攀挀琀 愀 爀漀眀 琀漀 猀攀攀 瀀爀漀搀甀挀琀猀⤀∀ ഀ
                Flex="1">                ਍                㰀䌀漀氀甀洀渀䴀漀搀攀氀㸀ഀ
                    <Columns>਍                        㰀攀砀琀㨀䌀漀氀甀洀渀 爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ 吀攀砀琀㴀∀一愀洀攀∀ 䐀愀琀愀䤀渀搀攀砀㴀∀一愀洀攀∀ 䘀氀攀砀㴀∀㄀∀ ⼀㸀ഀ
                    </Columns>            ਍                㰀⼀䌀漀氀甀洀渀䴀漀搀攀氀㸀       ഀ
                <Listeners>਍                    㰀匀攀氀攀挀琀椀漀渀䌀栀愀渀最攀 䠀愀渀搀氀攀爀㴀∀猀攀氀攀挀琀攀搀⸀氀攀渀最琀栀 ☀☀ ⌀笀倀爀漀搀甀挀琀猀䜀爀椀搀紀⸀戀椀渀搀匀琀漀爀攀⠀猀攀氀攀挀琀攀搀嬀　崀⸀瀀爀漀搀甀挀琀猀⠀⤀⤀㬀∀ ⼀㸀ഀ
                </Listeners>                ਍            㰀⼀攀砀琀㨀䜀爀椀搀倀愀渀攀氀㸀ഀ
਍            㰀攀砀琀㨀䜀爀椀搀倀愀渀攀氀 ഀ
                ID="ProductsGrid"਍                爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ ഀ
                Title="Products" ਍                䘀氀攀砀㴀∀㄀∀㸀ഀ
                <Store>਍                    㰀攀砀琀㨀匀琀漀爀攀 爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ 䴀漀搀攀氀一愀洀攀㴀∀倀爀漀搀甀挀琀∀ ⼀㸀                        ഀ
                </Store>਍                㰀䌀漀氀甀洀渀䴀漀搀攀氀㸀ഀ
                    <Columns>਍                        㰀攀砀琀㨀䌀漀氀甀洀渀 爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ 吀攀砀琀㴀∀一愀洀攀∀ 䐀愀琀愀䤀渀搀攀砀㴀∀一愀洀攀∀ 䘀氀攀砀㴀∀㄀∀ ⼀㸀ഀ
                    </Columns>            ਍                㰀⼀䌀漀氀甀洀渀䴀漀搀攀氀㸀                            ഀ
            </ext:GridPanel>਍        㰀⼀䤀琀攀洀猀㸀ഀ
    </ext:Panel>਍ഀ
    <br />਍ഀ
    <ext:GridPanel ਍        爀甀渀愀琀㴀∀猀攀爀瘀攀爀∀ ഀ
        StoreID="Store1"਍        吀椀琀氀攀㴀∀唀猀攀爀猀 眀椀琀栀 刀漀眀䔀砀瀀愀渀搀攀爀∀ ഀ
        Width="500" ਍        䠀攀椀最栀琀㴀∀㈀㔀　∀㸀                ഀ
        <ColumnModel>਍            㰀䌀漀氀甀洀渀猀㸀ഀ
                <ext:Column runat="server" Text="Name" DataIndex="Name" Flex="1" />਍            㰀⼀䌀漀氀甀洀渀猀㸀            ഀ
        </ColumnModel>਍        㰀倀氀甀最椀渀猀㸀ഀഀ
            <ext:RowExpander runat="server" SingleExpand="false">਍                㰀䌀漀洀瀀漀渀攀渀琀㸀ഀഀ
                    <ext:GridPanel runat="server" Title="Products">਍                        㰀匀琀漀爀攀㸀ഀ
                            <ext:Store runat="server" ModelName="Product" />                        ਍                        㰀⼀匀琀漀爀攀㸀ഀ
                        <ColumnModel>਍                            㰀䌀漀氀甀洀渀猀㸀ഀ
                                <ext:Column runat="server" Text="Name" DataIndex="Name" Flex="1" />਍                            㰀⼀䌀漀氀甀洀渀猀㸀            ഀ
                        </ColumnModel>  ਍                        㰀䰀椀猀琀攀渀攀爀猀㸀ഀഀ
                            <ViewReady Handler="this.bindStore(this.record.products());" Delay="1" />਍                        㰀⼀䰀椀猀琀攀渀攀爀猀㸀                          ഀ
                    </ext:GridPanel>਍                㰀⼀䌀漀洀瀀漀渀攀渀琀㸀ഀഀ
            </ext:RowExpander>਍        㰀⼀倀氀甀最椀渀猀㸀           ഀ
    </ext:GridPanel>਍㰀⼀戀漀搀礀㸀ഀ
</html>