﻿<%@ Page Language="C#" %>

<%@ Import Namespace="ListItem=Ext.Net.ListItem" %>
<%@ Import Namespace="Ext.Net.Examples.Examples.Miscellaneous.UI.Shared" %>

<script runat="server">
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack && ThemeSelector.SelectedItems.Count > 0)
        {
            this.ResourceManager1.Theme = ThemeListHandler.GetThemeFromId(ThemeSelector.SelectedItem.Value);
        }

        ThemeListHandler.AddThemeListTo(ref this.ThemeSelector);

        // Set the selected theme as the current one without issuing an auto-postback.
        this.ThemeSelector.SelectedItem.Text = this.ResourceManager1.Theme.ToString();
        this.ThemeSelector.SelectedItem.Value = ((int)this.ResourceManager1.Theme).ToString();
        this.ThemeSelector.Text = this.ThemeSelector.SelectedItem.Text;
    }
</script>
<!DOCTYPE html>

<html>
<head runat="server">
    <title>TabPanel UI Styles - Ext.NET Examples</title>

    <script type="text/javascript">
        var tabchange = function (tabPanel, newCard, oldCard) {
            if (oldCard.tabConfig && oldCard.tabConfig.ui != "default") {
                tabPanel.getTabBar().removeCls("x-tab-bar-" + oldCard.tabConfig.ui);
            }

            if (newCard.tabConfig && newCard.tabConfig.ui != "default") {
                tabPanel.getTabBar().addCls("x-tab-bar-" + newCard.tabConfig.ui);
            }
        };
    </script>
</head>
<body style="padding:30px;">
    <form runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />

        <ext:ComboBox ID="ThemeSelector" runat="server" FieldLabel="Theme" AutoPostBack="true" />

        <h3>TabPanel UI</h3>

        <ext:TabPanel runat="server" Width="800" Height="250" Title="TabPanel">
            <Items>
                <ext:Panel runat="server" Title='Default' />
                <ext:Panel runat="server" Title='UI="Primary"'>
                    <TabConfig runat="server" UI="Primary" />
                </ext:Panel>
                <ext:Panel runat="server" Title='UI="Success"'>
                    <TabConfig runat="server" UI="Success" />
                </ext:Panel>
                <ext:Panel runat="server" UI="Info" Title='UI="Info"'>
                    <TabConfig runat="server" UI="Info" />
                </ext:Panel>
                <ext:Panel runat="server" UI="Danger" Title='UI="Danger"'>
                    <TabConfig runat="server" UI="Danger" />
                </ext:Panel>
                <ext:Panel runat="server" UI="Warning" Title='UI="Warning"' Closable="true">
                    <TabConfig runat="server" UI="Warning" />
                </ext:Panel>
            </Items>
            <Listeners>
                <TabChange Fn="tabchange" />
            </Listeners>
        </ext:TabPanel>
    </form>
</body>
</html>
