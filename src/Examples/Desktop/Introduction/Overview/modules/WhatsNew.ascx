<%@ Control Language="C#" %>

<ext:DesktopModuleProxy runat="server">
    <Module ModuleID="whatsnew-win">
        <Shortcut Name="What's new" SortIndex="100" />
        <Window>
            <ext:Window
                runat="server"
                Width="720"
                Height="360"
                AnimCollapse="false"
                ConstrainHeader="true"
                Border="false"
                StyleHtmlContent="true"
                Title="What's New">
                <Content>
                    <ul>
                        <li>
                            Dynamic modules (attach/deattach modules from server side without page reloading)
                        </li>
                        <li>
                            Modules can be defined in the user control now
                        </li>
                        <li>
                            Shortcuts multi selection (including drag selection)
                        </li>
                        <li>
                            Shortcuts drag&amp;drop (multiple shortcuts dragging is supported)
                        </li>
                        <li>
                            Shortcut and desktop context menu
                        </li>
                        <li>
                            Quick lanch and tray
                        </li>
                    </ul>
                </Content>
            </ext:Window>
        </Window>
    </Module>
</ext:DesktopModuleProxy>