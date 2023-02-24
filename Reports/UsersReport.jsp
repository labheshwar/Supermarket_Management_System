<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="UsersReport" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="USERSREPORT" xmlPrologType="text">
  <![CDATA[<?xml version="1.0" encoding="&Encoding"?>]]>
  </xmlSettings>
  <reportHtmlEscapes>
    <beforeReportHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
</head>
<body bgcolor="#ffffff">

]]>
    </beforeReportHtmlEscape>
    <afterPageHtmlEscape>
    <![CDATA[<hr size=5 noshade>
]]>
    </afterPageHtmlEscape>
    <beforeFormHtmlEscape>
    <![CDATA[<html dir=&Direction>
<body bgcolor="#ffffff">
<form method=post action="_action_">
<input name="hidden_run_parameters" type=hidden value="_hidden_">
<font color=red><!--error--></font>
<center>
<p><table border=0 cellspacing=0 cellpadding=0>
<tr>
<td><input type=submit></td>
<td width=15>
<td><input type=reset></td>
</tr>
</table>
<p><hr><p>
]]>
    </beforeFormHtmlEscape>
    <pageNavigationHtmlEscape>
    <![CDATA[<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html dir=&Direction>
<head>
<meta http-equiv="Content-Type"  content="text/html; charset=&Encoding">
<TITLE>Oracle HTML Navigator</TITLE>
<SCRIPT type="text/javascript" LANGUAGE = "JavaScript">

var jump_index = 1			// Jump to this page
var num_pages = &TotalPages			// Total number of pages
var basefilename = "&file_name"		// Base file name
var fileext = "&file_ext"		//File extension

/* jumps to "new_page" */
function new_page(form, new_page)
{
	form.reqpage.value = new_page;
	parent.frames[0].location = basefilename + "_" + new_page + "."+fileext;
}

/* go back one page */
function back(form)
{
	/* if we are not in first page */
	if (jump_index > 1)
	{
		jump_index--;
		new_page(form, jump_index);
	}
}

/* go forward one page */
function forward(form)
{
	/* if we are not in last page */
	if (jump_index < num_pages)
	{
		jump_index++;
		new_page(form, jump_index);
	}
}

/* go to first page */
function first(form)
{
	if(jump_index != 1)
	{
		jump_index = 1;
		new_page(form, jump_index);
	}
}

/* go to last page */
function last(form)
{
	if(jump_index != num_pages)
	{
		jump_index = num_pages;
		new_page(form, jump_index);
	}
}

/* go to the user specified page number */
function pagenum(form)
{
	/* sanity check */
	if (form.reqpage.value < 1)
	{
		form.reqpage.value = 1;
	}
	if (form.reqpage.value > num_pages)
	{
		form.reqpage.value = num_pages;
	}
	jump_index = form.reqpage.value;
	new_page(form, jump_index);
}
</SCRIPT>
</HEAD>

<BODY>
<FORM NAME="ThisForm" action="" onSubmit="pagenum(this); return false;">
<center><table><tr>
<td> <INPUT TYPE="button"  VALUE="<< " onClick="first(this.form)">
<td> <INPUT TYPE="button"  VALUE=" < " onClick="back(this.form)">
<td> <INPUT TYPE="button"  VALUE="Page:" onClick="pagenum(this.form)">
<td> <INPUT NAME="reqpage" VALUE="1" SIZE=2>
<td> <INPUT TYPE="button"  VALUE=" > " onClick="forward(this.form)">
<td> <INPUT TYPE="button"  VALUE=" >>" onClick="last(this.form)">
</table></center>
</FORM>
</body></html>]]>
    </pageNavigationHtmlEscape>
  </reportHtmlEscapes>
  <data>
    <dataSource name="Q_1">
      <select>
      <![CDATA[SELECT * FROM users WHERE status = 'Y' AND role = 'worker';]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_USER_ID">
        <displayInfo x="1.34070" y="1.94995" width="1.31873" height="1.69922"
        />
        <dataItem name="USER_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="33" defaultLabel="User Id">
          <dataDescriptor expression="users.USER_ID"
           descriptiveExpression="USER_ID" order="1" width="22" precision="10"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="USER_NAME" datatype="vchar2" columnOrder="12"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="User Name">
          <dataDescriptor expression="users.USER_NAME"
           descriptiveExpression="USER_NAME" order="2" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PASSWORD" datatype="vchar2" columnOrder="13"
         width="20" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Password">
          <dataDescriptor expression="users.PASSWORD"
           descriptiveExpression="PASSWORD" order="3" width="20"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PHONE" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Phone">
          <dataDescriptor expression="users.PHONE"
           descriptiveExpression="PHONE" order="4" width="22" precision="11"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="EMAIL" datatype="vchar2" columnOrder="15" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Email">
          <dataDescriptor expression="users.EMAIL"
           descriptiveExpression="EMAIL" order="5" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ADDRESS" datatype="vchar2" columnOrder="16" width="50"
         defaultWidth="100000" defaultHeight="10000" columnFlags="33"
         defaultLabel="Address">
          <dataDescriptor expression="users.ADDRESS"
           descriptiveExpression="ADDRESS" order="6" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="SALARY" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Salary">
          <dataDescriptor expression="users.SALARY"
           descriptiveExpression="SALARY" order="7" width="22" precision="10"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="IMAGE_ID" oracleDatatype="number" columnOrder="18"
         width="22" defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Image Id">
          <dataDescriptor expression="users.IMAGE_ID"
           descriptiveExpression="IMAGE_ID" order="8" width="22" precision="2"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="STATUS" datatype="vchar2" columnOrder="19" width="5"
         defaultWidth="50000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Status">
          <dataDescriptor expression="users.STATUS"
           descriptiveExpression="STATUS" order="9" width="5"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="ROLE" datatype="vchar2" columnOrder="20" width="7"
         defaultWidth="70000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Role">
          <dataDescriptor expression="users.ROLE" descriptiveExpression="ROLE"
           order="10" width="7"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="SumSALARYPerReport" source="SALARY" function="sum"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="CountUSER_IDPerReport" source="USER_ID" function="count"
     precision="8" reset="report" compute="report" defaultWidth="100000"
     defaultHeight="10000" columnFlags="552" defaultLabel="Count:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
    <summary name="AvgSALARYPerReport" source="SALARY" function="average"
     width="22" precision="10" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Average:">
      <displayInfo x="0.00000" y="0.00000" width="0.00000" height="0.00000"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_USER_ID_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.43750" height="1.45898"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r100g100b100"/>
        <repeatingFrame name="R_G_USER_ID" source="G_USER_ID"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.37500" width="7.43750"
           height="0.18750"/>
          <generalLayout verticalElasticity="expand"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background2"/>
          <field name="F_USER_ID" source="USER_ID" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="0.00000" y="0.37500" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_USER_NAME" source="USER_NAME" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="0.68750" y="0.37500" width="0.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_PASSWORD" source="PASSWORD" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="1.62500" y="0.37500" width="0.87500"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_PHONE" source="PHONE" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="2.50000" y="0.37500" width="1.18750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_EMAIL" source="EMAIL" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="3.68750" y="0.37500" width="1.93750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_ADDRESS" source="ADDRESS" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="5.68750" y="0.37500" width="1.00000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SALARY" source="SALARY" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="Arial Narrow" size="16"/>
            <geometryInfo x="6.68750" y="0.37500" width="0.75000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
        </repeatingFrame>
        <frame name="M_G_USER_ID_FTR">
          <geometryInfo x="0.00000" y="0.56250" width="7.43750"
           height="0.89648"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background3"/>
          <field name="F_CountUSER_IDPerReport" source="CountUSER_IDPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="Arial" size="14" bold="yes" textColor="white"/>
            <geometryInfo x="0.00000" y="1.20898" width="0.68750"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SumSALARYPerReport" source="SumSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="Arial" size="14" bold="yes" textColor="white"/>
            <geometryInfo x="6.68750" y="0.56250" width="0.75000"
             height="0.27148"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_AvgSALARYPerReport" source="AvgSALARYPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="Arial" size="14" bold="yes" textColor="white"/>
            <geometryInfo x="6.68750" y="0.89648" width="0.75000"
             height="0.25000"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_Total_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.56250" width="1.56250"
             height="0.27148"/>
            <textSegment>
              <font face="Arial" size="14" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Total Salary:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_Average_" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.89648" width="1.93750"
             height="0.25000"/>
            <textSegment>
              <font face="Arial" size="14" bold="yes" textColor="white"/>
              <string>
              <![CDATA[Average Salary:]]>
              </string>
            </textSegment>
          </text>
        </frame>
        <frame name="M_G_USER_ID_HDR">
          <geometryInfo x="0.00000" y="0.00000" width="7.43750"
           height="0.37500"/>
          <advancedLayout printObjectOnPage="allPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="custom6"/>
          <text name="B_USER_ID" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.68750"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[User Id]]>
              </string>
            </textSegment>
          </text>
          <text name="B_USER_NAME" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.68750" y="0.00000" width="0.93750"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[User Name]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PASSWORD" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="1.62500" y="0.00000" width="0.87500"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Password]]>
              </string>
            </textSegment>
          </text>
          <text name="B_PHONE" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.50000" y="0.00000" width="1.18750"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Phone]]>
              </string>
            </textSegment>
          </text>
          <text name="B_EMAIL" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="3.68750" y="0.00000" width="1.93750"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Email]]>
              </string>
            </textSegment>
          </text>
          <text name="B_ADDRESS" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.68750" y="0.00000" width="1.00000"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Address]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SALARY" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="6.68750" y="0.00000" width="0.75000"
             height="0.37500"/>
            <visualSettings fillBackgroundColor="custom6"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes" textColor="r100g100b100"
              />
              <string>
              <![CDATA[Salary]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <text name="B_1" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="0.47913" y="0.02087" width="1.83337" height="0.72913"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"/>
        <textSegment>
          <font face="Arial" size="36" bold="yes" textColor="r88g88b100"/>
          <string>
          <![CDATA[Shopsy]]>
          </string>
        </textSegment>
      </text>
      <text name="B_2" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="2.37500" y="0.00000" width="3.18750" height="0.75000"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r88g88b100"/>
        <textSegment>
          <font face="Arial Narrow" size="36" bold="yes"/>
          <string>
          <![CDATA[Supermarket]]>
          </string>
        </textSegment>
      </text>
    </margin>
  </section>
  </layout>
  <colorPalette>
    <color index="190" displayName="TextColor" value="#ffffff"/>
    <color index="191" displayName="custom6" value="#93065d"/>
    <color index="192" displayName="Background2" value="#e4c1d6"/>
    <color index="193" displayName="Background3" value="#c982ae"/>
  </colorPalette>
  <reportPrivate defaultReportType="tabular" versionFlags2="0"
   templateName="rwwine"/>
  <reportWebSettings>
  <![CDATA[]]>
  </reportWebSettings>
</report>
</rw:objects>
-->

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">

<HTML>

<HEAD>
  <TITLE> Your Title </TITLE>
  <rw:style id="rwwine99">
<link rel="StyleSheet" type="text/css" href="css/rwwine.css">
</rw:style>

  <META http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
</HEAD>

<BODY bgColor="#ffffff" link="#000000" vLink="#000000">

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ffffff" rowSpan=2 vAlign=middle width=188><IMG alt="" src="images/rwwine_logo.gif" width="135" height="36"></TD>
    <TD bgColor="#ffffff" height=40 vAlign=top><IMG alt="" height=1 src="images/stretch.gif" width=5></TD>
    <TD align=right bgColor="#ffffff" vAlign=bottom>&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE bgColor="#ff0000" border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" class="OraColumnHeader">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#ff0000" vAlign=top class="OraColumnHeader"><IMG alt="" border=0 height=17 src="images/topcurl.gif" width=30></TD>
    <TD vAlign=top width="100%">
      <TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
        <TBODY>
        <TR>
          <TD bgColor="#000000" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#9a9c9a" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        <TR>
          <TD bgColor="#b3b4b3" height=1><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
        </TR>
        </TBODY>
      </TABLE>
    </TD>
  </TR>
  </TBODY>
</TABLE>

<TABLE width="100%" border="0" cellspacing="0" cellpadding="0">
  <TR>
    <TD width="29%" valign="top">
      <TABLE width="77%" border="0" cellspacing="0" cellpadding="0">
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/wine_d_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation goes here </TD>
        </TR>
        <TR>
          <TD width="10%" class="OraCellText"><IMG alt="" src="images/wine_r_arrow.gif" width="10" height="10"></TD>
          <TD width="90%" class="OraCellText">Navigation Item</TD>
        </TR>
      </TABLE>
    </TD>
    <TD width="71%">
      <DIV align="center">
      <!-- Data Area Generated by Reports Developer -->
<rw:dataArea id="MGUSERIDGRPFR65">
<table class="OraTable">
<caption>  </caption>
 <!-- Header -->
 <thead>
  <tr>
   <th <rw:id id="HBUSERID65" asArray="no"/> class="OraColumnHeader"> User Id </th>
   <th <rw:id id="HBUSERNAME65" asArray="no"/> class="OraColumnHeader"> User Name </th>
   <th <rw:id id="HBPASSWORD65" asArray="no"/> class="OraColumnHeader"> Password </th>
   <th <rw:id id="HBPHONE65" asArray="no"/> class="OraColumnHeader"> Phone </th>
   <th <rw:id id="HBEMAIL65" asArray="no"/> class="OraColumnHeader"> Email </th>
   <th <rw:id id="HBADDRESS65" asArray="no"/> class="OraColumnHeader"> Address </th>
   <th <rw:id id="HBSALARY65" asArray="no"/> class="OraColumnHeader"> Salary </th>
  </tr>
 </thead>
 <!-- Body -->
 <tbody>
  <rw:foreach id="RGUSERID651" src="G_USER_ID">
   <tr>
    <td <rw:headers id="HFUSERID65" src="HBUSERID65"/> class="OraCellNumber"><rw:field id="FUSERID65" src="USER_ID" nullValue="&nbsp;"> F_USER_ID </rw:field></td>
    <td <rw:headers id="HFUSERNAME65" src="HBUSERNAME65"/> class="OraCellText"><rw:field id="FUSERNAME65" src="USER_NAME" nullValue="&nbsp;"> F_USER_NAME </rw:field></td>
    <td <rw:headers id="HFPASSWORD65" src="HBPASSWORD65"/> class="OraCellText"><rw:field id="FPASSWORD65" src="PASSWORD" nullValue="&nbsp;"> F_PASSWORD </rw:field></td>
    <td <rw:headers id="HFPHONE65" src="HBPHONE65"/> class="OraCellNumber"><rw:field id="FPHONE65" src="PHONE" nullValue="&nbsp;"> F_PHONE </rw:field></td>
    <td <rw:headers id="HFEMAIL65" src="HBEMAIL65"/> class="OraCellText"><rw:field id="FEMAIL65" src="EMAIL" nullValue="&nbsp;"> F_EMAIL </rw:field></td>
    <td <rw:headers id="HFADDRESS65" src="HBADDRESS65"/> class="OraCellText"><rw:field id="FADDRESS65" src="ADDRESS" nullValue="&nbsp;"> F_ADDRESS </rw:field></td>
    <td <rw:headers id="HFSALARY65" src="HBSALARY65"/> class="OraCellNumber"><rw:field id="FSALARY65" src="SALARY" nullValue="&nbsp;"> F_SALARY </rw:field></td>
   </tr>
  </rw:foreach>
 </tbody>
 <!-- Report Level Summary -->
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFSumSALARYPerReport65" src="HBSALARY65"/> class="OraTotalNumber">Total: <rw:field id="FSumSALARYPerReport65" src="SumSALARYPerReport" nullValue="&nbsp;"> F_SumSALARYPerReport </rw:field></td>
 </tr>
 <tr>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <td <rw:headers id="HFAvgSALARYPerReport65" src="HBSALARY65"/> class="OraTotalNumber">Average: <rw:field id="FAvgSALARYPerReport65" src="AvgSALARYPerReport" nullValue="&nbsp;"> F_AvgSALARYPerReport </rw:field></td>
 </tr>
 <tr>
  <td <rw:headers id="HFCountUSERIDPerReport65" src="HBUSERID65"/> class="OraTotalNumber">Count: <rw:field id="FCountUSERIDPerReport65" src="CountUSER_IDPerReport" nullValue="&nbsp;"> F_CountUSER_IDPerReport </rw:field></td>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
  <th class="OraTotalText"> &nbsp; </th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGUSERIDGRPFR65" -->
<!-- End of Data Area Generated by Reports Developer -->

      </DIV>
    </TD>
  </TR>
</TABLE>

<P>
  <BR>
</P>

<TABLE border=0 cellPadding=0 cellSpacing=0 width="100%">
  <TBODY>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ff0000" colSpan=2 class="OraColumnHeader"><IMG alt="" border=0 height=4 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#000000" colSpan=2><IMG alt="" border=0 height=1 src="images/stretch.gif" width=1></TD>
  </TR>
  <TR>
    <TD bgColor="#ffffff">&nbsp;</TD>
    <TD align=right bgColor="#ffffff">&nbsp;</TD>
  </TR>
  </TBODY>
</TABLE>

</BODY>

</HTML>

<!--
</rw:report>
-->
