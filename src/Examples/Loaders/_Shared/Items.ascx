<%@ Control Language="C#" %>

<ext:Container runat="server" Layout="Border" Border="false" Padding="4">
    <Items>
        <ext:Panel 
            runat="server" 
            Region="West" 
            Title="West"
            Split="true" 
            Width="150" 
            Collapsible="true" 
            />
        <ext:Panel 
            runat="server" 
            Region="Center" 
            Title="Center"
            />
        <ext:Panel 
            runat="server" 
            Region="East" 
            Title="East" 
            Split="true" 
            Width="150" 
            Collapsible="true" 
            />
    </Items>
</ext:Container>