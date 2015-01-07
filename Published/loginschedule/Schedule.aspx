<%@ Page Language="C#" EnableEventValidation="false" AutoEventWireup="true" CodeBehind="Schedule.aspx.cs" Inherits="VirtualLab.login___schedule.Schedule" %>

<%@ Register Assembly="Telerik.Web.UI" Namespace="Telerik.Web.UI" TagPrefix="telerik" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Schedule</title>
    <link href="../css/default.css" rel="stylesheet" type="text/css" />
    <link href="../css/custom.css" rel="stylesheet" type="text/css" />

    <script type="text/javascript" src="../ddtabmenufiles/ddtabmenu.js">
    </script>
        
    <link rel="stylesheet" type="text/css" href="../ddtabmenufiles/glowtabs.css" />
    <telerik:RadStyleSheetManager ID="RadStyleSheetManager1" runat="server" />
</head>
<body bgcolor="#FFFFFF" runat="server">
    <form runat="server">
    <div id="header_main">
        <img src="../Images/logo.jpg" align="right" style="padding-right: 20px" height="100px"
            width="120px" alt="logo" />
    </div>
    <!-- <div id="no_print"
         start header -->
    <div id="header">
        <ul id="menuTop">
            <li><a href="../Default.aspx" target="_self">Home</a></li>
            <li><a href="../Experiments/experiments.aspx" target="_self">Experiments</a></li>
            <li><a href="login.aspx" target="_self">Login & Schedule</a></li>
            <li><a href="../feedback/feedback.aspx" target="_self">Feedback</a></li>
            <li><a href="../others/livecam.aspx" target="_self">Live View</a></li>
            <li><a href="../others/equipments.aspx" target="_self">Equipments</a></li>
            <li><a href="../others/faqs.aspx" target="_self">FAQs</a></li>
            <li><a href="../others/people.aspx" target="_self">People</a></li>
            <li><a href="../others/contactUs.aspx" target="_self">Contact Us</a></li>
            <li><a id="logOut" runat="server" onserverclick="logOut_Click">Log Out</a></li>
        </ul>
    </div>
    <div style="position: relative; margin: auto; width: 1024px; background-color: #e3f2fc;
        top: 0px; left: 0px;">
        <br />
        <span class="title">Schedule</span>
    </div>
    <div id="no_print">
    </div>
    <div style="background-image: url(../images/content_bg.jpg); position: relative;
        margin: auto; width: 1024px; min-height: 400px;">
        <div id="contentBox" style="padding: 0px; padding-left: 50px; padding-right: 50px;">
            <br />
            <h1 class="title">
                <a href="#"></a>
            </h1>
            <p class="meta" style="font-size: large;
                font-weight: bold; font-style: normal">
                <a href="#"></a><a href="#" class="comments"></a>Book you Slot in the
                schedular to perform online experiments. You must register & login first before
                booking.
            </p>
            <br />
            <br />
            <div class="entry" align="center">
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:LABConnectionString %>"
                    SelectCommand="SELECT [UserID] FROM [SlotTable] WHERE (([Start] = @Start) AND ([End_Time] = @End_Time) AND ([Subject] = @Subject))">
                    <SelectParameters>
                        <asp:Parameter Name="Start" Type="DateTime" />
                        <asp:Parameter Name="End_Time" Type="DateTime" />
                        <asp:Parameter Name="Subject" Type="String" />
                    </SelectParameters>
                </asp:SqlDataSource>
                <telerik:RadScriptManager ID="RadScriptManager1" runat="server">
                    <Scripts>
                        <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.Core.js" />
                        <asp:ScriptReference Assembly="Telerik.Web.UI" Name="Telerik.Web.UI.Common.jQuery.js" />
                    </Scripts>
                </telerik:RadScriptManager>
                <telerik:RadAjaxManager ID="RadAjaxManager1" runat="server">
                    <AjaxSettings>
                        <telerik:AjaxSetting AjaxControlID="RadScheduler1">
                            <UpdatedControls>
                                <telerik:AjaxUpdatedControl ControlID="RadScheduler1" />
                            </UpdatedControls>
                        </telerik:AjaxSetting>
                    </AjaxSettings>
                </telerik:RadAjaxManager>

                <script type="text/javascript">
                    /* <![CDATA[ */
                    /* Helper functions */                   
                    /// <summary>
                    ///        Returns the appointments in the specified period filtered by the specified resource.
                    /// </summary>
                    /// <param name="scheduler">
                    ///        RadScheduler's client-side object
                    /// </param>
                    /// <param name="start" type="Date">
                    ///        The start of the period
                    /// </param>
                    /// <param name="end" type="Date">
                    ///        The end of the period
                    /// </param>
                    /// <param name="resource">
                    ///        The resource (room or user) to filter by
                    /// </param>
                    /// <param name="appointment">
                    ///        The current appointment
                    /// </param>
                    function getAppointmentsInRangeByResource(scheduler, start, end, resource, appointment) {
                        //Get all appointments within the specified time period
                        var result = scheduler.get_appointments().getAppointmentsInRange(start, end);

                        //If specified remove the appointment from the appointment list
                        if (appointment)
                            result.remove(appointment);

                        //Filter the appointments based on the resource
                        return result.findByResource(resource);
                    }

                    /// <summary>
                    ///        Checks if the user associated with the specified appointment has another
                    ///        appointment in the specified time period
                    /// </sumary>
                    /// <param name="scheduler">
                    ///        RadScheduler's client-side object
                    /// </param>
                    /// <param name="start" type="Date">
                    ///        The start of the period
                    /// </param>
                    /// <param name="end" type="Date">
                    ///        The end of the period
                    /// </param>
                    /// <param name="appointment">
                    ///        The current appointment
                    /// </param>
                    function isUserOccupied(scheduler, start, end, appointment) {
                        //get the "User" resource associated with the appointment
                        var currentUser = appointment.get_resources().getResourcesByType("User").getResource(0);
                        //get all appointments in this period which are associated with this resource
                        var appointmentsForThisUser = getAppointmentsInRangeByResource(scheduler, start, end, currentUser, appointment);
                        //if the list of appointments is not empty the user has other appointments besides the specified in this time period
                        return appointmentsForThisUser.get_count() > 0;
                    }
                    /// <summary>
                    ///        Checks if there are other appointments within the specified time slot
                    /// </sumary>
                    /// <param name="scheduler">
                    ///        RadScheduler's client-side object
                    /// </param>
                    /// <param name="start" type="Date">
                    ///        The start of the period
                    /// </param>
                    /// <param name="end" type="Date">
                    ///        The end of the period
                    /// </param>
                    /// <param name="slot">
                    ///        The time slot to check
                    /// </param>            
                    function isRoomOccupied(scheduler, start, end, slot, appointment) {
                        //get the "Room" resource associated with the time slot
                        var currentRoom = slot.get_resource();
                        //get all appointments for this "room" in the specified period
                        var appointmentsForThisRoom = getAppointmentsInRangeByResource(scheduler, start, end, currentRoom, appointment);
                        //if the list of appointments is not empty there are other appointments in this slot
                        return appointmentsForThisRoom.get_count() > 0;
                    }

                    function onAppointmentInserting(sender, args) {
                        var slot = args.get_targetSlot();
                        var resource = slot.get_resource();
                        var avail = resource.get_available();
                        var start = slot.get_startTime();
                        var end = slot.get_endTime();

                        if (isRoomOccupied(sender, start, end, slot)) {
                            alert("This Instrument is not available in this time period.");
                            args.set_cancel(true);
                        }
                    }

                    function OnClientTimeSlotClick(sender, eventArgs) {                       
                        var slotDate = new Date();
                        slotDate = eventArgs.get_time().format('dd/MM/yyyy');
                        var date = new Date();
                        //alert(date.);
                        if (slotDate < date.format('dd/MM/yyyy')) {
                            alert('Cannot Book Slot \n  in back date');
                        }
                        //var r = sender.get_date();
                    }

                    /* ]]> */
                </script>

                <telerik:RadScheduler runat="server" ID="RadScheduler1" Width="680px" OnAppointmentInsert="RadScheduler1_AppointmentInsert"
                    Height="535px" MinutesPerRow="60" NumberOfHoveredRows="1" OverflowBehavior="Expand"
                    RowHeight="55px" ShowAllDayRow="False" ShowFooter="False" ShowViewTabs="False"
                    TimeLabelRowSpan="1" EnableResourceEditing="False" DataDescriptionField="Description"
                    EnableAdvancedForm="False" DataEndField="End_Time" DataKeyField="Slot_ID" DataSourceID="SqlDataSource1"
                    DataStartField="Start" DataSubjectField="Subject" OnDataBinding="RadScheduler1_AppointmentUpdate"
                    Style="margin-right: 15" EnableRecurrenceSupport="False" OnClientAppointmentInserting="onAppointmentInserting"
                    OnAppointmentCreated="RadScheduler1_AppointmentCreated" OnClientTimeSlotClick="OnClientTimeSlotClick"
                    Skin="Office2007" OnAppointmentDelete="RadScheduler1_AppointmentDelete" GroupBy="roomName"
                    AllowEdit="False">
                    <AdvancedForm EnableResourceEditing="False" Enabled="False" />
                    <MonthView UserSelectable="False" />
                    <TimelineView NumberOfSlots="1" UserSelectable="False" />
                    <WeekView UserSelectable="False" />
                    <ResourceTypes>
                        <telerik:ResourceType DataSourceID="roomDataSource" ForeignKeyField="RoomID" 
                            KeyField="roomID" Name="roomName" TextField="roomName" />
                    </ResourceTypes>
                </telerik:RadScheduler>
                <asp:SqlDataSource ID="roomDataSource" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:LABConnectionString %>" 
                    SelectCommand="SELECT [roomID], [roomName] FROM [roomGroup]">
                </asp:SqlDataSource>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:LABConnectionString %>"
                    DeleteCommand="DELETE FROM [SlotTable] WHERE [Slot_ID] = @Slot_ID" InsertCommand="INSERT INTO [SlotTable] ([Subject], [Start], [End_Time], [UserID], [Description], [RoomID]) VALUES (@Subject, @Start, @End_Time, @UserID, @Description, @RoomID)"
                    
                    SelectCommand="SELECT [Slot_ID], [Subject], [Start], [End_Time], [UserID], [Description], [RoomID] FROM [SlotTable]" 
                    UpdateCommand="UPDATE [SlotTable] SET [Subject] = @Subject, [Start] = @Start, [End_Time] = @End_Time, [UserID] = @UserID, [Description] = @Description, [RoomID] = @RoomID WHERE [Slot_ID] = @Slot_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Slot_ID" Type="Int32" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Start" Type="DateTime" />
                        <asp:Parameter Name="End_Time" Type="DateTime" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="Slot_ID" Type="Int32" />
                        <asp:Parameter Name="Slot_ID" Type="Int32" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Subject" Type="String" />
                        <asp:Parameter Name="Start" Type="DateTime" />
                        <asp:Parameter Name="End_Time" Type="DateTime" />
                        <asp:Parameter Name="UserID" Type="String" />
                        <asp:Parameter Name="Description" Type="String" />
                        <asp:Parameter Name="RoomID" Type="Int32" />
                    </InsertParameters>
                </asp:SqlDataSource>
            </div>
        </div>
        </div>
        <div style="position: relative; margin: auto; width: 1024px; background-color: #0e8de0">
            <img src="../images/footer-curve.jpg" width="1024" height="31" alt="" /><div class="copyright">
                Copyright &copy; 2010-2011</div>
            <br />
        </div>
    </form>
</body>
</html>
