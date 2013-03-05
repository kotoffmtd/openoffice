#**************************************************************
#  
#  Licensed to the Apache Software Foundation (ASF) under one
#  or more contributor license agreements.  See the NOTICE file
#  distributed with this work for additional information
#  regarding copyright ownership.  The ASF licenses this file
#  to you under the Apache License, Version 2.0 (the
#  "License"); you may not use this file except in compliance
#  with the License.  You may obtain a copy of the License at
#  
#    http://www.apache.org/licenses/LICENSE-2.0
#  
#  Unless required by applicable law or agreed to in writing,
#  software distributed under the License is distributed on an
#  "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
#  KIND, either express or implied.  See the License for the
#  specific language governing permissions and limitations
#  under the License.
#  
#**************************************************************



$(eval $(call gb_Library_Library,svx))

$(eval $(call gb_Library_set_componentfile,svx,svx/util/svx))

$(eval $(call gb_Library_set_include,svx,\
	-I$(SRCDIR)/svx/inc \
	-I$(SRCDIR)/svx/source/inc \
	-I$(SRCDIR)/svx/inc/pch \
	$$(SOLARINC) \
	-I$(OUTDIR)/inc/offuh \
))

$(eval $(call gb_Library_set_defs,svx,\
	$$(DEFS) \
	-DSVX_DLLIMPLEMENTATION \
	-DBOOST_SPIRIT_USE_OLD_NAMESPACE \
))

$(eval $(call gb_Library_add_linked_libs,svx,\
	basegfx \
	sb \
	comphelper \
	cppuhelper \
	cppu \
	drawinglayer \
	editeng \
	i18nisolang1 \
	icuuc \
	sal \
	sfx \
	sot \
	stl \
	svl \
	svt \
	svxcore \
	tk \
	tl \
	ucbhelper \
	utl \
	vcl \
	vos3 \
	xo \
	xcr \
    $(gb_STDLIBS) \
))

$(eval $(call gb_Library_add_exception_objects,svx,\
    svx/source/accessibility/AccessibleControlShape \
    svx/source/accessibility/AccessibleEmptyEditSource \
    svx/source/accessibility/AccessibleFrameSelector \
    svx/source/accessibility/AccessibleGraphicShape \
    svx/source/accessibility/AccessibleOLEShape \
    svx/source/accessibility/AccessibleShape \
    svx/source/accessibility/AccessibleShapeInfo \
    svx/source/accessibility/AccessibleShapeTreeInfo \
    svx/source/accessibility/AccessibleTextEventQueue \
    svx/source/accessibility/AccessibleTextHelper \
    svx/source/accessibility/charmapacc \
    svx/source/accessibility/ChildrenManager \
    svx/source/accessibility/ChildrenManagerImpl \
    svx/source/accessibility/DescriptionGenerator \
    svx/source/accessibility/DGColorNameLookUp \
    svx/source/accessibility/GraphCtlAccessibleContext \
    svx/source/accessibility/ShapeTypeHandler \
    svx/source/accessibility/svxrectctaccessiblecontext \
    svx/source/accessibility/SvxShapeTypes \
    svx/source/customshapes/EnhancedCustomShape3d \
    svx/source/customshapes/EnhancedCustomShapeEngine \
    svx/source/customshapes/EnhancedCustomShapeFontWork \
    svx/source/customshapes/EnhancedCustomShapeHandle \
    svx/source/customshapes/tbxcustomshapes \
    svx/source/dialog/_bmpmask \
    svx/source/dialog/charmap \
    svx/source/dialog/connctrl \
    svx/source/dialog/_contdlg \
    svx/source/dialog/contwnd \
    svx/source/dialog/ctredlin \
    svx/source/dialog/databaseregistrationui \
    svx/source/dialog/dialcontrol \
    svx/source/dialog/dlgctl3d \
    svx/source/dialog/dlgctrl \
    svx/source/dialog/docrecovery \
    svx/source/dialog/fntctrl \
    svx/source/dialog/fontlb \
    svx/source/dialog/fontwork \
    svx/source/dialog/framelinkarray \
    svx/source/dialog/frmdirlbox \
    svx/source/dialog/frmsel \
    svx/source/dialog/graphctl \
    svx/source/dialog/grfflt \
    svx/source/dialog/hdft \
    svx/source/dialog/hyperdlg \
    svx/source/dialog/hyprlink \
    svx/source/dialog/imapdlg \
    svx/source/dialog/imapwnd \
    svx/source/dialog/measctrl \
    svx/source/dialog/optgrid \
    svx/source/dialog/orienthelper \
    svx/source/dialog/pagectrl \
    svx/source/dialog/paraprev \
    svx/source/dialog/passwd \
    svx/source/dialog/pfiledlg \
    svx/source/dialog/prtqry \
    svx/source/dialog/relfld \
    svx/source/dialog/rlrcitem \
    svx/source/dialog/rubydialog \
    svx/source/dialog/rulritem \
    svx/source/dialog/SpellDialogChildWindow \
    svx/source/dialog/srchctrl \
    svx/source/dialog/srchdlg \
    svx/source/dialog/strarray \
    svx/source/dialog/svxbmpnumvalueset \
    svx/source/dialog/svxgrahicitem \
    svx/source/dialog/svxruler \
    svx/source/dialog/swframeexample \
    svx/source/dialog/swframeposstrings \
    svx/source/dialog/txencbox \
    svx/source/dialog/txenctab \
    svx/source/dialog/wrapfield \
    svx/source/engine3d/float3d \
    svx/source/fmcomp/dbaobjectex \
    svx/source/form/databaselocationinput \
    svx/source/form/dbcharsethelper \
    svx/source/form/filtnav \
    svx/source/form/fmobjfac \
    svx/source/form/fmPropBrw \
    svx/source/form/fmsrccfg \
    svx/source/form/fmsrcimp \
    svx/source/form/tabwin \
    svx/source/form/tbxform \
    svx/source/items/algitem \
    svx/source/items/hlnkitem \
    svx/source/items/numfmtsh \
    svx/source/items/numinf \
    svx/source/items/ofaitem \
    svx/source/items/pageitem \
    svx/source/items/postattr \
    svx/source/items/rotmodit \
    svx/source/items/SmartTagItem \
    svx/source/items/svxempty \
    svx/source/items/svxerr \
    svx/source/items/viewlayoutitem \
    svx/source/items/zoomitem \
    svx/source/items/zoomslideritem \
    svx/source/mnuctrls/clipboardctl \
    svx/source/mnuctrls/fntctl \
    svx/source/mnuctrls/fntszctl \
    svx/source/mnuctrls/SmartTagCtl \
    svx/source/sidebar/ContextChangeEventMultiplexer \
    svx/source/sidebar/PanelFactory \
    svx/source/sidebar/ColorPanel \
    svx/source/sidebar/text/SvxSBFontNameBox \
    svx/source/sidebar/text/TextPropertyPanel \
    svx/source/sidebar/area/AreaPropertyPanel \
    svx/source/sidebar/area/AreaTransparencyGradientControl \
    svx/source/sidebar/area/AreaTransparencyGradientPopup \
    svx/source/sidebar/graphic/GraphicPropertyPanel \
    svx/source/sidebar/line/LinePropertyPanel \
    svx/source/sidebar/line/LineStyleControl \
    svx/source/sidebar/line/LineStyleValueSet \
    svx/source/sidebar/line/LineStylePopup \
    svx/source/sidebar/line/LineWidthControl \
    svx/source/sidebar/line/LineWidthValueSet \
    svx/source/sidebar/line/LineWidthPopup \
    svx/source/sidebar/transform/TransformationPropertyPanel \
    svx/source/sidebar/tools/ColorControl \
    svx/source/sidebar/tools/ColorPopup \
    svx/source/sidebar/tools/PopupControl \
    svx/source/sidebar/tools/PopupContainer \
    svx/source/sidebar/tools/Popup \
    svx/source/stbctrls/pszctrl \
    svx/source/stbctrls/insctrl \
    svx/source/stbctrls/selctrl \
    svx/source/stbctrls/xmlsecctrl \
    svx/source/stbctrls/modctrl \
    svx/source/stbctrls/zoomsliderctrl \
    svx/source/stbctrls/zoomctrl \
    svx/source/svdraw/ActionDescriptionProvider \
    svx/source/smarttags/SmartTagMgr \
    svx/source/svdraw/impgrfll \
    svx/source/table/accessiblecell \
    svx/source/table/accessibletableshape \
    svx/source/table/celleditsource \
    svx/source/table/tabledesign \
    svx/source/table/tablertfexporter \
    svx/source/table/tablertfimporter \
    svx/source/tbxctrls/colrctrl \
    svx/source/tbxctrls/fillctrl \
    svx/source/tbxctrls/formatpaintbrushctrl \
    svx/source/tbxctrls/grafctrl \
    svx/source/tbxctrls/itemwin \
    svx/source/tbxctrls/layctrl \
    svx/source/tbxctrls/lboxctrl \
    svx/source/tbxctrls/linectrl \
    svx/source/tbxctrls/subtoolboxcontrol \
    svx/source/tbxctrls/tbunocontroller \
    svx/source/tbxctrls/tbunosearchcontrollers \
    svx/source/tbxctrls/tbxalign \
    svx/source/tbxctrls/tbxcolor \
    svx/source/tbxctrls/tbxdrctl \
    svx/source/tbxctrls/verttexttbxctrl \
    svx/source/unodraw/recoveryui \
    svx/source/unodraw/unoctabl \
    svx/source/unodraw/UnoNamespaceMap \
    svx/source/unodraw/unopool \
    svx/source/unodraw/unoshcol \
    svx/source/unogallery/unogalitem \
    svx/source/unogallery/unogaltheme \
    svx/source/unogallery/unogalthemeprovider \
))

ifeq ($(GUI),UNX)
$(eval $(call gb_Library_add_exception_objects,svx,\
    svx/source/dialog/sendreportunx \
))
else
ifeq ($(OS),WNT)
$(eval $(call gb_Library_add_linked_libs,svx,\
	advapi32 \
))
$(eval $(call gb_Library_add_exception_objects,svx,\
    svx/source/dialog/sendreportw32 \
))
else
$(eval $(call gb_Library_add_exception_objects,svx,\
    svx/source/dialog/sendreportgen \
))
endif
endif

# vim: set noet sw=4 ts=4:
