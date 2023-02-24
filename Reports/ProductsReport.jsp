<%@ taglib uri="/WEB-INF/lib/reports_tld.jar" prefix="rw" %>
<%@ page language="java" import="java.io.*" errorPage="/rwerror.jsp" session="false" %>
<!--
<rw:report id="report">
<rw:objects id="objects">
<?xml version="1.0" encoding="WINDOWS-1252" ?>
<report name="ProductsReport" DTDVersion="9.0.2.0.10">
  <xmlSettings xmlTag="MODULE1" xmlPrologType="text">
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
      <![CDATA[SELECT * FROM products;]]>
      </select>
      <displayInfo x="1.65002" y="1.00000" width="0.69995" height="0.19995"/>
      <group name="G_CATEGORY">
        <displayInfo x="0.71814" y="1.94995" width="2.56384" height="1.11426"
        />
        <dataItem name="CATEGORY" datatype="vchar2" columnOrder="15"
         width="50" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Category">
          <dataDescriptor expression="products.CATEGORY"
           descriptiveExpression="CATEGORY" order="5" width="50"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <summary name="CountPRODUCT_IDPerCATEGORY" source="PRODUCT_ID"
         function="count" precision="8" reset="G_CATEGORY" compute="report"
         defaultWidth="100000" defaultHeight="10000" columnFlags="552"
         defaultLabel="Count:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="SumPRICEPerCATEGORY" source="PRICE" function="sum"
         width="22" precision="10" scale="2" reset="G_CATEGORY"
         compute="report" defaultWidth="120000" defaultHeight="10000"
         columnFlags="552" defaultLabel="Total:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="MinPRICEPerCATEGORY" source="PRICE" function="minimum"
         width="22" precision="10" scale="2" reset="G_CATEGORY"
         compute="report" defaultWidth="120000" defaultHeight="10000"
         columnFlags="552" defaultLabel="Minimum:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
        <summary name="MaxPRICEPerCATEGORY" source="PRICE" function="maximum"
         width="22" precision="10" scale="2" reset="G_CATEGORY"
         compute="report" defaultWidth="120000" defaultHeight="10000"
         columnFlags="552" defaultLabel="Maximum:">
          <displayInfo x="0.00000" y="0.00000" width="0.00000"
           height="0.00000"/>
        </summary>
      </group>
      <group name="G_PRODUCT_ID">
        <displayInfo x="1.23083" y="3.85938" width="1.53845" height="1.28516"
        />
        <dataItem name="PRODUCT_ID" oracleDatatype="number" columnOrder="11"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Product Id">
          <dataDescriptor expression="products.PRODUCT_ID"
           descriptiveExpression="PRODUCT_ID" order="1" width="22"
           precision="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PRODUCT_NAME" datatype="vchar2" columnOrder="12"
         width="30" defaultWidth="100000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Product Name">
          <dataDescriptor expression="products.PRODUCT_NAME"
           descriptiveExpression="PRODUCT_NAME" order="2" width="30"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="PRICE" oracleDatatype="number" columnOrder="13"
         width="22" defaultWidth="120000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Price">
          <dataDescriptor expression="products.PRICE"
           descriptiveExpression="PRICE" order="3" width="22" scale="2"
           precision="10"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="QUANTITY" oracleDatatype="number" columnOrder="14"
         width="22" defaultWidth="90000" defaultHeight="10000"
         columnFlags="33" defaultLabel="Quantity">
          <dataDescriptor expression="products.QUANTITY"
           descriptiveExpression="QUANTITY" order="4" width="22" precision="7"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="DESCRIPTION" datatype="vchar2" columnOrder="16"
         width="255" defaultWidth="100000" defaultHeight="10000"
         columnFlags="1" defaultLabel="Description">
          <dataDescriptor expression="products.DESCRIPTION"
           descriptiveExpression="DESCRIPTION" order="6" width="255"/>
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
        <dataItem name="IMAGE_ID" oracleDatatype="number" columnOrder="17"
         width="22" defaultWidth="40000" defaultHeight="10000" columnFlags="1"
         defaultLabel="Image Id">
          <dataDescriptor expression="products.IMAGE_ID"
           descriptiveExpression="IMAGE_ID" order="7" width="22" precision="2"
          />
          <dataItemPrivate adtName="" schemaName=""/>
        </dataItem>
      </group>
    </dataSource>
    <summary name="CountPRODUCT_IDPerReport" source="PRODUCT_ID"
     function="count" precision="8" reset="report" compute="report"
     defaultWidth="100000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Count:">
      <displayInfo x="0.00000" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <summary name="SumPRICEPerReport" source="PRICE" function="sum" width="22"
     precision="10" scale="2" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Total:">
      <displayInfo x="0.79993" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <summary name="MinPRICEPerReport" source="PRICE" function="minimum"
     width="22" precision="10" scale="2" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Minimum:">
      <displayInfo x="1.59985" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
    <summary name="MaxPRICEPerReport" source="PRICE" function="maximum"
     width="22" precision="10" scale="2" reset="report" compute="report"
     defaultWidth="120000" defaultHeight="10000" columnFlags="552"
     defaultLabel="Maximum:">
      <displayInfo x="2.39978" y="0.00000" width="0.79993" height="0.19995"/>
    </summary>
  </data>
  <layout>
  <section name="main">
    <body>
      <frame name="M_G_CATEGORY_GRPFR">
        <geometryInfo x="0.00000" y="0.00000" width="7.18750" height="1.68750"
        />
        <generalLayout verticalElasticity="variable"/>
        <visualSettings fillPattern="transparent"/>
        <repeatingFrame name="R_G_CATEGORY" source="G_CATEGORY"
         printDirection="down" minWidowRecords="1" columnMode="no">
          <geometryInfo x="0.00000" y="0.00000" width="6.50000"
           height="1.31250"/>
          <generalLayout verticalElasticity="variable"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background2"/>
          <field name="F_CATEGORY" source="CATEGORY" minWidowLines="1"
           spacing="0" alignment="start">
            <font face="Arial" size="12" bold="yes"/>
            <geometryInfo x="0.87500" y="0.00000" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
          </field>
          <frame name="M_G_PRODUCT_ID_GRPFR">
            <geometryInfo x="0.00000" y="0.18750" width="6.50000"
             height="1.12500"/>
            <generalLayout verticalElasticity="variable"/>
            <visualSettings fillPattern="transparent"/>
            <repeatingFrame name="R_G_PRODUCT_ID" source="G_PRODUCT_ID"
             printDirection="down" minWidowRecords="1" columnMode="no">
              <geometryInfo x="0.00000" y="0.37500" width="6.50000"
               height="0.18750"/>
              <generalLayout verticalElasticity="expand"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Background2"/>
              <field name="F_PRODUCT_ID" source="PRODUCT_ID" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Arial Narrow" size="12"/>
                <geometryInfo x="0.00000" y="0.37500" width="1.00000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PRODUCT_NAME" source="PRODUCT_NAME"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="Arial Narrow" size="12"/>
                <geometryInfo x="1.81250" y="0.37500" width="1.50000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_PRICE" source="PRICE" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Arial Narrow" size="12"/>
                <geometryInfo x="3.31250" y="0.37500" width="1.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_QUANTITY" source="QUANTITY" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="Arial Narrow" size="12"/>
                <geometryInfo x="5.12500" y="0.37500" width="1.37500"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
            </repeatingFrame>
            <frame name="M_G_PRODUCT_ID_FTR">
              <geometryInfo x="0.00000" y="0.56250" width="6.50000"
               height="0.75000"/>
              <advancedLayout printObjectOnPage="lastPage"
               basePrintingOn="anchoringObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="Background3"/>
              <field name="F_CountPRODUCT_IDPerCATEGORY"
               source="CountPRODUCT_IDPerCATEGORY" minWidowLines="1"
               spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes" textColor="white"
                />
                <geometryInfo x="0.00000" y="1.12500" width="1.00000"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_SumPRICEPerCATEGORY" source="SumPRICEPerCATEGORY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes" textColor="white"
                />
                <geometryInfo x="3.31250" y="0.56250" width="1.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MinPRICEPerCATEGORY" source="MinPRICEPerCATEGORY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes" textColor="white"
                />
                <geometryInfo x="3.31250" y="0.75000" width="1.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <field name="F_MaxPRICEPerCATEGORY" source="MaxPRICEPerCATEGORY"
               minWidowLines="1" spacing="0" alignment="start">
                <font face="helvetica" size="10" bold="yes" textColor="white"
                />
                <geometryInfo x="3.31250" y="0.93750" width="1.81250"
                 height="0.18750"/>
                <generalLayout verticalElasticity="expand"/>
              </field>
              <text name="B_Total_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.56250" width="0.93750"
                 height="0.18750"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Total Price:]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_Minimum_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.75000" width="1.12500"
                 height="0.18750"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Minimum Price:]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_Maximum_" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.93750" width="1.25000"
                 height="0.18750"/>
                <textSegment>
                  <font face="helvetica" size="10" bold="yes"
                   textColor="white"/>
                  <string>
                  <![CDATA[Maximum Price:]]>
                  </string>
                </textSegment>
              </text>
            </frame>
            <frame name="M_G_PRODUCT_ID_HDR">
              <geometryInfo x="0.00000" y="0.18750" width="6.50000"
               height="0.18750"/>
              <advancedLayout printObjectOnPage="allPage"
               basePrintingOn="enclosingObject"/>
              <visualSettings fillPattern="transparent"
               fillBackgroundColor="custom6"/>
              <text name="B_PRODUCT_ID" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="0.00000" y="0.18750" width="1.00000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="custom6"/>
                <textSegment>
                  <font face="Arial" size="12" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Product Id]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PRODUCT_NAME" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="1.81250" y="0.18750" width="1.50000"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="r25g50b75"/>
                <textSegment>
                  <font face="Arial" size="12" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Product Name]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_PRICE" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="3.31250" y="0.18750" width="1.81250"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="custom6"/>
                <textSegment>
                  <font face="Arial" size="12" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Price]]>
                  </string>
                </textSegment>
              </text>
              <text name="B_QUANTITY" minWidowLines="1">
                <textSettings spacing="0"/>
                <geometryInfo x="5.12500" y="0.18750" width="1.37500"
                 height="0.18750"/>
                <visualSettings fillBackgroundColor="custom6"/>
                <textSegment>
                  <font face="Arial" size="12" bold="yes" textColor="white"/>
                  <string>
                  <![CDATA[Quantity]]>
                  </string>
                </textSegment>
              </text>
            </frame>
          </frame>
          <text name="B_CATEGORY" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="0.00000" width="0.87500"
             height="0.18750"/>
            <advancedLayout printObjectOnPage="allPage"
             basePrintingOn="enclosingObject"/>
            <visualSettings fillBackgroundColor="r25g50b75"/>
            <textSegment>
              <font face="Arial" size="12" bold="yes"/>
              <string>
              <![CDATA[Category:]]>
              </string>
            </textSegment>
          </text>
        </repeatingFrame>
        <frame name="M_G_CATEGORY_FTR">
          <geometryInfo x="0.00000" y="1.31250" width="7.18750"
           height="0.37500"/>
          <advancedLayout printObjectOnPage="lastPage"
           basePrintingOn="anchoringObject"/>
          <visualSettings fillPattern="transparent"
           fillBackgroundColor="Background3"/>
          <field name="F_MaxPRICEPerReport" source="MaxPRICEPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="0.87500" y="1.31250" width="1.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <field name="F_SumPRICEPerReport" source="SumPRICEPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="0.81250" y="1.50000" width="1.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_MaxPRICEPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="1.31250" width="0.87500"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Maximum:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_MinPRICEPerReport" source="MinPRICEPerReport"
           minWidowLines="1" spacing="0" alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="3.37500" y="1.31250" width="1.81250"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_MinPRICEPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="2.68750" y="1.31250" width="0.68750"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Minimum:]]>
              </string>
            </textSegment>
          </text>
          <field name="F_CountPRODUCT_IDPerReport"
           source="CountPRODUCT_IDPerReport" minWidowLines="1" spacing="0"
           alignment="start">
            <font face="helvetica" size="10" bold="yes"/>
            <geometryInfo x="5.68750" y="1.31250" width="1.50000"
             height="0.18750"/>
            <generalLayout verticalElasticity="expand"/>
          </field>
          <text name="B_CountPRODUCT_IDPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="5.18750" y="1.31250" width="0.50000"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Count:]]>
              </string>
            </textSegment>
          </text>
          <text name="B_SumPRICEPerReport" minWidowLines="1">
            <textSettings spacing="0"/>
            <geometryInfo x="0.00000" y="1.50000" width="0.43750"
             height="0.18750"/>
            <textSegment>
              <font face="helvetica" size="10" bold="yes"/>
              <string>
              <![CDATA[Total:]]>
              </string>
            </textSegment>
          </text>
        </frame>
      </frame>
    </body>
    <margin>
      <text name="B_1" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="0.52087" y="0.39587" width="2.10413" height="0.54163"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings fillPattern="transparent"
         fillBackgroundColor="r88g88b100"/>
        <textSegment>
          <font face="Arial" size="36" bold="yes"/>
          <string>
          <![CDATA[SHOPSY]]>
          </string>
        </textSegment>
      </text>
      <text name="B_2" minWidowLines="1">
        <textSettings spacing="single"/>
        <geometryInfo x="2.68750" y="0.41663" width="3.12500" height="0.52087"
        />
        <advancedLayout printObjectOnPage="allPage"
         basePrintingOn="anchoringObject"/>
        <visualSettings fillPattern="transparent" fillBackgroundColor="black"/>
        <textSegment>
          <font face="Arial Narrow" size="36" bold="yes"
           textColor="r88g88b100"/>
          <string>
          <![CDATA[SUPERMARKET]]>
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
  <reportPrivate defaultReportType="masterDetail" versionFlags2="0"
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
  <rw:style id="rwwine126">
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
<rw:dataArea id="MGCATEGORYGRPFR41">
<rw:foreach id="RGCATEGORY411" src="G_CATEGORY">
<!-- Start GetGroupHeader/n --> <table class="OraTable">
 <caption class="OraHeader">  <br>Category <rw:field id="F_CATEGORY" src="CATEGORY" breakLevel="RGCATEGORY411" breakValue="&nbsp;"> F_CATEGORY </rw:field><br>
 </caption>
<!-- End GetGroupHeader/n -->   <tr>
    <td valign="top">
    <table class="OraTable" summary="">
     <!-- Header -->
     <thead>
      <tr>
       <th <rw:id id="HBPRODUCTID41" asArray="no"/> class="OraColumnHeader"> Product Id </th>
       <th <rw:id id="HBPRODUCTNAME41" asArray="no"/> class="OraColumnHeader"> Product Name </th>
       <th <rw:id id="HBPRICE41" asArray="no"/> class="OraColumnHeader"> Price </th>
       <th <rw:id id="HBQUANTITY41" asArray="no"/> class="OraColumnHeader"> Quantity </th>
      </tr>
     </thead>
     <!-- Body -->
     <tbody>
      <rw:foreach id="RGPRODUCTID411" src="G_PRODUCT_ID">
       <tr>
        <td <rw:headers id="HFPRODUCTID41" src="HBPRODUCTID41"/> class="OraCellNumber"><rw:field id="FPRODUCTID41" src="PRODUCT_ID" nullValue="&nbsp;"> F_PRODUCT_ID </rw:field></td>
        <td <rw:headers id="HFPRODUCTNAME41" src="HBPRODUCTNAME41"/> class="OraCellText"><rw:field id="FPRODUCTNAME41" src="PRODUCT_NAME" nullValue="&nbsp;"> F_PRODUCT_NAME </rw:field></td>
        <td <rw:headers id="HFPRICE41" src="HBPRICE41"/> class="OraCellNumber"><rw:field id="FPRICE41" src="PRICE" nullValue="&nbsp;"> F_PRICE </rw:field></td>
        <td <rw:headers id="HFQUANTITY41" src="HBQUANTITY41"/> class="OraCellNumber"><rw:field id="FQUANTITY41" src="QUANTITY" nullValue="&nbsp;"> F_QUANTITY </rw:field></td>
       </tr>
      </rw:foreach>
     </tbody>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFSumPRICEPerCATEGORY41" src="HBPRICE41"/> class="OraTotalNumber">Total: <rw:field id="FSumPRICEPerCATEGORY41" src="SumPRICEPerCATEGORY" nullValue="&nbsp;"> F_SumPRICEPerCATEGORY </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFMinPRICEPerCATEGORY41" src="HBPRICE41"/> class="OraTotalNumber">Minimum: <rw:field id="FMinPRICEPerCATEGORY41" src="MinPRICEPerCATEGORY" nullValue="&nbsp;"> F_MinPRICEPerCATEGORY </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFMaxPRICEPerCATEGORY41" src="HBPRICE41"/> class="OraTotalNumber">Maximum: <rw:field id="FMaxPRICEPerCATEGORY41" src="MaxPRICEPerCATEGORY" nullValue="&nbsp;"> F_MaxPRICEPerCATEGORY </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
      <th class="OraTotalText"> &nbsp; </th>
      <td <rw:headers id="HFCountPRODUCTIDPerCATEGORY41" src="HBPRODUCTID41"/> class="OraTotalNumber">Count: <rw:field id="FCountPRODUCTIDPerCATEGORY41" src="CountPRODUCT_IDPerCATEGORY" nullValue="&nbsp;"> F_CountPRODUCT_IDPerCATEGORY </rw:field></td>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
      <th class="OraTotalText"> &nbsp; </th>
     </tr>
     <tr>
     </tr>
    </table>
   </td>
  </tr>
 </table>
</rw:foreach>
<table class="OraTable" summary="">
 <tr>
  <th class="OraTotalNumber"> Maximum: <rw:field id="F_MaxPRICEPerReport" src="MaxPRICEPerReport" nullValue="&nbsp;"> F_MaxPRICEPerReport </rw:field></th>
  <th class="OraTotalNumber"> Minimum: <rw:field id="F_MinPRICEPerReport" src="MinPRICEPerReport" nullValue="&nbsp;"> F_MinPRICEPerReport </rw:field></th>
  <th class="OraTotalNumber"> Count: <rw:field id="F_CountPRODUCT_IDPerReport" src="CountPRODUCT_IDPerReport" nullValue="&nbsp;"> F_CountPRODUCT_IDPerReport </rw:field></th>
  <th class="OraTotalNumber"> Total: <rw:field id="F_SumPRICEPerReport" src="SumPRICEPerReport" nullValue="&nbsp;"> F_SumPRICEPerReport </rw:field></th>
 </tr>
</table>
</rw:dataArea> <!-- id="MGCATEGORYGRPFR41" -->
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
