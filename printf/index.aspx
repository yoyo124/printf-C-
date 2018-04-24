<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="printf.index" %>
<%@ Register Assembly="Ext.Net" Namespace="Ext.Net" TagPrefix="ext" %> 
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>学生信息表</title>
    <meta http-equiv=“X-UA-Compatible” content=“IE=8″>
    <link href="css/style1.css" rel="stylesheet" type="text/css" />
    <link href="css/model.css" rel="Stylesheet" type="text/css" media="print"/>
    <script src="JS/model.js" type="text/javascript"></script>
</head>
<body>
    <form id="form1" runat="server">
        <ext:ResourceManager ID="ResourceManager1" runat="server" />
        <ext:Store runat="server" ID="Store1" PageSize="10">
            <Model>
                <ext:Model runat="server" ID="Model1" IDProperty="Id">
                    <Fields>
                        <ext:ModelField Name="Id" Type="String"/>
                        <ext:ModelField Name="Name" Type="String"/> 
                        <ext:ModelField Name="Course" Type="String"/>
                        <ext:ModelField Name="Address" Type="String"/>
                        <ext:ModelField Name="Tel" Type="String"/>
                    </Fields>
                </ext:Model>
            </Model>
        </ext:Store>
        
        <ext:Viewport ID="Viewport1" runat="server" Layout="BorderLayout">
            <Items>
                <ext:Panel runat="server" ID="Panel1" Region="North">
                    <TopBar>
                    <ext:Toolbar ID="Toolbar1" runat="server">
                        <Items>
                            <ext:Button runat="server" ID="printf" Icon="Printer" Text="打印">
                              <DirectEvents>
                                <Click OnEvent="printfs" />
                              </DirectEvents>
                               
                               <%-- <Listeners>
                                    <Click Handler="printf(#{stuId}.getValue())" />
                                </Listeners>--%>
                            </ext:Button>
                        </Items>
                    </ext:Toolbar>
                </TopBar>
            </ext:Panel>
            </Items>
            <Items>
                <ext:GridPanel runat="server" ID="GridPanel1" Layout="BorderLayout" Title="学生信息" AutoScroll="true" Region="Center" StoreID="Store1" ForceFit="true">
                    <ColumnModel>
                        <Columns>
                             <ext:Column runat="server" ID="stuId" Text="学号" DataIndex="Id" Align="Center"/>
                             <ext:Column runat="server" ID="name" Text="姓名" DataIndex="Name" Align="Center"/>
                             <ext:Column runat="server" ID="course" Text="选修课程" DataIndex="Course" Align="Center"/>
                             <ext:Column runat="server" ID="adress" Text="家庭住址" DataIndex="Address" Align="Center"/>
                             <ext:Column runat="server" ID="telNum" Text="联系电话" DataIndex="Tel" Align="Center"/>
                        </Columns>
                    </ColumnModel>
                    <SelectionModel>
                        <ext:CheckboxSelectionModel runat="server" ID="CheckboxSelectionModel">
                            <%--<Listeners>
                                <Select Handler="SelectNum(#{stuId}.getValue())"/>
                            </Listeners>--%>
                        </ext:CheckboxSelectionModel>
                    </SelectionModel>
                </ext:GridPanel>
            </Items>
        </ext:Viewport>

    <div id="comment">
        <h1>学生信息表</h1>
        <table>
        <tr>
            <td class="head">学号:</td>
            <td class="inner" id="stuNum">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="head">姓名：</td>
            <td class="inner" id="stuName">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="head">选修课程：</td>
            <td class="inner" id="stuCourse">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="head">家庭住址：</td>
            <td class="inner" id="stuAddress">&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td class="head">联系电话:</td>
            <td class="inner" id="stuTel">&nbsp;&nbsp;</td>
        </tr>
    </table>
    <div id="content">
        
    <p>一、申请发明专利或者实用新型专利应当提交权利要求书，一式一份。</p>
    <p>二、权利要求书应当打字或者印刷，字迹应当整齐清晰，呈黑色，符合制版要求，不得涂改，字高应当在3.5毫米至4.5毫米之间，行距应当在 2.5毫米至3.5毫米之间，权利要求书首页用此页，续页可使用同样大小和质量相当的白纸。纸张应当纵向使用，只限使用正面，四周应当留有页边距：左侧和顶部各25毫米，右侧和底部各15毫米。</p>
    <p>三、权利要求书应当说明发明或者实用新型的技术特征，清楚和简要地表述请求保护的范围。权利要求书有几项权利要求时，应当用阿拉伯数字顺序编号，编号前不得冠以“权利要求”或者“权项”等词。</p>
    <p>四、权利要求书中使用的科技术语应当与说明书中使用的一致，可以有化学式或者数学式，必要时可以有表格，但不得有插图。不得使用“如说明书……部分所述”或者“如图……所示”等用语。</p>
    <p>五、每一项权利要求仅允许在权利要求的结尾处使用句号。</p>
    <p>六、权利要求书应当在每页下框线居中位置顺序编写页码。</p>
    </div>
    </div>
    </form>
</body>
<script type="text/javascript" src="JS/jquery-1.4.4.min.js"></script>
<script type="text/javascript" src="JS/model.js"></script>
<script type="text/javascript" src="JS/jquery.jqprint-0.3.js"></script>
</html>
