/**************************************************************
 * 
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 * 
 *   http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 * 
 *************************************************************/



// MARKER(update_precomp.py): autogen include statement, do not remove
#include "precompiled_dbui.hxx"
#include "dbustrings.hrc"

namespace dbaui
{

#include "stringconstants.inc"

	//============================================================
	//= URLs
	//============================================================
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_QUERYDESIGN,         ".component:DB/QueryDesign");
    IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_VIEWDESIGN,          ".component:DB/ViewDesign");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_TABLEDESIGN,         ".component:DB/TableDesign");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_FORMGRIDVIEW,        ".component:DB/FormGridView");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_DATASOURCEBROWSER,   ".component:DB/DataSourceBrowser");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_RELATIONDESIGN,      ".component:DB/RelationDesign");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_APPLICATION,         ".component:DB/Application");
	IMPLEMENT_CONSTASCII_USTRING(URL_COMPONENT_REPORTDESIGN,        ".component:DB/ReportDesign");

	//============================================================
	//= service names
	//============================================================
	IMPLEMENT_CONSTASCII_USTRING(SERVICE_SDB_DIRECTSQLDIALOG,		"org.openoffice.comp.dbu.DirectSqlDialog");

	//============================================================
	//= other
	//============================================================
	IMPLEMENT_CONSTASCII_USTRING(FRAME_NAME_QUERY_PREVIEW,	        "QueryPreview");
	IMPLEMENT_CONSTASCII_USTRING(SERVICE_CONTROLDEFAULT,			"com.sun.star.comp.dbu.OColumnControl");
    IMPLEMENT_CONSTASCII_USTRING(PROPERTY_QUERYDESIGNVIEW,          "QueryDesignView");
    IMPLEMENT_CONSTASCII_USTRING(PROPERTY_GRAPHICAL_DESIGN,         "GraphicalDesign");
    IMPLEMENT_CONSTASCII_USTRING(PROPERTY_HELP_URL,                 "HelpURL");

	//============================================================
	//= properties
	//============================================================
	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_TRISTATE,			"TriState");
	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_ENABLEOUTERJOIN,	"EnableOuterJoinEscape");

	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_TABSTOP, "TabStop");
	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_DEFAULTCONTROL, "DefaultControl");
	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_ENABLED, "Enabled");
	IMPLEMENT_CONSTASCII_USTRING(PROPERTY_MOUSE_WHEEL_BEHAVIOR, "MouseWheelBehavior");
}
