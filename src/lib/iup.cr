module IUP
  lib LibIUP
    IUP_NAME           = "IUP - Portable User Interface"
    IUP_DESCRIPTION    = "Multi-platform Toolkit for Building Graphical User Interfaces"
    IUP_COPYRIGHT      = "Copyright (C) 1994-2019 Tecgraf/PUC-Rio"
    IUP_VERSION        = "3.26"
    IUP_VERSION_NUMBER = 326000
    IUP_VERSION_DATE   = "2019/01/07"
    IUP_ERROR          =      1
    IUP_NOERROR        =    0o0
    IUP_OPENED         =     -1
    IUP_INVALID        =     -1
    IUP_INVALID_ID     =    -10
    IUP_IGNORE         =     -1
    IUP_DEFAULT        =     -2
    IUP_CLOSE          =     -3
    IUP_CONTINUE       =     -4
    IUP_CENTER         = 0xFFFF
    IUP_LEFT           = 0xFFFE
    IUP_RIGHT          = 0xFFFD
    IUP_MOUSEPOS       = 0xFFFC
    IUP_CURRENT        = 0xFFFB
    IUP_CENTERPARENT   = 0xFFFA
    IUP_TOP            = IUP_LEFT
    IUP_BOTTOM         = IUP_RIGHT
    IUP_BUTTON1        = '1'
    IUP_BUTTON2        = '2'
    IUP_BUTTON3        = '3'
    IUP_BUTTON4        = '4'
    IUP_BUTTON5        = '5'
    #   iup_isshift =  _s)( _s[0]=='S'
    #   iup_iscontrol =  _s)( _s[1]=='C'
    #   iup_isbutton1 =  _s)( _s[2]=='1'
    #   iup_isbutton2 =  _s)( _s[3]=='2'
    #   iup_isbutton3 =  _s)( _s[4]=='3'
    #   iup_isdouble =  _s)( _s[5]=='D'
    #   iup_isalt =  _s)( _s[6]=='A'
    #   iup_issys =  _s)( _s[7]=='Y'
    #   iup_isbutton4 =  _s)( _s[8]=='4'
    #   iup_isbutton5 =  _s)( _s[9]=='5'
    # isshift = iup_isshift
    # iscontrol = iup_iscontrol
    # isbutton1 = iup_isbutton1
    # isbutton2 = iup_isbutton2
    # isbutton3 = iup_isbutton3
    # isdouble = iup_isdouble
    # isalt = iup_isalt
    # issys = iup_issys
    # isbutton4 = iup_isbutton4
    # isbutton5 = iup_isbutton5
    IUP_MASK_FLOAT       = "[+/-]?(/d+/.?/d*|/./d+)"
    IUP_MASK_UFLOAT      = "(/d+/.?/d*|/./d+)"
    IUP_MASK_EFLOAT      = "[+/-]?(/d+/.?/d*|/./d+)([eE][+/-]?/d+)?"
    IUP_MASK_UEFLOAT     = "(/d+/.?/d*|/./d+)([eE][+/-]?/d+)?"
    IUP_MASK_FLOATCOMMA  = "[+/-]?(/d+/,?/d*|/,/d+)"
    IUP_MASK_UFLOATCOMMA = "(/d+/,?/d*|/,/d+)"
    IUP_MASK_INT         = "[+/-]?/d+"
    IUP_MASK_UINT        = "/d+"
    IUPMASK_FLOAT        = IUP_MASK_FLOAT
    IUPMASK_UFLOAT       = IUP_MASK_UFLOAT
    IUPMASK_EFLOAT       = IUP_MASK_EFLOAT
    IUPMASK_INT          = IUP_MASK_INT
    IUPMASK_UINT         = IUP_MASK_UINT
    IUP_GETPARAM_BUTTON1 = -1
    IUP_GETPARAM_INIT    = -2
    IUP_GETPARAM_BUTTON2 = -3
    IUP_GETPARAM_BUTTON3 = -4
    IUP_GETPARAM_CLOSE   = -5
    IUP_GETPARAM_MAP     = -6
    IUP_GETPARAM_OK      = IUP_GETPARAM_BUTTON1
    IUP_GETPARAM_CANCEL  = IUP_GETPARAM_BUTTON2
    IUP_GETPARAM_HELP    = IUP_GETPARAM_BUTTON3
    IUP_PRIMARY          = -1
    IUP_SECONDARY        = -2
    type Ihandle_ = Void
    alias Icallback = (Ihandle_*) -> LibC::Int*
    fun open = IupOpen(LibC::Int*, LibC::Char***) : LibC::Int
    fun close = IupClose() : Void
    fun image_lib_open = IupImageLibOpen() : Void
    fun mainloop = IupMainLoop() : LibC::Int
    fun loop_step = IupLoopStep() : LibC::Int
    fun loop_step_wait = IupLoopStepWait() : LibC::Int
    fun main_loop_level = IupMainLoopLevel() : LibC::Int
    fun flush = IupFlush() : Void
    fun exit_loop = IupExitLoop() : Void
    fun record_input = IupRecordInput(LibC::Char*, LibC::Int) : LibC::Int
    fun play_input = IupPlayInput(LibC::Char*) : LibC::Int
    fun update = IupUpdate(Ihandle*) : Void
    fun update_children = IupUpdateChildren(Ihandle*) : Void
    fun redraw = IupRedraw(Ihandle*, LibC::Int) : Void
    fun refresh = IupRefresh(Ihandle*) : Void
    fun refresh_children = IupRefreshChildren(Ihandle*) : Void
    fun execute = IupExecute(LibC::Char*, LibC::Char*) : LibC::Int
    fun execute_wait = IupExecuteWait(LibC::Char*, LibC::Char*) : LibC::Int
    fun help = IupHelp(LibC::Char*) : LibC::Int
    fun log = IupLog(LibC::Char*, LibC::Char*) : Void
    fun load = IupLoad(LibC::Char*) : LibC::Char*
    fun load_buffer = IupLoadBuffer(LibC::Char*) : LibC::Char*
    fun version = IupVersion() : LibC::Char*
    fun version_date = IupVersionDate() : LibC::Char*
    fun version_number = IupVersionNumber() : LibC::Int
    fun set_language = IupSetLanguage(LibC::Char*) : Void
    fun get_language = IupGetLanguage() : LibC::Char*
    fun set_language_string = IupSetLanguageString(LibC::Char*, LibC::Char*) : Void
    fun storelanguage_string = IupStoreLanguageString(LibC::Char*, LibC::Char*) : Void
    fun get_language_string = IupGetLanguageString(LibC::Char*) : LibC::Char*
    fun set_language_pack = IupSetLanguagePack(Ihandle*) : Void
    fun destroy = IupDestroy(Ihandle*) : Void
    fun detach = IupDetach(Ihandle*) : Void
    fun append = IupAppend(Ihandle*, Ihandle*) : Ihandle*
    fun insert = IupInsert(Ihandle*, Ihandle*, Ihandle*) : Ihandle*
    fun get_child = IupGetChild(Ihandle*, LibC::Int) : Ihandle*
    fun get_childpos = IupGetChildPos(Ihandle*, Ihandle*) : LibC::Int
    fun get_childcount = IupGetChildCount(Ihandle*) : LibC::Int
    fun get_nextchild = IupGetNextChild(Ihandle*, Ihandle*) : Ihandle*
    fun get_brother = IupGetBrother(Ihandle*) : Ihandle*
    fun get_parent = IupGetParent(Ihandle*) : Ihandle*
    fun get_dialog = IupGetDialog(Ihandle*) : Ihandle*
    fun get_dialogchild = IupGetDialogChild(Ihandle*, LibC::Char*) : Ihandle*
    fun reparent = IupReparent(Ihandle*, Ihandle*, Ihandle*) : LibC::Int
    fun popup = IupPopup(Ihandle*, LibC::Int, LibC::Int) : LibC::Int
    fun show = IupShow(Ihandle*) : LibC::Int
    fun showxy = IupShowXY(Ihandle*, LibC::Int, LibC::Int) : LibC::Int
    fun hide = IupHide(Ihandle*) : LibC::Int
    fun map = IupMap(Ihandle*) : LibC::Int
    fun unmap = IupUnmap(Ihandle*) : Void
    fun reset_attribute = IupResetAttribute(Ihandle*, LibC::Char*) : Void
    fun get_allattributes = IupGetAllAttributes(Ihandle*, LibC::Char**, LibC::Int) : LibC::Int
    fun copy_attributes = IupCopyAttributes(Ihandle*, Ihandle*) : Void
    fun set_att = IupSetAtt(LibC::Char*, Ihandle*, LibC::Char*) : Ihandle*
    fun set_attributes = IupSetAttributes(Ihandle*, LibC::Char*) : Ihandle*
    fun get_attributes = IupGetAttributes(Ihandle*) : LibC::Char*
    fun set_attribute = IupSetAttribute(Ihandle*, LibC::Char*, LibC::Char*) : Void
    fun set_strattribute = IupSetStrAttribute(Ihandle*, LibC::Char*, LibC::Char*) : Void
    fun set_strf = IupSetStrf(Ihandle*, LibC::Char*, LibC::Char*) : Void
    fun set_int = IupSetInt(Ihandle*, LibC::Char*, LibC::Int) : Void
    fun set_float = IupSetFloat(Ihandle*, LibC::Char*, LibC::Float) : Void
    fun set_double = IupSetDouble(Ihandle*, LibC::Char*, LibC::Double) : Void
    fun set_rgb = IupSetRGB(Ihandle*, LibC::Char*, LibC::Char, LibC::Char, LibC::Char) : Void
    fun get_attribute = IupGetAttribute(Ihandle*, LibC::Char*) : LibC::Char*
    fun get_int = IupGetInt(Ihandle*, LibC::Char*) : LibC::Int
    fun get_int2 = IupGetInt2(Ihandle*, LibC::Char*) : LibC::Int
    fun get_intint = IupGetIntInt(Ihandle*, LibC::Char*, LibC::Int*, LibC::Int*) : LibC::Int
    fun get_float = IupGetFloat(Ihandle*, LibC::Char*) : LibC::Float
    fun get_double = IupGetDouble(Ihandle*, LibC::Char*) : LibC::Double
    fun get_rgb = IupGetRGB(Ihandle*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Char*) : Void
    fun set_attribute_id = IupSetAttributeId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun set_str_attribute_id = IupSetStrAttributeId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun set_strf_id = IupSetStrfId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun set_int_id = IupSetIntId(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : Void
    fun set_float_id = IupSetFloatId(Ihandle*, LibC::Char*, LibC::Int, LibC::Float) : Void
    fun set_double_id = IupSetDoubleId(Ihandle*, LibC::Char*, LibC::Int, LibC::Double) : Void
    fun set_rgb_id = IupSetRGBId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char, LibC::Char, LibC::Char) : Void
    fun get_attribute_id = IupGetAttributeId(Ihandle*, LibC::Char*, LibC::Int) : LibC::Char*
    fun get_int_id = IupGetIntId(Ihandle*, LibC::Char*, LibC::Int) : LibC::Int
    fun get_float_id = IupGetFloatId(Ihandle*, LibC::Char*, LibC::Int) : LibC::Float
    fun get_double_id = IupGetDoubleId(Ihandle*, LibC::Char*, LibC::Int) : LibC::Double
    fun get_rgb_id = IupGetRGBId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*, LibC::Char*, LibC::Char*) : Void
    fun set_attribute_id2 = IupSetAttributeId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*) : Void
    fun set_str_attribute_id2 = IupSetStrAttributeId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*) : Void
    fun set_strf_id_2 = IupSetStrfId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*) : Void
    fun set_int_id_2 = IupSetIntId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Int) : Void
    fun set_float_id_2 = IupSetFloatId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Float) : Void
    fun set_double_id_2 = IupSetDoubleId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Double) : Void
    fun set_rgb_id_2 = IupSetRGBId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char, LibC::Char, LibC::Char) : Void
    fun get_attribute_id2 = IupGetAttributeId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Char*
    fun get_int_id_2 = IupGetIntId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun get_float_id_2 = IupGetFloatId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Float
    fun get_double_id_2 = IupGetDoubleId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Double
    fun get_rgb_id_2 = IupGetRGBId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*, LibC::Char*, LibC::Char*) : Void
    fun set_global = IupSetGlobal(LibC::Char*, LibC::Char*) : Void
    fun set_strglobal = IupSetStrGlobal(LibC::Char*, LibC::Char*) : Void
    fun get_global = IupGetGlobal(LibC::Char*) : LibC::Char*
    fun set_focus = IupSetFocus(Ihandle*) : Ihandle*
    fun get_focus = IupGetFocus() : Ihandle*
    fun previous_field = IupPreviousField(Ihandle*) : Ihandle*
    fun next_field = IupNextField(Ihandle*) : Ihandle*
    fun get_callback = IupGetCallback(Ihandle*, LibC::Char*) : Icallback
    fun set_callback = IupSetCallback(Ihandle*, LibC::Char*, Icallback) : Icallback
    fun set_callbacks = IupSetCallbacks(Ihandle*, LibC::Char*, Icallback) : Ihandle*
    fun get_function = IupGetFunction(LibC::Char*) : Icallback
    fun set_function = IupSetFunction(LibC::Char*, Icallback) : Icallback
    fun get_handle = IupGetHandle(LibC::Char*) : Ihandle*
    fun set_handle = IupSetHandle(LibC::Char*, Ihandle*) : Ihandle*
    fun get_allnames = IupGetAllNames(LibC::Char**, LibC::Int) : LibC::Int
    fun get_alldialogs = IupGetAllDialogs(LibC::Char**, LibC::Int) : LibC::Int
    fun get_name = IupGetName(Ihandle*) : LibC::Char*
    fun set_attribute_handle = IupSetAttributeHandle(Ihandle*, LibC::Char*, Ihandle*) : Void
    fun get_attribute_handle = IupGetAttributeHandle(Ihandle*, LibC::Char*) : Ihandle*
    fun set_attribute_handle_id = IupSetAttributeHandleId(Ihandle*, LibC::Char*, LibC::Int, Ihandle*) : Void
    fun get_attribute_handle_id = IupGetAttributeHandleId(Ihandle*, LibC::Char*, LibC::Int) : Ihandle*
    fun set_attribute_handle_id_2 = IupSetAttributeHandleId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, Ihandle*) : Void
    fun get_attribute_handle_id_2 = IupGetAttributeHandleId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int) : Ihandle*
    fun get_class_name = IupGetClassName(Ihandle*) : LibC::Char*
    fun get_class_type = IupGetClassType(Ihandle*) : LibC::Char*
    fun get_all_classes = IupGetAllClasses(LibC::Char**, LibC::Int) : LibC::Int
    fun get_class_attributes = IupGetClassAttributes(LibC::Char*, LibC::Char**, LibC::Int) : LibC::Int
    fun get_class_callbacks = IupGetClassCallbacks(LibC::Char*, LibC::Char**, LibC::Int) : LibC::Int
    fun save_class_attributes = IupSaveClassAttributes(Ihandle*) : Void
    fun copy_class_attributes = IupCopyClassAttributes(Ihandle*, Ihandle*) : Void
    fun set_class_default_attribute = IupSetClassDefaultAttribute(LibC::Char*, LibC::Char*, LibC::Char*) : Void
    fun class_match = IupClassMatch(Ihandle*, LibC::Char*) : LibC::Int
    fun create = IupCreate(LibC::Char*) : Ihandle*
    fun createv = IupCreatev(LibC::Char*, Void**) : Ihandle*
    fun createp = IupCreatep(LibC::Char*, Void*) : Ihandle*
    fun fill = IupFill() : Ihandle*
    fun space = IupSpace() : Ihandle*
    fun radio = IupRadio(Ihandle*) : Ihandle*
    fun vbox = IupVbox(Ihandle*) : Ihandle*
    fun vboxv = IupVboxv(Ihandle**) : Ihandle*
    fun zbox = IupZbox(Ihandle*) : Ihandle*
    fun zboxv = IupZboxv(Ihandle**) : Ihandle*
    fun hbox = IupHbox(Ihandle*) : Ihandle*
    fun hboxv = IupHboxv(Ihandle**) : Ihandle*
    fun normalizer = IupNormalizer(Ihandle*) : Ihandle*
    fun normalizerv = IupNormalizerv(Ihandle**) : Ihandle*
    fun cbox = IupCbox(Ihandle*) : Ihandle*
    fun cboxv = IupCboxv(Ihandle**) : Ihandle*
    fun sbox = IupSbox(Ihandle*) : Ihandle*
    fun split = IupSplit(Ihandle*, Ihandle*) : Ihandle*
    fun scroll_box = IupScrollBox(Ihandle*) : Ihandle*
    fun flat_scroll_box = IupFlatScrollBox(Ihandle*) : Ihandle*
    fun grid_box = IupGridBox(Ihandle*) : Ihandle*
    fun grid_boxv = IupGridBoxv(Ihandle**) : Ihandle*
    fun multi_box = IupMultiBox(Ihandle*) : Ihandle*
    fun multi_boxv = IupMultiBoxv(Ihandle**) : Ihandle*
    fun expander = IupExpander(Ihandle*) : Ihandle*
    fun detach_box = IupDetachBox(Ihandle*) : Ihandle*
    fun background_box = IupBackgroundBox(Ihandle*) : Ihandle*
    fun frame = IupFrame(Ihandle*) : Ihandle*
    fun flat_frame = IupFlatFrame(Ihandle*) : Ihandle*
    fun image = IupImage(LibC::Int, LibC::Int, LibC::Char*) : Ihandle*
    fun image_rgb = IupImageRGB(LibC::Int, LibC::Int, LibC::Char*) : Ihandle*
    fun image_rgba = IupImageRGBA(LibC::Int, LibC::Int, LibC::Char*) : Ihandle*
    fun item = IupItem(LibC::Char*, LibC::Char*) : Ihandle*
    fun submenu = IupSubmenu(LibC::Char*, Ihandle*) : Ihandle*
    fun separator = IupSeparator() : Ihandle*
    fun menu = IupMenu(Ihandle*) : Ihandle*
    fun menuv = IupMenuv(Ihandle**) : Ihandle*
    fun button = IupButton(LibC::Char*, LibC::Char*) : Ihandle*
    fun flat_button = IupFlatButton(LibC::Char*) : Ihandle*
    fun flat_toggle = IupFlatToggle(LibC::Char*) : Ihandle*
    fun drop_button = IupDropButton(Ihandle*) : Ihandle*
    fun flat_label = IupFlatLabel(LibC::Char*) : Ihandle*
    fun flat_separator = IupFlatSeparator() : Ihandle*
    fun canvas = IupCanvas(LibC::Char*) : Ihandle*
    fun dialog = IupDialog(Ihandle*) : Ihandle*
    fun user = IupUser() : Ihandle*
    fun label = IupLabel(LibC::Char*) : Ihandle*
    fun list = IupList(LibC::Char*) : Ihandle*
    fun text = IupText(LibC::Char*) : Ihandle*
    fun multiline = IupMultiLine(LibC::Char*) : Ihandle*
    fun toggle = IupToggle(LibC::Char*, LibC::Char*) : Ihandle*
    fun timer = IupTimer() : Ihandle*
    fun clipboard = IupClipboard() : Ihandle*
    fun progress_bar = IupProgressBar() : Ihandle*
    fun val = IupVal(LibC::Char*) : Ihandle*
    fun tabs = IupTabs(Ihandle*) : Ihandle*
    fun tabsv = IupTabsv(Ihandle**) : Ihandle*
    fun flat_tabs = IupFlatTabs(Ihandle*) : Ihandle*
    fun flat_tabsv = IupFlatTabsv(Ihandle**) : Ihandle*
    fun tree = IupTree() : Ihandle*
    fun link = IupLink(LibC::Char*, LibC::Char*) : Ihandle*
    fun animated_label = IupAnimatedLabel(Ihandle*) : Ihandle*
    fun date_pick = IupDatePick() : Ihandle*
    fun calendar = IupCalendar() : Ihandle*
    fun colorbar = IupColorbar() : Ihandle*
    fun gauge = IupGauge() : Ihandle*
    fun dial = IupDial(LibC::Char*) : Ihandle*
    fun color_browser = IupColorBrowser() : Ihandle*
    fun spin = IupSpin() : Ihandle*
    fun spin_box = IupSpinbox(Ihandle*) : Ihandle*
    fun string_compare = IupStringCompare(LibC::Char*, LibC::Char*, LibC::Int, LibC::Int) : LibC::Int
    fun save_image_as_text = IupSaveImageAsText(Ihandle*, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
    fun text_convert_lin_col_to_pos = IupTextConvertLinColToPos(Ihandle*, LibC::Int, LibC::Int, LibC::Int*) : Void
    fun text_convert_pos_to_lin_col = IupTextConvertPosToLinCol(Ihandle*, LibC::Int, LibC::Int*, LibC::Int*) : Void
    fun convert_xy_to_pos = IupConvertXYToPos(Ihandle*, LibC::Int, LibC::Int) : LibC::Int
    fun store_global = IupStoreGlobal(LibC::Char*, LibC::Char*) : Void
    fun store_attribute = IupStoreAttribute(Ihandle*, LibC::Char*, LibC::Char*) : Void
    fun set_fattribute = IupSetfAttribute(Ihandle*, LibC::Char*, LibC::Char*) : Void
    fun store_attribute_id = IupStoreAttributeId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun set_f_attribute_id = IupSetfAttributeId(Ihandle*, LibC::Char*, LibC::Int, LibC::Char*) : Void
    fun store_attribute_id_2 = IupStoreAttributeId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*) : Void
    fun set_f_attribute_id_2 = IupSetfAttributeId2(Ihandle*, LibC::Char*, LibC::Int, LibC::Int, LibC::Char*) : Void
    fun tree_set_user_id = IupTreeSetUserId(Ihandle*, LibC::Int, Void*) : LibC::Int
    fun tree_get_user_id = IupTreeGetUserId(Ihandle*, LibC::Int) : Void*
    fun tree_get_id = IupTreeGetId(Ihandle*, Void*) : LibC::Int
    fun tree_set_attribute_handle = IupTreeSetAttributeHandle(Ihandle*, LibC::Char*, LibC::Int, Ihandle*) : Void
    fun file_dialog = IupFileDlg() : Ihandle*
    fun message_dialog = IupMessageDlg() : Ihandle*
    fun color_dialog = IupColorDlg() : Ihandle*
    fun font_dialog = IupFontDlg() : Ihandle*
    fun progress_dialog = IupProgressDlg() : Ihandle*
    fun get_file = IupGetFile(LibC::Char*) : LibC::Int
    fun message = IupMessage(LibC::Char*, LibC::Char*) : Void
    fun message_f = IupMessagef(LibC::Char*, LibC::Char*) : Void
    fun message_error = IupMessageError(Ihandle*, LibC::Char*) : Void
    fun message_alarm = IupMessageAlarm(Ihandle*, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
    fun alarm = IupAlarm(LibC::Char*, LibC::Char*, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
    fun scanf = IupScanf(LibC::Char*) : LibC::Int
    fun list_dialog = IupListDialog(LibC::Int, LibC::Char*, LibC::Int, LibC::Char**, LibC::Int, LibC::Int, LibC::Int, LibC::Int*) : LibC::Int
    fun get_text = IupGetText(LibC::Char*, LibC::Char*, LibC::Int) : LibC::Int
    fun get_color = IupGetColor(LibC::Int, LibC::Int, LibC::Char*, LibC::Char*, LibC::Char*) : LibC::Int
    alias Iparamcb = (Ihandle*, LibC::Int, Void*) -> Void
    alias ParameterCallback = Iparamcb
    fun get_param = IupGetParam(LibC::Char*, Iparamcb, Void*, LibC::Char*) : LibC::Int
    fun get_param_v = IupGetParamv(LibC::Char*, Iparamcb, Void*, LibC::Char*, LibC::Int, LibC::Int, Void**) : LibC::Int
    fun param = IupParam(LibC::Char*) : Ihandle*
    fun param_box = IupParamBox(Ihandle*) : Ihandle*
    fun param_box_v = IupParamBoxv(Ihandle**) : Ihandle*
    fun layout_dialog = IupLayoutDialog(Ihandle*) : Ihandle*
    fun element_properties_dialog = IupElementPropertiesDialog(Ihandle*) : Ihandle*
  end
end