﻿<%@ Page Language="C#" %>

<script runat="server">
    [DirectMethod(Namespace = "CompanyX")]
    public void ShowMsg(string msg)
    {
        X.Msg.Notify("Message", msg).Show();
    }
</script>

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Remote Data Calendar - Ext.NET Examples</title>

    <link rel="stylesheet" href="../Shared/resources/css/main.css" />

    <script src="../Shared/resources/js/common.js"></script>
    <script src="override.js"></script>
</head>
<body>
    <form runat="server">
        <ext:ResourceManager runat="server" Namespace="CompanyX" />

        <ext:Viewport runat="server" Layout="Border">
            <Items>
                <ext:Panel
                    runat="server"
                    Height="35"
                    Border="false"
                    Region="North"
                    Cls="app-header"
                    BodyCls="app-header-content">
                    <Content>
                        <div id="app-logo">
                            <div class="logo-top">&nbsp;</div>
                            <div id="logo-body">&nbsp;</div>
                            <div class="logo-bottom">&nbsp;</div>
                        </div>
                        <h1>My Calendar</h1>
                        <span id="app-msg" class="x-hidden"></span>
                    </Content>
                </ext:Panel>

                <ext:Panel
                    ID="Panel1"
                    runat="server"
                    Title="..."
                    Layout="Border"
                    Region="Center"
                    Cls="app-center">
                    <Items>
                        <ext:Panel
                            runat="server"
                            Width="213"
                            Region="West"
                            Border="false"
                            Cls="app-west">
                            <Items>
                                <ext:DatePicker ID="DatePicker1" runat="server" Cls="ext-cal-nav-picker">
                                    <Listeners>
                                        <Select Fn="CompanyX.setStartDate" Scope="CompanyX" />
                                    </Listeners>
                                </ext:DatePicker>
                            </Items>
                            <TopBar>
                                <ext:Toolbar runat="server">
                                    <Items>
                                        <ext:Button
                                            runat="server"
                                            Text="Save All Events"
                                            Icon="Disk"
                                            Handler="CompanyX.record.saveAll();"
                                            />
                                    </Items>
                                </ext:Toolbar>
                            </TopBar>
                        </ext:Panel>

                        <ext:CalendarPanel
                            ID="CalendarPanel1"
                            runat="server"
                            Region="Center"
                            ActiveIndex="2"
                            Border="false">
                            <CalendarStore ID="CalendarStore1" runat="server">
                                <Calendars>
                                    <ext:CalendarModel CalendarId="1" Title="Home" />
                                    <ext:CalendarModel CalendarId="2" Title="Work" />
                                    <ext:CalendarModel CalendarId="3" Title="School" />
                                </Calendars>
                            </CalendarStore>
                            <EventStore ID="EventStore1" runat="server" NoMappings="true">
                                <Proxy>
                                    <ext:AjaxProxy Url="../Shared/Code/RemoteService.asmx/GetEvents" Json="true">
                                        <ActionMethods Read="POST" />
                                        <Reader>
                                            <ext:JsonReader RootProperty="d" />
                                        </Reader>
                                    </ext:AjaxProxy>
                                </Proxy>
                                <Mappings>
                                    <ext:ModelField Name="StartDate" Type="Date" DateFormat="M$" />
                                    <ext:ModelField Name="EndDate" Type="Date" DateFormat="M$" />
                                </Mappings>
                                <Listeners>
                                    <BeforeSync Handler="Ext.Msg.alert('Sync', 'The EventStore initiates a sync request after that action. The EventStore synchronization is not implemented in that example.');
                                                         this.commitChanges();
                                                         return false;" />
                                </Listeners>
                            </EventStore>
                            <%-- Setting enableFx to false is a workaround for #833 --%>
                            <MonthView
                                runat="server"
                                ShowHeader="true"
                                ShowWeekLinks="true"
                                ShowWeekNumbers="true"
                                EnableFx="false"
                                />
                            <WeekView runat="server">
                                <CustomConfig>
                                    <ext:ConfigItem Name="enableFx" Value="false" Mode="Raw" />
                                </CustomConfig>
                            </WeekView>
                            <DayView runat="server">
                                <CustomConfig>
                                    <ext:ConfigItem Name="enableFx" Value="false" Mode="Raw" />
                                </CustomConfig>
                            </DayView>
                            <Listeners>
                                <ViewChange  Fn="CompanyX.viewChange" Scope="CompanyX" />
                                <EventClick  Fn="CompanyX.record.show" Scope="CompanyX" />
                                <DayClick    Fn="CompanyX.dayClick" Scope="CompanyX" />
                                <RangeSelect Fn="CompanyX.rangeSelect" Scope="CompanyX" />

                                <EventMove   Fn="CompanyX.record.move" Scope="CompanyX" />
                                <EventResize Fn="CompanyX.record.resize" Scope="CompanyX" />

                                <EventAdd    Fn="CompanyX.record.addFromEventDetailsForm" Scope="CompanyX" />
                                <EventUpdate Fn="CompanyX.record.updateFromEventDetailsForm" Scope="CompanyX" />
                                <EventDelete Fn="CompanyX.record.removeFromEventDetailsForm" Scope="CompanyX" />
                            </Listeners>
                        </ext:CalendarPanel>
                    </Items>
                </ext:Panel>
            </Items>
        </ext:Viewport>

        <ext:EventWindow
            ID="EventWindow1"
            runat="server"
            Hidden="true"
            CalendarStoreID="CalendarStore1">
            <Listeners>
                <EventAdd    Fn="CompanyX.record.add" Scope="CompanyX" />
                <EventUpdate Fn="CompanyX.record.update" Scope="CompanyX" />
                <EditDetails Fn="CompanyX.record.edit" Scope="CompanyX" />
                <EventDelete Fn="CompanyX.record.remove" Scope="CompanyX" />
            </Listeners>
        </ext:EventWindow>
    </form>
</body>
</html>