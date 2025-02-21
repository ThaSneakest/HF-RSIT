#AutoIt3Wrapper_useupx=n
#AutoIt3Wrapper_Icon=RSIT.ico
#AutoIt3Wrapper_run_after=ResHacker.exe -add %out%, %out%, LOGO.jpg, rcdata, logo_JPG, 0
#AutoIt3Wrapper_run_after=upx.exe --best --compress-resources=0 "%out%"
#requireadmin
Global Const $TAGPOINT = "long X;long Y"
Global Const $TAGRECT = "long Left;long Top;long Right;long Bottom"
Global Const $TAGSIZE = "long X;long Y"
Global Const $TAGMARGINS = "int cxLeftWidth;int cxRightWidth;int cyTopHeight;int cyBottomHeight"
Global Const $TAGFILETIME = "dword Lo;dword Hi"
Global Const $TAGSYSTEMTIME = "word Year;word Month;word Dow;word Day;word Hour;word Minute;word Second;word MSeconds"
Global Const $TAGTIME_ZONE_INFORMATION = "long Bias;wchar StdName[32];word StdDate[8];long StdBias;wchar DayName[32];word DayDate[8];long DayBias"
Global Const $TAGNMHDR = "hwnd hWndFrom;uint_ptr IDFrom;INT Code"
Global Const $TAGCOMBOBOXEXITEM = "uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;int SelectedImage;int OverlayImage;" & "int Indent;lparam Param"
Global Const $TAGNMCBEDRAGBEGIN = $TAGNMHDR & ";int ItemID;ptr szText"
Global Const $TAGNMCBEENDEDIT = $TAGNMHDR & ";bool fChanged;int NewSelection;ptr szText;int Why"
Global Const $TAGNMCOMBOBOXEX = $TAGNMHDR & ";uint Mask;int_ptr Item;ptr Text;int TextMax;int Image;" & "int SelectedImage;int OverlayImage;int Indent;lparam Param"
Global Const $TAGDTPRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;" & "word MinSecond;word MinMSecond;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;" & "word MaxMinute;word MaxSecond;word MaxMSecond;bool MinValid;bool MaxValid"
Global Const $TAGNMDATETIMECHANGE = $TAGNMHDR & ";dword Flag;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMEFORMAT = $TAGNMHDR & ";ptr Format;" & $TAGSYSTEMTIME & ";ptr pDisplay;wchar Display[64]"
Global Const $TAGNMDATETIMEFORMATQUERY = $TAGNMHDR & ";ptr Format;long SizeX;long SizeY"
Global Const $TAGNMDATETIMEKEYDOWN = $TAGNMHDR & ";int VirtKey;ptr Format;" & $TAGSYSTEMTIME
Global Const $TAGNMDATETIMESTRING = $TAGNMHDR & ";ptr UserString;" & $TAGSYSTEMTIME & ";dword Flags"
Global Const $TAGEVENTLOGRECORD = "dword Length;dword Reserved;dword RecordNumber;dword TimeGenerated;dword TimeWritten;dword EventID;" & "word EventType;word NumStrings;word EventCategory;word ReservedFlags;dword ClosingRecordNumber;dword StringOffset;" & "dword UserSidLength;dword UserSidOffset;dword DataLength;dword DataOffset"
Global Const $TAGGDIPBITMAPDATA = "uint Width;uint Height;int Stride;int Format;ptr Scan0;uint_ptr Reserved"
Global Const $TAGGDIPENCODERPARAM = "byte GUID[16];dword Count;dword Type;ptr Values"
Global Const $TAGGDIPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $TAGGDIPRECTF = "float X;float Y;float Width;float Height"
Global Const $TAGGDIPSTARTUPINPUT = "uint Version;ptr Callback;bool NoThread;bool NoCodecs"
Global Const $TAGGDIPSTARTUPOUTPUT = "ptr HookProc;ptr UnhookProc"
Global Const $TAGGDIPIMAGECODECINFO = "byte CLSID[16];byte FormatID[16];ptr CodecName;ptr DllName;ptr FormatDesc;ptr FileExt;" & "ptr MimeType;dword Flags;dword Version;dword SigCount;dword SigSize;ptr SigPattern;ptr SigMask"
Global Const $TAGGDIPPENCODERPARAMS = "dword Count;byte Params[0]"
Global Const $TAGHDITEM = "uint Mask;int XY;ptr Text;handle hBMP;int TextMax;int Fmt;lparam Param;int Image;int Order;uint Type;ptr pFilter;uint State"
Global Const $TAGNMHDDISPINFO = $TAGNMHDR & ";int Item;uint Mask;ptr Text;int TextMax;int Image;lparam lParam"
Global Const $TAGNMHDFILTERBTNCLICK = $TAGNMHDR & ";int Item;" & $TAGRECT
Global Const $TAGNMHEADER = $TAGNMHDR & ";int Item;int Button;ptr pItem"
Global Const $TAGGETIPADDRESS = "byte Field4;byte Field3;byte Field2;byte Field1"
Global Const $TAGNMIPADDRESS = $TAGNMHDR & ";int Field;int Value"
Global Const $TAGLVFINDINFO = "uint Flags;ptr Text;lparam Param;" & $TAGPOINT & ";uint Direction"
Global Const $TAGLVHITTESTINFO = $TAGPOINT & ";uint Flags;int Item;int SubItem"
Global Const $TAGLVITEM = "uint Mask;int Item;int SubItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;lparam Param;" & "int Indent;int GroupID;uint Columns;ptr pColumns"
Global Const $TAGNMLISTVIEW = $TAGNMHDR & ";int Item;int SubItem;uint NewState;uint OldState;uint Changed;" & "long ActionX;long ActionY;lparam Param"
Global Const $TAGNMLVCUSTOMDRAW = $TAGNMHDR & ";dword dwDrawStage;handle hdc;long Left;long Top;long Right;long Bottom;" & "dword_ptr dwItemSpec;uint uItemState;lparam lItemlParam" & ";dword clrText;dword clrTextBk;int iSubItem;dword dwItemType;dword clrFace;int iIconEffect;" & "int iIconPhase;int iPartId;int iStateId;long TextLeft;long TextTop;long TextRight;long TextBottom;uint uAlign"
Global Const $TAGNMLVDISPINFO = $TAGNMHDR & ";" & $TAGLVITEM
Global Const $TAGNMLVFINDITEM = $TAGNMHDR & ";" & $TAGLVFINDINFO
Global Const $TAGNMLVGETINFOTIP = $TAGNMHDR & ";dword Flags;ptr Text;int TextMax;int Item;int SubItem;lparam lParam"
Global Const $TAGNMITEMACTIVATE = $TAGNMHDR & ";int Index;int SubItem;uint NewState;uint OldState;uint Changed;" & $TAGPOINT & ";lparam lParam;uint KeyFlags"
Global Const $TAGNMLVKEYDOWN = $TAGNMHDR & ";align 1;word VKey;uint Flags"
Global Const $TAGNMLVSCROLL = $TAGNMHDR & ";int DX;int DY"
Global Const $TAGMCHITTESTINFO = "uint Size;" & $TAGPOINT & ";uint Hit;" & $TAGSYSTEMTIME
Global Const $TAGMCMONTHRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short Span"
Global Const $TAGMCRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds;short MinSet;short MaxSet"
Global Const $TAGMCSELRANGE = "word MinYear;word MinMonth;word MinDOW;word MinDay;word MinHour;word MinMinute;word MinSecond;" & "word MinMSeconds;word MaxYear;word MaxMonth;word MaxDOW;word MaxDay;word MaxHour;word MaxMinute;word MaxSecond;" & "word MaxMSeconds"
Global Const $TAGNMDAYSTATE = $TAGNMHDR & ";" & $TAGSYSTEMTIME & ";int DayState;ptr pDayState"
Global Const $TAGNMSELCHANGE = $TAGNMHDR & ";word BegYear;word BegMonth;word BegDOW;word BegDay;" & "word BegHour;word BegMinute;word BegSecond;word BegMSeconds;word EndYear;word EndMonth;word EndDOW;" & "word EndDay;word EndHour;word EndMinute;word EndSecond;word EndMSeconds"
Global Const $TAGNMOBJECTNOTIFY = $TAGNMHDR & ";int Item;ptr piid;ptr pObject;long Result"
Global Const $TAGNMTCKEYDOWN = $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGTVITEM = "uint Mask;handle hItem;uint State;uint StateMask;ptr Text;int TextMax;int Image;int SelectedImage;" & "int Children;lparam Param"
Global Const $TAGTVITEMEX = $TAGTVITEM & ";int Integral"
Global Const $TAGNMTREEVIEW = $TAGNMHDR & ";uint Action;uint OldMask;handle OldhItem;uint OldState;uint OldStateMask;" & "ptr OldText;int OldTextMax;int OldImage;int OldSelectedImage;int OldChildren;lparam OldParam;uint NewMask;handle NewhItem;" & "uint NewState;uint NewStateMask;ptr NewText;int NewTextMax;int NewImage;int NewSelectedImage;int NewChildren;" & "lparam NewParam;long PointX;long PointY"
Global Const $TAGNMTVCUSTOMDRAW = $TAGNMHDR & ";dword DrawStage;handle HDC;long Left;long Top;long Right;long Bottom;" & "dword_ptr ItemSpec;uint ItemState;lparam ItemParam;dword ClrText;dword ClrTextBk;int Level"
Global Const $TAGNMTVDISPINFO = $TAGNMHDR & ";" & $TAGTVITEM
Global Const $TAGNMTVGETINFOTIP = $TAGNMHDR & ";ptr Text;int TextMax;handle hItem;lparam lParam"
Global Const $TAGTVHITTESTINFO = $TAGPOINT & ";uint Flags;handle Item"
Global Const $TAGNMTVKEYDOWN = $TAGNMHDR & ";word VKey;uint Flags"
Global Const $TAGNMMOUSE = $TAGNMHDR & ";dword_ptr ItemSpec;dword_ptr ItemData;" & $TAGPOINT & ";lparam HitInfo"
Global Const $TAGTOKEN_PRIVILEGES = "dword Count;int64 LUID;dword Attributes"
Global Const $TAGIMAGEINFO = "handle hBitmap;handle hMask;int Unused1;int Unused2;" & $TAGRECT
Global Const $TAGMENUINFO = "dword Size;INT Mask;dword Style;uint YMax;handle hBack;dword ContextHelpID;ulong_ptr MenuData"
Global Const $TAGMENUITEMINFO = "uint Size;uint Mask;uint Type;uint State;uint ID;handle SubMenu;handle BmpChecked;handle BmpUnchecked;" & "ulong_ptr ItemData;ptr TypeData;uint CCH;handle BmpItem"
Global Const $TAGREBARBANDINFO = "uint cbSize;uint fMask;uint fStyle;dword clrFore;dword clrBack;ptr lpText;uint cch;" & "int iImage;hwnd hwndChild;uint cxMinChild;uint cyMinChild;uint cx;handle hbmBack;uint wID;uint cyChild;uint cyMaxChild;" & "uint cyIntegral;uint cxIdeal;lparam lParam;uint cxHeader"
Global Const $TAGNMREBARAUTOBREAK = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;uint uMsg;uint fStyleCurrent;bool fAutoBreak"
Global Const $TAGNMRBAUTOSIZE = $TAGNMHDR & ";bool fChanged;long TargetLeft;long TargetTop;long TargetRight;long TargetBottom;" & "long ActualLeft;long ActualTop;long ActualRight;long ActualBottom"
Global Const $TAGNMREBAR = $TAGNMHDR & ";dword dwMask;uint uBand;uint fStyle;uint wID;laram lParam"
Global Const $TAGNMREBARCHEVRON = $TAGNMHDR & ";uint uBand;uint wID;lparam lParam;" & $TAGRECT & ";lparam lParamNM"
Global Const $TAGNMREBARCHILDSIZE = $TAGNMHDR & ";uint uBand;uint wID;long CLeft;long CTop;long CRight;long CBottom;" & "long BLeft;long BTop;long BRight;long BBottom"
Global Const $TAGCOLORSCHEME = "dword Size;dword BtnHighlight;dword BtnShadow"
Global Const $TAGNMTOOLBAR = $TAGNMHDR & ";int iItem;" & "int iBitmap;int idCommand;byte fsState;byte fsStyle;align;dword_ptr dwData;int_ptr iString" & ";int cchText;ptr pszText;" & $TAGRECT
Global Const $TAGNMTBHOTITEM = $TAGNMHDR & ";int idOld;int idNew;dword dwFlags"
Global Const $TAGTBBUTTON = "int Bitmap;int Command;byte State;byte Style;align;dword_ptr Param;int_ptr String"
Global Const $TAGTBBUTTONINFO = "uint Size;dword Mask;int Command;int Image;byte State;byte Style;word CX;dword_ptr Param;ptr Text;int TextMax"
Global Const $TAGNETRESOURCE = "dword Scope;dword Type;dword DisplayType;dword Usage;ptr LocalName;ptr RemoteName;ptr Comment;ptr Provider"
Global Const $TAGOVERLAPPED = "ulong_ptr Internal;ulong_ptr InternalHigh;dword Offset;dword OffsetHigh;handle hEvent"
Global Const $TAGOPENFILENAME = "dword StructSize;hwnd hwndOwner;handle hInstance;ptr lpstrFilter;ptr lpstrCustomFilter;" & "dword nMaxCustFilter;dword nFilterIndex;ptr lpstrFile;dword nMaxFile;ptr lpstrFileTitle;dword nMaxFileTitle;" & "ptr lpstrInitialDir;ptr lpstrTitle;dword Flags;word nFileOffset;word nFileExtension;ptr lpstrDefExt;lparam lCustData;" & "ptr lpfnHook;ptr lpTemplateName;ptr pvReserved;dword dwReserved;dword FlagsEx"
Global Const $TAGBITMAPINFO = "dword Size;long Width;long Height;word Planes;word BitCount;dword Compression;dword SizeImage;" & "long XPelsPerMeter;long YPelsPerMeter;dword ClrUsed;dword ClrImportant;dword RGBQuad"
Global Const $TAGBLENDFUNCTION = "byte Op;byte Flags;byte Alpha;byte Format"
Global Const $TAGGUID = "dword Data1;word Data2;word Data3;byte Data4[8]"
Global Const $TAGWINDOWPLACEMENT = "uint length; uint flags;uint showCmd;long ptMinPosition[2];long ptMaxPosition[2];long rcNormalPosition[4]"
Global Const $TAGWINDOWPOS = "hwnd hWnd;hwnd InsertAfter;int X;int Y;int CX;int CY;uint Flags"
Global Const $TAGSCROLLINFO = "uint cbSize;uint fMask;int  nMin;int  nMax;uint nPage;int  nPos;int  nTrackPos"
Global Const $TAGSCROLLBARINFO = "dword cbSize;" & $TAGRECT & ";int dxyLineButton;int xyThumbTop;" & "int xyThumbBottom;int reserved;dword rgstate[6]"
Global Const $TAGLOGFONT = "long Height;long Width;long Escapement;long Orientation;long Weight;byte Italic;byte Underline;" & "byte Strikeout;byte CharSet;byte OutPrecision;byte ClipPrecision;byte Quality;byte PitchAndFamily;wchar FaceName[32]"
Global Const $TAGKBDLLHOOKSTRUCT = "dword vkCode;dword scanCode;dword flags;dword time;ulong_ptr dwExtraInfo"
Global Const $TAGPROCESS_INFORMATION = "handle hProcess;handle hThread;dword ProcessID;dword ThreadID"
Global Const $TAGSTARTUPINFO = "dword Size;ptr Reserved1;ptr Desktop;ptr Title;dword X;dword Y;dword XSize;dword YSize;dword XCountChars;" & "dword YCountChars;dword FillAttribute;dword Flags;word ShowWindow;word Reserved2;ptr Reserved3;handle StdInput;" & "handle StdOutput;handle StdError"
Global Const $TAGSECURITY_ATTRIBUTES = "dword Length;ptr Descriptor;bool InheritHandle"
Global Const $TAGWIN32_FIND_DATA = "dword dwFileAttributes; dword ftCreationTime[2]; dword ftLastAccessTime[2]; dword ftLastWriteTime[2]; dword nFileSizeHigh; dword nFileSizeLow; dword dwReserved0; dword dwReserved1; wchar cFileName[260]; wchar cAlternateFileName[14]"
Global Const $FC_NOOVERWRITE = 0
Global Const $FC_OVERWRITE = 1
Global Const $FT_MODIFIED = 0
Global Const $FT_CREATED = 1
Global Const $FT_ACCESSED = 2
Global Const $FO_READ = 0
Global Const $FO_APPEND = 1
Global Const $FO_OVERWRITE = 2
Global Const $FO_BINARY = 16
Global Const $FO_UNICODE = 32
Global Const $FO_UTF16_LE = 32
Global Const $FO_UTF16_BE = 64
Global Const $FO_UTF8 = 128
Global Const $FO_UTF8_NOBOM = 256
Global Const $EOF = - 1
Global Const $FD_FILEMUSTEXIST = 1
Global Const $FD_PATHMUSTEXIST = 2
Global Const $FD_MULTISELECT = 4
Global Const $FD_PROMPTCREATENEW = 8
Global Const $FD_PROMPTOVERWRITE = 16
Global Const $CREATE_NEW = 1
Global Const $CREATE_ALWAYS = 2
Global Const $OPEN_EXISTING = 3
Global Const $OPEN_ALWAYS = 4
Global Const $TRUNCATE_EXISTING = 5
Global Const $INVALID_SET_FILE_POINTER = - 1
Global Const $FILE_BEGIN = 0
Global Const $FILE_CURRENT = 1
Global Const $FILE_END = 2
Global Const $FILE_ATTRIBUTE_READONLY = 1
Global Const $FILE_ATTRIBUTE_HIDDEN = 2
Global Const $FILE_ATTRIBUTE_SYSTEM = 4
Global Const $FILE_ATTRIBUTE_DIRECTORY = 16
Global Const $FILE_ATTRIBUTE_ARCHIVE = 32
Global Const $FILE_ATTRIBUTE_DEVICE = 64
Global Const $FILE_ATTRIBUTE_NORMAL = 128
Global Const $FILE_ATTRIBUTE_TEMPORARY = 256
Global Const $FILE_ATTRIBUTE_SPARSE_FILE = 512
Global Const $FILE_ATTRIBUTE_REPARSE_POINT = 1024
Global Const $FILE_ATTRIBUTE_COMPRESSED = 2048
Global Const $FILE_ATTRIBUTE_OFFLINE = 4096
Global Const $FILE_ATTRIBUTE_NOT_CONTENT_INDEXED = 8192
Global Const $FILE_ATTRIBUTE_ENCRYPTED = 16384
Global Const $FILE_SHARE_READ = 1
Global Const $FILE_SHARE_WRITE = 2
Global Const $FILE_SHARE_DELETE = 4
Global Const $GENERIC_ALL = 268435456
Global Const $GENERIC_EXECUTE = 536870912
Global Const $GENERIC_WRITE = 1073741824
Global Const $GENERIC_READ = 2147483648
Global Const $ERROR_NO_TOKEN = 1008
Global Const $SE_ASSIGNPRIMARYTOKEN_NAME = "SeAssignPrimaryTokenPrivilege"
Global Const $SE_AUDIT_NAME = "SeAuditPrivilege"
Global Const $SE_BACKUP_NAME = "SeBackupPrivilege"
Global Const $SE_CHANGE_NOTIFY_NAME = "SeChangeNotifyPrivilege"
Global Const $SE_CREATE_GLOBAL_NAME = "SeCreateGlobalPrivilege"
Global Const $SE_CREATE_PAGEFILE_NAME = "SeCreatePagefilePrivilege"
Global Const $SE_CREATE_PERMANENT_NAME = "SeCreatePermanentPrivilege"
Global Const $SE_CREATE_TOKEN_NAME = "SeCreateTokenPrivilege"
Global Const $SE_DEBUG_NAME = "SeDebugPrivilege"
Global Const $SE_ENABLE_DELEGATION_NAME = "SeEnableDelegationPrivilege"
Global Const $SE_IMPERSONATE_NAME = "SeImpersonatePrivilege"
Global Const $SE_INC_BASE_PRIORITY_NAME = "SeIncreaseBasePriorityPrivilege"
Global Const $SE_INCREASE_QUOTA_NAME = "SeIncreaseQuotaPrivilege"
Global Const $SE_LOAD_DRIVER_NAME = "SeLoadDriverPrivilege"
Global Const $SE_LOCK_MEMORY_NAME = "SeLockMemoryPrivilege"
Global Const $SE_MACHINE_ACCOUNT_NAME = "SeMachineAccountPrivilege"
Global Const $SE_MANAGE_VOLUME_NAME = "SeManageVolumePrivilege"
Global Const $SE_PROF_SINGLE_PROCESS_NAME = "SeProfileSingleProcessPrivilege"
Global Const $SE_REMOTE_SHUTDOWN_NAME = "SeRemoteShutdownPrivilege"
Global Const $SE_RESTORE_NAME = "SeRestorePrivilege"
Global Const $SE_SECURITY_NAME = "SeSecurityPrivilege"
Global Const $SE_SHUTDOWN_NAME = "SeShutdownPrivilege"
Global Const $SE_SYNC_AGENT_NAME = "SeSyncAgentPrivilege"
Global Const $SE_SYSTEM_ENVIRONMENT_NAME = "SeSystemEnvironmentPrivilege"
Global Const $SE_SYSTEM_PROFILE_NAME = "SeSystemProfilePrivilege"
Global Const $SE_SYSTEMTIME_NAME = "SeSystemtimePrivilege"
Global Const $SE_TAKE_OWNERSHIP_NAME = "SeTakeOwnershipPrivilege"
Global Const $SE_TCB_NAME = "SeTcbPrivilege"
Global Const $SE_UNSOLICITED_INPUT_NAME = "SeUnsolicitedInputPrivilege"
Global Const $SE_UNDOCK_NAME = "SeUndockPrivilege"
Global Const $SE_PRIVILEGE_ENABLED_BY_DEFAULT = 1
Global Const $SE_PRIVILEGE_ENABLED = 2
Global Const $SE_PRIVILEGE_REMOVED = 4
Global Const $SE_PRIVILEGE_USED_FOR_ACCESS = 2147483648
Global Const $TOKENUSER = 1
Global Const $TOKENGROUPS = 2
Global Const $TOKENPRIVILEGES = 3
Global Const $TOKENOWNER = 4
Global Const $TOKENPRIMARYGROUP = 5
Global Const $TOKENDEFAULTDACL = 6
Global Const $TOKENSOURCE = 7
Global Const $TOKENTYPE = 8
Global Const $TOKENIMPERSONATIONLEVEL = 9
Global Const $TOKENSTATISTICS = 10
Global Const $TOKENRESTRICTEDSIDS = 11
Global Const $TOKENSESSIONID = 12
Global Const $TOKENGROUPSANDPRIVILEGES = 13
Global Const $TOKENSESSIONREFERENCE = 14
Global Const $TOKENSANDBOXINERT = 15
Global Const $TOKENAUDITPOLICY = 16
Global Const $TOKENORIGIN = 17
Global Const $TOKENELEVATIONTYPE = 18
Global Const $TOKENLINKEDTOKEN = 19
Global Const $TOKENELEVATION = 20
Global Const $TOKENHASRESTRICTIONS = 21
Global Const $TOKENACCESSINFORMATION = 22
Global Const $TOKENVIRTUALIZATIONALLOWED = 23
Global Const $TOKENVIRTUALIZATIONENABLED = 24
Global Const $TOKENINTEGRITYLEVEL = 25
Global Const $TOKENUIACCESS = 26
Global Const $TOKENMANDATORYPOLICY = 27
Global Const $TOKENLOGONSID = 28
Global Const $TOKEN_ASSIGN_PRIMARY = 1
Global Const $TOKEN_DUPLICATE = 2
Global Const $TOKEN_IMPERSONATE = 4
Global Const $TOKEN_QUERY = 8
Global Const $TOKEN_QUERY_SOURCE = 16
Global Const $TOKEN_ADJUST_PRIVILEGES = 32
Global Const $TOKEN_ADJUST_GROUPS = 64
Global Const $TOKEN_ADJUST_DEFAULT = 128
Global Const $TOKEN_ADJUST_SESSIONID = 256
Func _WINAPI_GETLASTERROR ( $CURERR = @error , $CUREXT = @extended )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetLastError" )
	Return SetError ( $CURERR , $CUREXT , $ARESULT [ 0 ] )
EndFunc
Func _WINAPI_SETLASTERROR ( $IERRCODE , $CURERR = @error , $CUREXT = @extended )
	DllCall ( "kernel32.dll" , "none" , "SetLastError" , "dword" , $IERRCODE )
	Return SetError ( $CURERR , $CUREXT )
EndFunc
Func _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , $FDISABLEALL , $PNEWSTATE , $IBUFFERLEN , $PPREVSTATE = 0 , $PREQUIRED = 0 )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "AdjustTokenPrivileges" , "handle" , $HTOKEN , "bool" , $FDISABLEALL , "ptr" , $PNEWSTATE , "dword" , $IBUFFERLEN , "ptr" , $PPREVSTATE , "ptr" , $PREQUIRED )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _SECURITY__GETACCOUNTSID ( $SACCOUNT , $SSYSTEM = "" )
	Local $AACCT = _SECURITY__LOOKUPACCOUNTNAME ( $SACCOUNT , $SSYSTEM )
	If @error Then Return SetError ( @error , 0 , 0 )
	Return _SECURITY__STRINGSIDTOSID ( $AACCT [ 0 ] )
EndFunc
Func _SECURITY__GETLENGTHSID ( $PSID )
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( - 1 , 0 , 0 )
	Local $ARESULT = DllCall ( "advapi32.dll" , "dword" , "GetLengthSid" , "ptr" , $PSID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _SECURITY__GETTOKENINFORMATION ( $HTOKEN , $ICLASS )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "GetTokenInformation" , "handle" , $HTOKEN , "int" , $ICLASS , "ptr" , 0 , "dword" , 0 , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ARESULT [ 0 ] Then Return 0
	Local $TBUFFER = DllStructCreate ( "byte[" & $ARESULT [ 5 ] & "]" )
	Local $PBUFFER = DllStructGetPtr ( $TBUFFER )
	$ARESULT = DllCall ( "advapi32.dll" , "bool" , "GetTokenInformation" , "handle" , $HTOKEN , "int" , $ICLASS , "ptr" , $PBUFFER , "dword" , $ARESULT [ 5 ] , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ARESULT [ 0 ] Then Return 0
	Return $TBUFFER
EndFunc
Func _SECURITY__IMPERSONATESELF ( $ILEVEL = 2 )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "ImpersonateSelf" , "int" , $ILEVEL )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _SECURITY__ISVALIDSID ( $PSID )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "IsValidSid" , "ptr" , $PSID )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _SECURITY__LOOKUPACCOUNTNAME ( $SACCOUNT , $SSYSTEM = "" )
	Local $TDATA = DllStructCreate ( "byte SID[256]" )
	Local $PSID = DllStructGetPtr ( $TDATA , "SID" )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "LookupAccountNameW" , "wstr" , $SSYSTEM , "wstr" , $SACCOUNT , "ptr" , $PSID , "dword*" , 256 , "wstr" , "" , "dword*" , 256 , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ARESULT [ 0 ] Then Return 0
	Local $AACCT [ 3 ]
	$AACCT [ 0 ] = _SECURITY__SIDTOSTRINGSID ( $PSID )
	$AACCT [ 1 ] = $ARESULT [ 5 ]
	$AACCT [ 2 ] = $ARESULT [ 7 ]
	Return $AACCT
EndFunc
Func _SECURITY__LOOKUPACCOUNTSID ( $VSID )
	Local $PSID , $AACCT [ 3 ]
	If IsString ( $VSID ) Then
		Local $TSID = _SECURITY__STRINGSIDTOSID ( $VSID )
		$PSID = DllStructGetPtr ( $TSID )
	Else
		$PSID = $VSID
	EndIf
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( - 1 , 0 , 0 )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "LookupAccountSidW" , "ptr" , 0 , "ptr" , $PSID , "wstr" , "" , "dword*" , 256 , "wstr" , "" , "dword*" , 256 , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ARESULT [ 0 ] Then Return 0
	Local $AACCT [ 3 ]
	$AACCT [ 0 ] = $ARESULT [ 3 ]
	$AACCT [ 1 ] = $ARESULT [ 5 ]
	$AACCT [ 2 ] = $ARESULT [ 7 ]
	Return $AACCT
EndFunc
Func _SECURITY__LOOKUPPRIVILEGEVALUE ( $SSYSTEM , $SNAME )
	Local $ARESULT = DllCall ( "advapi32.dll" , "int" , "LookupPrivilegeValueW" , "wstr" , $SSYSTEM , "wstr" , $SNAME , "int64*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetError ( 0 , $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _SECURITY__OPENPROCESSTOKEN ( $HPROCESS , $IACCESS )
	Local $ARESULT = DllCall ( "advapi32.dll" , "int" , "OpenProcessToken" , "handle" , $HPROCESS , "dword" , $IACCESS , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetError ( 0 , $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD = 0 , $FOPENASSELF = False )
	If $HTHREAD = 0 Then $HTHREAD = DllCall ( "kernel32.dll" , "handle" , "GetCurrentThread" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "OpenThreadToken" , "handle" , $HTHREAD [ 0 ] , "dword" , $IACCESS , "int" , $FOPENASSELF , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetError ( 0 , $ARESULT [ 0 ] , $ARESULT [ 4 ] )
EndFunc
Func _SECURITY__OPENTHREADTOKENEX ( $IACCESS , $HTHREAD = 0 , $FOPENASSELF = False )
	Local $HTOKEN = _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD , $FOPENASSELF )
	If $HTOKEN = 0 Then
		If _WINAPI_GETLASTERROR ( ) <> $ERROR_NO_TOKEN Then Return SetError ( - 3 , _WINAPI_GETLASTERROR ( ) , 0 )
		If Not _SECURITY__IMPERSONATESELF ( ) Then Return SetError ( - 1 , _WINAPI_GETLASTERROR ( ) , 0 )
		$HTOKEN = _SECURITY__OPENTHREADTOKEN ( $IACCESS , $HTHREAD , $FOPENASSELF )
		If $HTOKEN = 0 Then Return SetError ( - 2 , _WINAPI_GETLASTERROR ( ) , 0 )
	EndIf
	Return $HTOKEN
EndFunc
Func _SECURITY__SETPRIVILEGE ( $HTOKEN , $SPRIVILEGE , $FENABLE )
	Local $ILUID = _SECURITY__LOOKUPPRIVILEGEVALUE ( "" , $SPRIVILEGE )
	If $ILUID = 0 Then Return SetError ( - 1 , 0 , False )
	Local $TCURRSTATE = DllStructCreate ( $TAGTOKEN_PRIVILEGES )
	Local $PCURRSTATE = DllStructGetPtr ( $TCURRSTATE )
	Local $ICURRSTATE = DllStructGetSize ( $TCURRSTATE )
	Local $TPREVSTATE = DllStructCreate ( $TAGTOKEN_PRIVILEGES )
	Local $PPREVSTATE = DllStructGetPtr ( $TPREVSTATE )
	Local $IPREVSTATE = DllStructGetSize ( $TPREVSTATE )
	Local $TREQUIRED = DllStructCreate ( "int Data" )
	Local $PREQUIRED = DllStructGetPtr ( $TREQUIRED )
	DllStructSetData ( $TCURRSTATE , "Count" , 1 )
	DllStructSetData ( $TCURRSTATE , "LUID" , $ILUID )
	If Not _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , False , $PCURRSTATE , $ICURRSTATE , $PPREVSTATE , $PREQUIRED ) Then Return SetError ( - 2 , @error , False )
	DllStructSetData ( $TPREVSTATE , "Count" , 1 )
	DllStructSetData ( $TPREVSTATE , "LUID" , $ILUID )
	Local $IATTRIBUTES = DllStructGetData ( $TPREVSTATE , "Attributes" )
	If $FENABLE Then
		$IATTRIBUTES = BitOR ( $IATTRIBUTES , $SE_PRIVILEGE_ENABLED )
	Else
		$IATTRIBUTES = BitAND ( $IATTRIBUTES , BitNOT ( $SE_PRIVILEGE_ENABLED ) )
	EndIf
	DllStructSetData ( $TPREVSTATE , "Attributes" , $IATTRIBUTES )
	If Not _SECURITY__ADJUSTTOKENPRIVILEGES ( $HTOKEN , False , $PPREVSTATE , $IPREVSTATE , $PCURRSTATE , $PREQUIRED ) Then Return SetError ( - 3 , @error , False )
	Return True
EndFunc
Func _SECURITY__SIDTOSTRINGSID ( $PSID )
	If Not _SECURITY__ISVALIDSID ( $PSID ) Then Return SetError ( - 1 , 0 , "" )
	Local $ARESULT = DllCall ( "advapi32.dll" , "int" , "ConvertSidToStringSidW" , "ptr" , $PSID , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , "" )
	If Not $ARESULT [ 0 ] Then Return ""
	Local $TBUFFER = DllStructCreate ( "wchar Text[256]" , $ARESULT [ 2 ] )
	Local $SSID = DllStructGetData ( $TBUFFER , "Text" )
	DllCall ( "Kernel32.dll" , "ptr" , "LocalFree" , "ptr" , $ARESULT [ 2 ] )
	Return $SSID
EndFunc
Func _SECURITY__SIDTYPESTR ( $ITYPE )
	Switch $ITYPE
	Case 1
		Return "User"
	Case 2
		Return "Group"
	Case 3
		Return "Domain"
	Case 4
		Return "Alias"
	Case 5
		Return "Well Known Group"
	Case 6
		Return "Deleted Account"
	Case 7
		Return "Invalid"
	Case 8
		Return "Invalid"
	Case 9
		Return "Computer"
Case Else
		Return "Unknown SID Type"
	EndSwitch
EndFunc
Func _SECURITY__STRINGSIDTOSID ( $SSID )
	Local $ARESULT = DllCall ( "advapi32.dll" , "bool" , "ConvertStringSidToSidW" , "wstr" , $SSID , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ARESULT [ 0 ] Then Return 0
	Local $ISIZE = _SECURITY__GETLENGTHSID ( $ARESULT [ 2 ] )
	Local $TBUFFER = DllStructCreate ( "byte Data[" & $ISIZE & "]" , $ARESULT [ 2 ] )
	Local $TSID = DllStructCreate ( "byte Data[" & $ISIZE & "]" )
	DllStructSetData ( $TSID , "Data" , DllStructGetData ( $TBUFFER , "Data" ) )
	DllCall ( "kernel32.dll" , "ptr" , "LocalFree" , "ptr" , $ARESULT [ 2 ] )
	Return $TSID
EndFunc
Func _SENDMESSAGE ( $HWND , $IMSG , $WPARAM = 0 , $LPARAM = 0 , $IRETURN = 0 , $WPARAMTYPE = "wparam" , $LPARAMTYPE = "lparam" , $SRETURNTYPE = "lresult" )
	Local $ARESULT = DllCall ( "user32.dll" , $SRETURNTYPE , "SendMessageW" , "hwnd" , $HWND , "uint" , $IMSG , $WPARAMTYPE , $WPARAM , $LPARAMTYPE , $LPARAM )
	If @error Then Return SetError ( @error , @extended , "" )
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT [ $IRETURN ]
	Return $ARESULT
EndFunc
Func _SENDMESSAGEA ( $HWND , $IMSG , $WPARAM = 0 , $LPARAM = 0 , $IRETURN = 0 , $WPARAMTYPE = "wparam" , $LPARAMTYPE = "lparam" , $SRETURNTYPE = "lresult" )
	Local $ARESULT = DllCall ( "user32.dll" , $SRETURNTYPE , "SendMessageA" , "hwnd" , $HWND , "uint" , $IMSG , $WPARAMTYPE , $WPARAM , $LPARAMTYPE , $LPARAM )
	If @error Then Return SetError ( @error , @extended , "" )
	If $IRETURN >= 0 And $IRETURN <= 4 Then Return $ARESULT [ $IRETURN ]
	Return $ARESULT
EndFunc
Global $__GAINPROCESS_WINAPI [ 64 ] [ 2 ] = [ [ 0 , 0 ] ]
Global $__GAWINLIST_WINAPI [ 64 ] [ 2 ] = [ [ 0 , 0 ] ]
Global Const $__WINAPICONSTANT_WM_SETFONT = 48
Global Const $__WINAPICONSTANT_FW_NORMAL = 400
Global Const $__WINAPICONSTANT_DEFAULT_CHARSET = 1
Global Const $__WINAPICONSTANT_OUT_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS = 0
Global Const $__WINAPICONSTANT_DEFAULT_QUALITY = 0
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER = 256
Global Const $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM = 4096
Global Const $__WINAPICONSTANT_LOGPIXELSX = 88
Global Const $__WINAPICONSTANT_LOGPIXELSY = 90
Global Const $HGDI_ERROR = Ptr ( - 1 )
Global Const $INVALID_HANDLE_VALUE = Ptr ( - 1 )
Global Const $CLR_INVALID = - 1
Global Const $__WINAPICONSTANT_FLASHW_CAPTION = 1
Global Const $__WINAPICONSTANT_FLASHW_TRAY = 2
Global Const $__WINAPICONSTANT_FLASHW_TIMER = 4
Global Const $__WINAPICONSTANT_FLASHW_TIMERNOFG = 12
Global Const $__WINAPICONSTANT_GW_HWNDNEXT = 2
Global Const $__WINAPICONSTANT_GW_CHILD = 5
Global Const $__WINAPICONSTANT_DI_MASK = 1
Global Const $__WINAPICONSTANT_DI_IMAGE = 2
Global Const $__WINAPICONSTANT_DI_NORMAL = 3
Global Const $__WINAPICONSTANT_DI_COMPAT = 4
Global Const $__WINAPICONSTANT_DI_DEFAULTSIZE = 8
Global Const $__WINAPICONSTANT_DI_NOMIRROR = 16
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP = 1
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE = 4
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER = 8
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE = 16
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE = 32
Global Const $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED = 134217728
Global Const $NULL_BRUSH = 5
Global Const $NULL_PEN = 8
Global Const $BLACK_BRUSH = 4
Global Const $DKGRAY_BRUSH = 3
Global Const $DC_BRUSH = 18
Global Const $GRAY_BRUSH = 2
Global Const $HOLLOW_BRUSH = $NULL_BRUSH
Global Const $LTGRAY_BRUSH = 1
Global Const $WHITE_BRUSH = 0
Global Const $BLACK_PEN = 7
Global Const $DC_PEN = 19
Global Const $WHITE_PEN = 6
Global Const $ANSI_FIXED_FONT = 11
Global Const $ANSI_VAR_FONT = 12
Global Const $DEVICE_DEFAULT_FONT = 14
Global Const $DEFAULT_GUI_FONT = 17
Global Const $OEM_FIXED_FONT = 10
Global Const $SYSTEM_FONT = 13
Global Const $SYSTEM_FIXED_FONT = 16
Global Const $DEFAULT_PALETTE = 15
Global Const $MB_PRECOMPOSED = 1
Global Const $MB_COMPOSITE = 2
Global Const $MB_USEGLYPHCHARS = 4
Global Const $ULW_ALPHA = 2
Global Const $ULW_COLORKEY = 1
Global Const $ULW_OPAQUE = 4
Global Const $WH_CALLWNDPROC = 4
Global Const $WH_CALLWNDPROCRET = 12
Global Const $WH_CBT = 5
Global Const $WH_DEBUG = 9
Global Const $WH_FOREGROUNDIDLE = 11
Global Const $WH_GETMESSAGE = 3
Global Const $WH_JOURNALPLAYBACK = 1
Global Const $WH_JOURNALRECORD = 0
Global Const $WH_KEYBOARD = 2
Global Const $WH_KEYBOARD_LL = 13
Global Const $WH_MOUSE = 7
Global Const $WH_MOUSE_LL = 14
Global Const $WH_MSGFILTER = - 1
Global Const $WH_SHELL = 10
Global Const $WH_SYSMSGFILTER = 6
Global Const $WPF_ASYNCWINDOWPLACEMENT = 4
Global Const $WPF_RESTORETOMAXIMIZED = 2
Global Const $WPF_SETMINPOSITION = 1
Global Const $KF_EXTENDED = 256
Global Const $KF_ALTDOWN = 8192
Global Const $KF_UP = 32768
Global Const $LLKHF_EXTENDED = BitShift ( $KF_EXTENDED , 8 )
Global Const $LLKHF_INJECTED = 16
Global Const $LLKHF_ALTDOWN = BitShift ( $KF_ALTDOWN , 8 )
Global Const $LLKHF_UP = BitShift ( $KF_UP , 8 )
Global Const $OFN_ALLOWMULTISELECT = 512
Global Const $OFN_CREATEPROMPT = 8192
Global Const $OFN_DONTADDTORECENT = 33554432
Global Const $OFN_ENABLEHOOK = 32
Global Const $OFN_ENABLEINCLUDENOTIFY = 4194304
Global Const $OFN_ENABLESIZING = 8388608
Global Const $OFN_ENABLETEMPLATE = 64
Global Const $OFN_ENABLETEMPLATEHANDLE = 128
Global Const $OFN_EXPLORER = 524288
Global Const $OFN_EXTENSIONDIFFERENT = 1024
Global Const $OFN_FILEMUSTEXIST = 4096
Global Const $OFN_FORCESHOWHIDDEN = 268435456
Global Const $OFN_HIDEREADONLY = 4
Global Const $OFN_LONGNAMES = 2097152
Global Const $OFN_NOCHANGEDIR = 8
Global Const $OFN_NODEREFERENCELINKS = 1048576
Global Const $OFN_NOLONGNAMES = 262144
Global Const $OFN_NONETWORKBUTTON = 131072
Global Const $OFN_NOREADONLYRETURN = 32768
Global Const $OFN_NOTESTFILECREATE = 65536
Global Const $OFN_NOVALIDATE = 256
Global Const $OFN_OVERWRITEPROMPT = 2
Global Const $OFN_PATHMUSTEXIST = 2048
Global Const $OFN_READONLY = 1
Global Const $OFN_SHAREAWARE = 16384
Global Const $OFN_SHOWHELP = 16
Global Const $OFN_EX_NOPLACESBAR = 1
Global Const $TAGCURSORINFO = "dword Size;dword Flags;handle hCursor;" & $TAGPOINT
Global Const $TAGDISPLAY_DEVICE = "dword Size;wchar Name[32];wchar String[128];dword Flags;wchar ID[128];wchar Key[128]"
Global Const $TAGFLASHWINFO = "uint Size;hwnd hWnd;dword Flags;uint Count;dword TimeOut"
Global Const $TAGICONINFO = "bool Icon;dword XHotSpot;dword YHotSpot;handle hMask;handle hColor"
Global Const $TAGMEMORYSTATUSEX = "dword Length;dword MemoryLoad;" & "uint64 TotalPhys;uint64 AvailPhys;uint64 TotalPageFile;uint64 AvailPageFile;" & "uint64 TotalVirtual;uint64 AvailVirtual;uint64 AvailExtendedVirtual"
Func _WINAPI_ATTACHCONSOLE ( $IPROCESSID = - 1 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "AttachConsole" , "dword" , $IPROCESSID )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ATTACHTHREADINPUT ( $IATTACH , $IATTACHTO , $FATTACH )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "AttachThreadInput" , "dword" , $IATTACH , "dword" , $IATTACHTO , "bool" , $FATTACH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_BEEP ( $IFREQ = 500 , $IDURATION = 1000 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "Beep" , "dword" , $IFREQ , "dword" , $IDURATION )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_BITBLT ( $HDESTDC , $IXDEST , $IYDEST , $IWIDTH , $IHEIGHT , $HSRCDC , $IXSRC , $IYSRC , $IROP )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "BitBlt" , "handle" , $HDESTDC , "int" , $IXDEST , "int" , $IYDEST , "int" , $IWIDTH , "int" , $IHEIGHT , "handle" , $HSRCDC , "int" , $IXSRC , "int" , $IYSRC , "dword" , $IROP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CALLNEXTHOOKEX ( $HHK , $ICODE , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "CallNextHookEx" , "handle" , $HHK , "int" , $ICODE , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CALLWINDOWPROC ( $LPPREVWNDFUNC , $HWND , $MSG , $WPARAM , $LPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "CallWindowProc" , "ptr" , $LPPREVWNDFUNC , "hwnd" , $HWND , "uint" , $MSG , "wparam" , $WPARAM , "lparam" , $LPARAM )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CLIENTTOSCREEN ( $HWND , ByRef $TPOINT )
	Local $PPOINT = DllStructGetPtr ( $TPOINT )
	DllCall ( "user32.dll" , "bool" , "ClientToScreen" , "hwnd" , $HWND , "ptr" , $PPOINT )
	Return SetError ( @error , @extended , $TPOINT )
EndFunc
Func _WINAPI_CLOSEHANDLE ( $HOBJECT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $HOBJECT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_COMBINERGN ( $HRGNDEST , $HRGNSRC1 , $HRGNSRC2 , $ICOMBINEMODE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "CombineRgn" , "handle" , $HRGNDEST , "handle" , $HRGNSRC1 , "handle" , $HRGNSRC2 , "int" , $ICOMBINEMODE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_COMMDLGEXTENDEDERROR ( )
	Local Const $CDERR_DIALOGFAILURE = 65535
	Local Const $CDERR_FINDRESFAILURE = 6
	Local Const $CDERR_INITIALIZATION = 2
	Local Const $CDERR_LOADRESFAILURE = 7
	Local Const $CDERR_LOADSTRFAILURE = 5
	Local Const $CDERR_LOCKRESFAILURE = 8
	Local Const $CDERR_MEMALLOCFAILURE = 9
	Local Const $CDERR_MEMLOCKFAILURE = 10
	Local Const $CDERR_NOHINSTANCE = 4
	Local Const $CDERR_NOHOOK = 11
	Local Const $CDERR_NOTEMPLATE = 3
	Local Const $CDERR_REGISTERMSGFAIL = 12
	Local Const $CDERR_STRUCTSIZE = 1
	Local Const $FNERR_BUFFERTOOSMALL = 12291
	Local Const $FNERR_INVALIDFILENAME = 12290
	Local Const $FNERR_SUBCLASSFAILURE = 12289
	Local $ARESULT = DllCall ( "comdlg32.dll" , "dword" , "CommDlgExtendedError" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Switch $ARESULT [ 0 ]
	Case $CDERR_DIALOGFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The dialog box could not be created." & @LF & "The common dialog box function's call to the DialogBox function failed." & @LF & "For example, this error occurs if the common dialog box call specifies an invalid window handle." )
	Case $CDERR_FINDRESFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to find a specified resource." )
	Case $CDERR_INITIALIZATION
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed during initialization." & @LF & "This error often occurs when sufficient memory is not available." )
	Case $CDERR_LOADRESFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to load a specified resource." )
	Case $CDERR_LOADSTRFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to load a specified string." )
	Case $CDERR_LOCKRESFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function failed to lock a specified resource." )
	Case $CDERR_MEMALLOCFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function was unable to allocate memory for internal structures." )
	Case $CDERR_MEMLOCKFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The common dialog box function was unable to lock the memory associated with a handle." )
	Case $CDERR_NOHINSTANCE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding instance handle." )
	Case $CDERR_NOHOOK
		Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLEHOOK flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a pointer to a corresponding hook procedure." )
	Case $CDERR_NOTEMPLATE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The ENABLETEMPLATE flag was set in the Flags member of the initialization structure for the corresponding common dialog box," & @LF & "but you failed to provide a corresponding template." )
	Case $CDERR_REGISTERMSGFAIL
		Return SetError ( $ARESULT [ 0 ] , 0 , "The RegisterWindowMessage function returned an error code when it was called by the common dialog box function." )
	Case $CDERR_STRUCTSIZE
		Return SetError ( $ARESULT [ 0 ] , 0 , "The lStructSize member of the initialization structure for the corresponding common dialog box is invalid" )
	Case $FNERR_BUFFERTOOSMALL
		Return SetError ( $ARESULT [ 0 ] , 0 , "The buffer pointed to by the lpstrFile member of the OPENFILENAME structure is too small for the file name specified by the user." & @LF & "The first two bytes of the lpstrFile buffer contain an integer value specifying the size, in TCHARs, required to receive the full name." )
	Case $FNERR_INVALIDFILENAME
		Return SetError ( $ARESULT [ 0 ] , 0 , "A file name is invalid." )
	Case $FNERR_SUBCLASSFAILURE
		Return SetError ( $ARESULT [ 0 ] , 0 , "An attempt to subclass a list box failed because sufficient memory was not available." )
	EndSwitch
	Return Hex ( $ARESULT [ 0 ] )
EndFunc
Func _WINAPI_COPYICON ( $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "CopyIcon" , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEBITMAP ( $IWIDTH , $IHEIGHT , $IPLANES = 1 , $IBITSPERPEL = 1 , $PBITS = 0 )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateBitmap" , "int" , $IWIDTH , "int" , $IHEIGHT , "uint" , $IPLANES , "uint" , $IBITSPERPEL , "ptr" , $PBITS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATECOMPATIBLEBITMAP ( $HDC , $IWIDTH , $IHEIGHT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateCompatibleBitmap" , "handle" , $HDC , "int" , $IWIDTH , "int" , $IHEIGHT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATECOMPATIBLEDC ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateCompatibleDC" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEEVENT ( $PATTRIBUTES = 0 , $FMANUALRESET = True , $FINITIALSTATE = True , $SNAME = "" )
	Local $SNAMETYPE = "wstr"
	If $SNAME = "" Then
		$SNAME = 0
		$SNAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "CreateEventW" , "ptr" , $PATTRIBUTES , "bool" , $FMANUALRESET , "bool" , $FINITIALSTATE , $SNAMETYPE , $SNAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFILE ( $SFILENAME , $ICREATION , $IACCESS = 4 , $ISHARE = 0 , $IATTRIBUTES = 0 , $PSECURITY = 0 )
	Local $IDA = 0 , $ISM = 0 , $ICD = 0 , $IFA = 0
	If BitAND ( $IACCESS , 1 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_EXECUTE )
	If BitAND ( $IACCESS , 2 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_READ )
	If BitAND ( $IACCESS , 4 ) <> 0 Then $IDA = BitOR ( $IDA , $GENERIC_WRITE )
	If BitAND ( $ISHARE , 1 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_DELETE )
	If BitAND ( $ISHARE , 2 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_READ )
	If BitAND ( $ISHARE , 4 ) <> 0 Then $ISM = BitOR ( $ISM , $FILE_SHARE_WRITE )
	Switch $ICREATION
	Case 0
		$ICD = $CREATE_NEW
	Case 1
		$ICD = $CREATE_ALWAYS
	Case 2
		$ICD = $OPEN_EXISTING
	Case 3
		$ICD = $OPEN_ALWAYS
	Case 4
		$ICD = $TRUNCATE_EXISTING
	EndSwitch
	If BitAND ( $IATTRIBUTES , 1 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_ARCHIVE )
	If BitAND ( $IATTRIBUTES , 2 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_HIDDEN )
	If BitAND ( $IATTRIBUTES , 4 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_READONLY )
	If BitAND ( $IATTRIBUTES , 8 ) <> 0 Then $IFA = BitOR ( $IFA , $FILE_ATTRIBUTE_SYSTEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "CreateFileW" , "wstr" , $SFILENAME , "dword" , $IDA , "dword" , $ISM , "ptr" , $PSECURITY , "dword" , $ICD , "dword" , $IFA , "ptr" , 0 )
	If @error Or $ARESULT [ 0 ] = Ptr ( - 1 ) Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFONT ( $NHEIGHT , $NWIDTH , $NESCAPE = 0 , $NORIENTN = 0 , $FNWEIGHT = $__WINAPICONSTANT_FW_NORMAL , $BITALIC = False , $BUNDERLINE = False , $BSTRIKEOUT = False , $NCHARSET = $__WINAPICONSTANT_DEFAULT_CHARSET , $NOUTPUTPREC = $__WINAPICONSTANT_OUT_DEFAULT_PRECIS , $NCLIPPREC = $__WINAPICONSTANT_CLIP_DEFAULT_PRECIS , $NQUALITY = $__WINAPICONSTANT_DEFAULT_QUALITY , $NPITCH = 0 , $SZFACE = "Arial" )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateFontW" , "int" , $NHEIGHT , "int" , $NWIDTH , "int" , $NESCAPE , "int" , $NORIENTN , "int" , $FNWEIGHT , "dword" , $BITALIC , "dword" , $BUNDERLINE , "dword" , $BSTRIKEOUT , "dword" , $NCHARSET , "dword" , $NOUTPUTPREC , "dword" , $NCLIPPREC , "dword" , $NQUALITY , "dword" , $NPITCH , "wstr" , $SZFACE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEFONTINDIRECT ( $TLOGFONT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateFontIndirectW" , "ptr" , DllStructGetPtr ( $TLOGFONT ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEPEN ( $IPENSTYLE , $IWIDTH , $NCOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreatePen" , "int" , $IPENSTYLE , "int" , $IWIDTH , "dword" , $NCOLOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEPROCESS ( $SAPPNAME , $SCOMMAND , $PSECURITY , $PTHREAD , $FINHERIT , $IFLAGS , $PENVIRON , $SDIR , $PSTARTUPINFO , $PPROCESS )
	Local $PCOMMAND = 0
	Local $SAPPNAMETYPE = "wstr" , $SDIRTYPE = "wstr"
	If $SAPPNAME = "" Then
		$SAPPNAMETYPE = "ptr"
		$SAPPNAME = 0
	EndIf
	If $SCOMMAND <> "" Then
		Local $TCOMMAND = DllStructCreate ( "wchar Text[" & 260 + 1 & "]" )
		$PCOMMAND = DllStructGetPtr ( $TCOMMAND )
		DllStructSetData ( $TCOMMAND , "Text" , $SCOMMAND )
	EndIf
	If $SDIR = "" Then
		$SDIRTYPE = "ptr"
		$SDIR = 0
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "CreateProcessW" , $SAPPNAMETYPE , $SAPPNAME , "ptr" , $PCOMMAND , "ptr" , $PSECURITY , "ptr" , $PTHREAD , "bool" , $FINHERIT , "dword" , $IFLAGS , "ptr" , $PENVIRON , $SDIRTYPE , $SDIR , "ptr" , $PSTARTUPINFO , "ptr" , $PPROCESS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATERECTRGN ( $ILEFTRECT , $ITOPRECT , $IRIGHTRECT , $IBOTTOMRECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateRectRgn" , "int" , $ILEFTRECT , "int" , $ITOPRECT , "int" , $IRIGHTRECT , "int" , $IBOTTOMRECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEROUNDRECTRGN ( $ILEFTRECT , $ITOPRECT , $IRIGHTRECT , $IBOTTOMRECT , $IWIDTHELLIPSE , $IHEIGHTELLIPSE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateRoundRectRgn" , "int" , $ILEFTRECT , "int" , $ITOPRECT , "int" , $IRIGHTRECT , "int" , $IBOTTOMRECT , "int" , $IWIDTHELLIPSE , "int" , $IHEIGHTELLIPSE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATESOLIDBITMAP ( $HWND , $ICOLOR , $IWIDTH , $IHEIGHT , $BRGB = 1 )
	Local $HDC = _WINAPI_GETDC ( $HWND )
	Local $HDESTDC = _WINAPI_CREATECOMPATIBLEDC ( $HDC )
	Local $HBITMAP = _WINAPI_CREATECOMPATIBLEBITMAP ( $HDC , $IWIDTH , $IHEIGHT )
	Local $HOLD = _WINAPI_SELECTOBJECT ( $HDESTDC , $HBITMAP )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	DllStructSetData ( $TRECT , 1 , 0 )
	DllStructSetData ( $TRECT , 2 , 0 )
	DllStructSetData ( $TRECT , 3 , $IWIDTH )
	DllStructSetData ( $TRECT , 4 , $IHEIGHT )
	If $BRGB Then
		$ICOLOR = BitOR ( BitAND ( $ICOLOR , 65280 ) , BitShift ( BitAND ( $ICOLOR , 255 ) , - 16 ) , BitShift ( BitAND ( $ICOLOR , 16711680 ) , 16 ) )
	EndIf
	Local $HBRUSH = _WINAPI_CREATESOLIDBRUSH ( $ICOLOR )
	_WINAPI_FILLRECT ( $HDESTDC , DllStructGetPtr ( $TRECT ) , $HBRUSH )
	If @error Then
		_WINAPI_DELETEOBJECT ( $HBITMAP )
		$HBITMAP = 0
	EndIf
	_WINAPI_DELETEOBJECT ( $HBRUSH )
	_WINAPI_RELEASEDC ( $HWND , $HDC )
	_WINAPI_SELECTOBJECT ( $HDESTDC , $HOLD )
	_WINAPI_DELETEDC ( $HDESTDC )
	If Not $HBITMAP Then Return SetError ( 1 , 0 , 0 )
	Return $HBITMAP
EndFunc
Func _WINAPI_CREATESOLIDBRUSH ( $NCOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "CreateSolidBrush" , "dword" , $NCOLOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_CREATEWINDOWEX ( $IEXSTYLE , $SCLASS , $SNAME , $ISTYLE , $IX , $IY , $IWIDTH , $IHEIGHT , $HPARENT , $HMENU = 0 , $HINSTANCE = 0 , $PPARAM = 0 )
	If $HINSTANCE = 0 Then $HINSTANCE = _WINAPI_GETMODULEHANDLE ( "" )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "CreateWindowExW" , "dword" , $IEXSTYLE , "wstr" , $SCLASS , "wstr" , $SNAME , "dword" , $ISTYLE , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "hwnd" , $HPARENT , "handle" , $HMENU , "handle" , $HINSTANCE , "ptr" , $PPARAM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DEFWINDOWPROC ( $HWND , $IMSG , $IWPARAM , $ILPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "lresult" , "DefWindowProc" , "hwnd" , $HWND , "uint" , $IMSG , "wparam" , $IWPARAM , "lparam" , $ILPARAM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DELETEDC ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "DeleteDC" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DELETEOBJECT ( $HOBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "DeleteObject" , "handle" , $HOBJECT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DESTROYICON ( $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DestroyIcon" , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DESTROYWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DestroyWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWEDGE ( $HDC , $PTRRECT , $NEDGETYPE , $GRFFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawEdge" , "handle" , $HDC , "ptr" , $PTRRECT , "uint" , $NEDGETYPE , "uint" , $GRFFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWFRAMECONTROL ( $HDC , $PTRRECT , $NTYPE , $NSTATE )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawFrameControl" , "handle" , $HDC , "ptr" , $PTRRECT , "uint" , $NTYPE , "uint" , $NSTATE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWICON ( $HDC , $IX , $IY , $HICON )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawIcon" , "handle" , $HDC , "int" , $IX , "int" , $IY , "handle" , $HICON )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWICONEX ( $HDC , $IX , $IY , $HICON , $IWIDTH = 0 , $IHEIGHT = 0 , $ISTEP = 0 , $HBRUSH = 0 , $IFLAGS = 3 )
	Local $IOPTIONS
	Switch $IFLAGS
	Case 1
		$IOPTIONS = $__WINAPICONSTANT_DI_MASK
	Case 2
		$IOPTIONS = $__WINAPICONSTANT_DI_IMAGE
	Case 3
		$IOPTIONS = $__WINAPICONSTANT_DI_NORMAL
	Case 4
		$IOPTIONS = $__WINAPICONSTANT_DI_COMPAT
	Case 5
		$IOPTIONS = $__WINAPICONSTANT_DI_DEFAULTSIZE
Case Else
		$IOPTIONS = $__WINAPICONSTANT_DI_NOMIRROR
	EndSwitch
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "DrawIconEx" , "handle" , $HDC , "int" , $IX , "int" , $IY , "handle" , $HICON , "int" , $IWIDTH , "int" , $IHEIGHT , "uint" , $ISTEP , "handle" , $HBRUSH , "uint" , $IOPTIONS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_DRAWLINE ( $HDC , $IX1 , $IY1 , $IX2 , $IY2 )
	_WINAPI_MOVETO ( $HDC , $IX1 , $IY1 )
	If @error Then Return SetError ( @error , @extended , False )
	_WINAPI_LINETO ( $HDC , $IX2 , $IY2 )
	If @error Then Return SetError ( @error , @extended , False )
	Return True
EndFunc
Func _WINAPI_DRAWTEXT ( $HDC , $STEXT , ByRef $TRECT , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "DrawTextW" , "handle" , $HDC , "wstr" , $STEXT , "int" , - 1 , "ptr" , DllStructGetPtr ( $TRECT ) , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ENABLEWINDOW ( $HWND , $FENABLE = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "EnableWindow" , "hwnd" , $HWND , "bool" , $FENABLE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ENUMDISPLAYDEVICES ( $SDEVICE , $IDEVNUM )
	Local $PNAME = 0 , $IFLAGS = 0 , $ADEVICE [ 5 ]
	If $SDEVICE <> "" Then
		Local $TNAME = DllStructCreate ( "wchar Text[" & StringLen ( $SDEVICE ) + 1 & "]" )
		$PNAME = DllStructGetPtr ( $TNAME )
		DllStructSetData ( $TNAME , "Text" , $SDEVICE )
	EndIf
	Local $TDEVICE = DllStructCreate ( $TAGDISPLAY_DEVICE )
	Local $PDEVICE = DllStructGetPtr ( $TDEVICE )
	Local $IDEVICE = DllStructGetSize ( $TDEVICE )
	DllStructSetData ( $TDEVICE , "Size" , $IDEVICE )
	DllCall ( "user32.dll" , "bool" , "EnumDisplayDevicesW" , "ptr" , $PNAME , "dword" , $IDEVNUM , "ptr" , $PDEVICE , "dword" , 1 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $IN = DllStructGetData ( $TDEVICE , "Flags" )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_ATTACHED_TO_DESKTOP ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 1 )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_PRIMARY_DEVICE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 2 )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_MIRRORING_DRIVER ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 4 )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_VGA_COMPATIBLE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 8 )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_REMOVABLE ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 16 )
	If BitAND ( $IN , $__WINAPICONSTANT_DISPLAY_DEVICE_MODESPRUNED ) <> 0 Then $IFLAGS = BitOR ( $IFLAGS , 32 )
	$ADEVICE [ 0 ] = True
	$ADEVICE [ 1 ] = DllStructGetData ( $TDEVICE , "Name" )
	$ADEVICE [ 2 ] = DllStructGetData ( $TDEVICE , "String" )
	$ADEVICE [ 3 ] = $IFLAGS
	$ADEVICE [ 4 ] = DllStructGetData ( $TDEVICE , "ID" )
	Return $ADEVICE
EndFunc
Func _WINAPI_ENUMWINDOWS ( $FVISIBLE = True , $HWND = Default )
	__WINAPI_ENUMWINDOWSINIT ( )
	If $HWND = Default Then $HWND = _WINAPI_GETDESKTOPWINDOW ( )
	__WINAPI_ENUMWINDOWSCHILD ( $HWND , $FVISIBLE )
	Return $__GAWINLIST_WINAPI
EndFunc
Func __WINAPI_ENUMWINDOWSADD ( $HWND , $SCLASS = "" )
	If $SCLASS = "" Then $SCLASS = _WINAPI_GETCLASSNAME ( $HWND )
	$__GAWINLIST_WINAPI [ 0 ] [ 0 ] += 1
	Local $ICOUNT = $__GAWINLIST_WINAPI [ 0 ] [ 0 ]
	If $ICOUNT >= $__GAWINLIST_WINAPI [ 0 ] [ 1 ] Then
		ReDim $__GAWINLIST_WINAPI [ $ICOUNT + 64 ] [ 2 ]
		$__GAWINLIST_WINAPI [ 0 ] [ 1 ] += 64
	EndIf
	$__GAWINLIST_WINAPI [ $ICOUNT ] [ 0 ] = $HWND
	$__GAWINLIST_WINAPI [ $ICOUNT ] [ 1 ] = $SCLASS
EndFunc
Func __WINAPI_ENUMWINDOWSCHILD ( $HWND , $FVISIBLE = True )
	$HWND = _WINAPI_GETWINDOW ( $HWND , $__WINAPICONSTANT_GW_CHILD )
	While $HWND <> 0
		If ( Not $FVISIBLE ) Or _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then
			__WINAPI_ENUMWINDOWSCHILD ( $HWND , $FVISIBLE )
			__WINAPI_ENUMWINDOWSADD ( $HWND )
		EndIf
		$HWND = _WINAPI_GETWINDOW ( $HWND , $__WINAPICONSTANT_GW_HWNDNEXT )
	WEnd
EndFunc
Func __WINAPI_ENUMWINDOWSINIT ( )
	ReDim $__GAWINLIST_WINAPI [ 64 ] [ 2 ]
	$__GAWINLIST_WINAPI [ 0 ] [ 0 ] = 0
	$__GAWINLIST_WINAPI [ 0 ] [ 1 ] = 64
EndFunc
Func _WINAPI_ENUMWINDOWSPOPUP ( )
	__WINAPI_ENUMWINDOWSINIT ( )
	Local $HWND = _WINAPI_GETWINDOW ( _WINAPI_GETDESKTOPWINDOW ( ) , $__WINAPICONSTANT_GW_CHILD )
	Local $SCLASS
	While $HWND <> 0
		If _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then
			$SCLASS = _WINAPI_GETCLASSNAME ( $HWND )
			If $SCLASS = "#32768" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "ToolbarWindow32" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "ToolTips_Class32" Then
				__WINAPI_ENUMWINDOWSADD ( $HWND )
			ElseIf $SCLASS = "BaseBar" Then
				__WINAPI_ENUMWINDOWSCHILD ( $HWND )
			EndIf
		EndIf
		$HWND = _WINAPI_GETWINDOW ( $HWND , $__WINAPICONSTANT_GW_HWNDNEXT )
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc
Func _WINAPI_ENUMWINDOWSTOP ( )
	__WINAPI_ENUMWINDOWSINIT ( )
	Local $HWND = _WINAPI_GETWINDOW ( _WINAPI_GETDESKTOPWINDOW ( ) , $__WINAPICONSTANT_GW_CHILD )
	While $HWND <> 0
		If _WINAPI_ISWINDOWVISIBLE ( $HWND ) Then __WINAPI_ENUMWINDOWSADD ( $HWND )
		$HWND = _WINAPI_GETWINDOW ( $HWND , $__WINAPICONSTANT_GW_HWNDNEXT )
	WEnd
	Return $__GAWINLIST_WINAPI
EndFunc
Func _WINAPI_EXPANDENVIRONMENTSTRINGS ( $SSTRING )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "ExpandEnvironmentStringsW" , "wstr" , $SSTRING , "wstr" , "" , "dword" , 4096 )
	If @error Then Return SetError ( @error , @extended , "" )
	Return $ARESULT [ 2 ]
EndFunc
Func _WINAPI_EXTRACTICONEX ( $SFILE , $IINDEX , $PLARGE , $PSMALL , $IICONS )
	Local $ARESULT = DllCall ( "shell32.dll" , "uint" , "ExtractIconExW" , "wstr" , $SFILE , "int" , $IINDEX , "handle" , $PLARGE , "handle" , $PSMALL , "uint" , $IICONS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FATALAPPEXIT ( $SMESSAGE )
	DllCall ( "kernel32.dll" , "none" , "FatalAppExitW" , "uint" , 0 , "wstr" , $SMESSAGE )
	If @error Then Return SetError ( @error , @extended )
EndFunc
Func _WINAPI_FILLRECT ( $HDC , $PTRRECT , $HBRUSH )
	Local $ARESULT
	If IsPtr ( $HBRUSH ) Then
		$ARESULT = DllCall ( "user32.dll" , "int" , "FillRect" , "handle" , $HDC , "ptr" , $PTRRECT , "handle" , $HBRUSH )
	Else
		$ARESULT = DllCall ( "user32.dll" , "int" , "FillRect" , "handle" , $HDC , "ptr" , $PTRRECT , "dword" , $HBRUSH )
	EndIf
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FINDEXECUTABLE ( $SFILENAME , $SDIRECTORY = "" )
	Local $ARESULT = DllCall ( "shell32.dll" , "INT" , "FindExecutableW" , "wstr" , $SFILENAME , "wstr" , $SDIRECTORY , "wstr" , "" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _WINAPI_FINDWINDOW ( $SCLASSNAME , $SWINDOWNAME )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "FindWindowW" , "wstr" , $SCLASSNAME , "wstr" , $SWINDOWNAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLASHWINDOW ( $HWND , $FINVERT = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "FlashWindow" , "hwnd" , $HWND , "bool" , $FINVERT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLASHWINDOWEX ( $HWND , $IFLAGS = 3 , $ICOUNT = 3 , $ITIMEOUT = 0 )
	Local $TFLASH = DllStructCreate ( $TAGFLASHWINFO )
	Local $PFLASH = DllStructGetPtr ( $TFLASH )
	Local $IFLASH = DllStructGetSize ( $TFLASH )
	Local $IMODE = 0
	If BitAND ( $IFLAGS , 1 ) <> 0 Then $IMODE = BitOR ( $IMODE , $__WINAPICONSTANT_FLASHW_CAPTION )
	If BitAND ( $IFLAGS , 2 ) <> 0 Then $IMODE = BitOR ( $IMODE , $__WINAPICONSTANT_FLASHW_TRAY )
	If BitAND ( $IFLAGS , 4 ) <> 0 Then $IMODE = BitOR ( $IMODE , $__WINAPICONSTANT_FLASHW_TIMER )
	If BitAND ( $IFLAGS , 8 ) <> 0 Then $IMODE = BitOR ( $IMODE , $__WINAPICONSTANT_FLASHW_TIMERNOFG )
	DllStructSetData ( $TFLASH , "Size" , $IFLASH )
	DllStructSetData ( $TFLASH , "hWnd" , $HWND )
	DllStructSetData ( $TFLASH , "Flags" , $IMODE )
	DllStructSetData ( $TFLASH , "Count" , $ICOUNT )
	DllStructSetData ( $TFLASH , "Timeout" , $ITIMEOUT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "FlashWindowEx" , "ptr" , $PFLASH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FLOATTOINT ( $NFLOAT )
	Local $TFLOAT = DllStructCreate ( "float" )
	Local $TINT = DllStructCreate ( "int" , DllStructGetPtr ( $TFLOAT ) )
	DllStructSetData ( $TFLOAT , 1 , $NFLOAT )
	Return DllStructGetData ( $TINT , 1 )
EndFunc
Func _WINAPI_FLUSHFILEBUFFERS ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "FlushFileBuffers" , "handle" , $HFILE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FORMATMESSAGE ( $IFLAGS , $PSOURCE , $IMESSAGEID , $ILANGUAGEID , ByRef $PBUFFER , $ISIZE , $VARGUMENTS )
	Local $SBUFFERTYPE = "ptr"
	If IsString ( $PBUFFER ) Then $SBUFFERTYPE = "wstr"
	Local $ARESULT = DllCall ( "Kernel32.dll" , "dword" , "FormatMessageW" , "dword" , $IFLAGS , "ptr" , $PSOURCE , "dword" , $IMESSAGEID , "dword" , $ILANGUAGEID , $SBUFFERTYPE , $PBUFFER , "dword" , $ISIZE , "ptr" , $VARGUMENTS )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $SBUFFERTYPE = "wstr" Then $PBUFFER = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FRAMERECT ( $HDC , $PTRRECT , $HBRUSH )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "FrameRect" , "handle" , $HDC , "ptr" , $PTRRECT , "handle" , $HBRUSH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_FREELIBRARY ( $HMODULE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "FreeLibrary" , "handle" , $HMODULE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETANCESTOR ( $HWND , $IFLAGS = 1 )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetAncestor" , "hwnd" , $HWND , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETASYNCKEYSTATE ( $IKEY )
	Local $ARESULT = DllCall ( "user32.dll" , "short" , "GetAsyncKeyState" , "int" , $IKEY )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETBKMODE ( $HDC )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetBkMode" , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCLASSNAME ( $HWND )
	If Not IsHWnd ( $HWND ) Then $HWND = GUICtrlGetHandle ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetClassNameW" , "hwnd" , $HWND , "wstr" , "" , "int" , 4096 )
	If @error Then Return SetError ( @error , @extended , False )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_GETCLIENTHEIGHT ( $HWND )
	Local $TRECT = _WINAPI_GETCLIENTRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Bottom" ) - DllStructGetData ( $TRECT , "Top" )
EndFunc
Func _WINAPI_GETCLIENTWIDTH ( $HWND )
	Local $TRECT = _WINAPI_GETCLIENTRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Right" ) - DllStructGetData ( $TRECT , "Left" )
EndFunc
Func _WINAPI_GETCLIENTRECT ( $HWND )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	DllCall ( "user32.dll" , "bool" , "GetClientRect" , "hwnd" , $HWND , "ptr" , DllStructGetPtr ( $TRECT ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $TRECT
EndFunc
Func _WINAPI_GETCURRENTPROCESS ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetCurrentProcess" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTPROCESSID ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetCurrentProcessId" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTTHREAD ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetCurrentThread" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURRENTTHREADID ( )
	Local $ARESULT = DllCall ( "kernel32.dll" , "dword" , "GetCurrentThreadId" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETCURSORINFO ( )
	Local $TCURSOR = DllStructCreate ( $TAGCURSORINFO )
	Local $ICURSOR = DllStructGetSize ( $TCURSOR )
	DllStructSetData ( $TCURSOR , "Size" , $ICURSOR )
	DllCall ( "user32.dll" , "bool" , "GetCursorInfo" , "ptr" , DllStructGetPtr ( $TCURSOR ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $ACURSOR [ 5 ]
	$ACURSOR [ 0 ] = True
	$ACURSOR [ 1 ] = DllStructGetData ( $TCURSOR , "Flags" ) <> 0
	$ACURSOR [ 2 ] = DllStructGetData ( $TCURSOR , "hCursor" )
	$ACURSOR [ 3 ] = DllStructGetData ( $TCURSOR , "X" )
	$ACURSOR [ 4 ] = DllStructGetData ( $TCURSOR , "Y" )
	Return $ACURSOR
EndFunc
Func _WINAPI_GETDC ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetDC" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDESKTOPWINDOW ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetDesktopWindow" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDEVICECAPS ( $HDC , $IINDEX )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetDeviceCaps" , "handle" , $HDC , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDIBITS ( $HDC , $HBMP , $ISTARTSCAN , $ISCANLINES , $PBITS , $PBI , $IUSAGE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetDIBits" , "handle" , $HDC , "handle" , $HBMP , "uint" , $ISTARTSCAN , "uint" , $ISCANLINES , "ptr" , $PBITS , "ptr" , $PBI , "uint" , $IUSAGE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDLGCTRLID ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetDlgCtrlID" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETDLGITEM ( $HWND , $IITEMID )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetDlgItem" , "hwnd" , $HWND , "int" , $IITEMID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETFOCUS ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetFocus" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETFOREGROUNDWINDOW ( )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetForegroundWindow" )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETGUIRESOURCES ( $IFLAG = 0 , $HPROCESS = - 1 )
	If $HPROCESS = - 1 Then $HPROCESS = _WINAPI_GETCURRENTPROCESS ( )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "GetGuiResources" , "handle" , $HPROCESS , "dword" , $IFLAG )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETICONINFO ( $HICON )
	Local $TINFO = DllStructCreate ( $TAGICONINFO )
	DllCall ( "user32.dll" , "bool" , "GetIconInfo" , "handle" , $HICON , "ptr" , DllStructGetPtr ( $TINFO ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $AICON [ 6 ]
	$AICON [ 0 ] = True
	$AICON [ 1 ] = DllStructGetData ( $TINFO , "Icon" ) <> 0
	$AICON [ 2 ] = DllStructGetData ( $TINFO , "XHotSpot" )
	$AICON [ 3 ] = DllStructGetData ( $TINFO , "YHotSpot" )
	$AICON [ 4 ] = DllStructGetData ( $TINFO , "hMask" )
	$AICON [ 5 ] = DllStructGetData ( $TINFO , "hColor" )
	Return $AICON
EndFunc
Func _WINAPI_GETFILESIZEEX ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetFileSizeEx" , "handle" , $HFILE , "int64*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 2 ]
EndFunc
Func _WINAPI_GETLASTERRORMESSAGE ( )
	Local $TBUFFERPTR = DllStructCreate ( "ptr" )
	Local $PBUFFERPTR = DllStructGetPtr ( $TBUFFERPTR )
	Local $NCOUNT = _WINAPI_FORMATMESSAGE ( BitOR ( $__WINAPICONSTANT_FORMAT_MESSAGE_ALLOCATE_BUFFER , $__WINAPICONSTANT_FORMAT_MESSAGE_FROM_SYSTEM ) , 0 , _WINAPI_GETLASTERROR ( ) , 0 , $PBUFFERPTR , 0 , 0 )
	If @error Then Return SetError ( @error , 0 , "" )
	Local $STEXT = ""
	Local $PBUFFER = DllStructGetData ( $TBUFFERPTR , 1 )
	If $PBUFFER Then
		If $NCOUNT > 0 Then
			Local $TBUFFER = DllStructCreate ( "wchar[" & ( $NCOUNT + 1 ) & "]" , $PBUFFER )
			$STEXT = DllStructGetData ( $TBUFFER , 1 )
		EndIf
		_WINAPI_LOCALFREE ( $PBUFFER )
	EndIf
	Return $STEXT
EndFunc
Func _WINAPI_GETLAYEREDWINDOWATTRIBUTES ( $HWND , ByRef $I_TRANSCOLOR , ByRef $TRANSPARENCY , $ASCOLORREF = False )
	$I_TRANSCOLOR = - 1
	$TRANSPARENCY = - 1
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "GetLayeredWindowAttributes" , "hwnd" , $HWND , "dword*" , $I_TRANSCOLOR , "byte*" , $TRANSPARENCY , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If Not $ASCOLORREF Then
		$ARESULT [ 2 ] = Hex ( String ( $ARESULT [ 2 ] ) , 6 )
		$ARESULT [ 2 ] = "0x" & StringMid ( $ARESULT [ 2 ] , 5 , 2 ) & StringMid ( $ARESULT [ 2 ] , 3 , 2 ) & StringMid ( $ARESULT [ 2 ] , 1 , 2 )
	EndIf
	$I_TRANSCOLOR = $ARESULT [ 2 ]
	$TRANSPARENCY = $ARESULT [ 3 ]
	Return $ARESULT [ 4 ]
EndFunc
Func _WINAPI_GETMODULEHANDLE ( $SMODULENAME )
	Local $SMODULENAMETYPE = "wstr"
	If $SMODULENAME = "" Then
		$SMODULENAME = 0
		$SMODULENAMETYPE = "ptr"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetModuleHandleW" , $SMODULENAMETYPE , $SMODULENAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETMOUSEPOS ( $FTOCLIENT = False , $HWND = 0 )
	Local $IMODE = Opt ( "MouseCoordMode" , 1 )
	Local $APOS = MouseGetPos ( )
	Opt ( "MouseCoordMode" , $IMODE )
	Local $TPOINT = DllStructCreate ( $TAGPOINT )
	DllStructSetData ( $TPOINT , "X" , $APOS [ 0 ] )
	DllStructSetData ( $TPOINT , "Y" , $APOS [ 1 ] )
	If $FTOCLIENT Then
		_WINAPI_SCREENTOCLIENT ( $HWND , $TPOINT )
		If @error Then Return SetError ( @error , @extended , 0 )
	EndIf
	Return $TPOINT
EndFunc
Func _WINAPI_GETMOUSEPOSX ( $FTOCLIENT = False , $HWND = 0 )
	Local $TPOINT = _WINAPI_GETMOUSEPOS ( $FTOCLIENT , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TPOINT , "X" )
EndFunc
Func _WINAPI_GETMOUSEPOSY ( $FTOCLIENT = False , $HWND = 0 )
	Local $TPOINT = _WINAPI_GETMOUSEPOS ( $FTOCLIENT , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TPOINT , "Y" )
EndFunc
Func _WINAPI_GETOBJECT ( $HOBJECT , $ISIZE , $POBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "GetObject" , "handle" , $HOBJECT , "int" , $ISIZE , "ptr" , $POBJECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETOPENFILENAME ( $STITLE = "" , $SFILTER = "All files (*.*)" , $SINITALDIR = "." , $SDEFAULTFILE = "" , $SDEFAULTEXT = "" , $IFILTERINDEX = 1 , $IFLAGS = 0 , $IFLAGSEX = 0 , $HWNDOWNER = 0 )
	Local $IPATHLEN = 4096
	Local $INULLS = 0
	Local $TOFN = DllStructCreate ( $TAGOPENFILENAME )
	Local $AFILES [ 1 ] = [ 0 ]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit ( $SFILTER , "|" )
	Local $ASFILTER [ $ASFLINES [ 0 ] * 2 + 1 ]
	Local $ISTART , $IFINAL , $STFILTER
	$ASFILTER [ 0 ] = $ASFLINES [ 0 ] * 2
	For $I = 1 To $ASFLINES [ 0 ]
		$ISTART = StringInStr ( $ASFLINES [ $I ] , "(" , 0 , 1 )
		$IFINAL = StringInStr ( $ASFLINES [ $I ] , ")" , 0 , - 1 )
		$ASFILTER [ $I * 2 - 1 ] = StringStripWS ( StringLeft ( $ASFLINES [ $I ] , $ISTART - 1 ) , 3 )
		$ASFILTER [ $I * 2 ] = StringStripWS ( StringTrimRight ( StringTrimLeft ( $ASFLINES [ $I ] , $ISTART ) , StringLen ( $ASFLINES [ $I ] ) - $IFINAL + 1 ) , 3 )
		$STFILTER &= "wchar[" & StringLen ( $ASFILTER [ $I * 2 - 1 ] ) + 1 & "];wchar[" & StringLen ( $ASFILTER [ $I * 2 ] ) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate ( "wchar Title[" & StringLen ( $STITLE ) + 1 & "]" )
	Local $TINITIALDIR = DllStructCreate ( "wchar InitDir[" & StringLen ( $SINITALDIR ) + 1 & "]" )
	Local $TFILTER = DllStructCreate ( $STFILTER & "wchar" )
	Local $TPATH = DllStructCreate ( "wchar Path[" & $IPATHLEN & "]" )
	Local $TEXTN = DllStructCreate ( "wchar Extension[" & StringLen ( $SDEFAULTEXT ) + 1 & "]" )
	For $I = 1 To $ASFILTER [ 0 ]
		DllStructSetData ( $TFILTER , $I , $ASFILTER [ $I ] )
	Next
	DllStructSetData ( $TTITLE , "Title" , $STITLE )
	DllStructSetData ( $TINITIALDIR , "InitDir" , $SINITALDIR )
	DllStructSetData ( $TPATH , "Path" , $SDEFAULTFILE )
	DllStructSetData ( $TEXTN , "Extension" , $SDEFAULTEXT )
	DllStructSetData ( $TOFN , "StructSize" , DllStructGetSize ( $TOFN ) )
	DllStructSetData ( $TOFN , "hwndOwner" , $HWNDOWNER )
	DllStructSetData ( $TOFN , "lpstrFilter" , DllStructGetPtr ( $TFILTER ) )
	DllStructSetData ( $TOFN , "nFilterIndex" , $IFILTERINDEX )
	DllStructSetData ( $TOFN , "lpstrFile" , DllStructGetPtr ( $TPATH ) )
	DllStructSetData ( $TOFN , "nMaxFile" , $IPATHLEN )
	DllStructSetData ( $TOFN , "lpstrInitialDir" , DllStructGetPtr ( $TINITIALDIR ) )
	DllStructSetData ( $TOFN , "lpstrTitle" , DllStructGetPtr ( $TTITLE ) )
	DllStructSetData ( $TOFN , "Flags" , $IFLAG )
	DllStructSetData ( $TOFN , "lpstrDefExt" , DllStructGetPtr ( $TEXTN ) )
	DllStructSetData ( $TOFN , "FlagsEx" , $IFLAGSEX )
	DllCall ( "comdlg32.dll" , "bool" , "GetOpenFileNameW" , "ptr" , DllStructGetPtr ( $TOFN ) )
	If @error Then Return SetError ( @error , @extended , $AFILES )
	If BitAND ( $IFLAGS , $OFN_ALLOWMULTISELECT ) = $OFN_ALLOWMULTISELECT And BitAND ( $IFLAGS , $OFN_EXPLORER ) = $OFN_EXPLORER Then
		For $X = 1 To $IPATHLEN
			If DllStructGetData ( $TPATH , "Path" , $X ) = Chr ( 0 ) Then
				DllStructSetData ( $TPATH , "Path" , "|" , $X )
				$INULLS += 1
			Else
				$INULLS = 0
			EndIf
			If $INULLS = 2 Then ExitLoop
		Next
		DllStructSetData ( $TPATH , "Path" , Chr ( 0 ) , $X - 1 )
		$AFILES = StringSplit ( DllStructGetData ( $TPATH , "Path" ) , "|" )
		If $AFILES [ 0 ] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
		Return StringSplit ( DllStructGetData ( $TPATH , "Path" ) , "|" )
	ElseIf BitAND ( $IFLAGS , $OFN_ALLOWMULTISELECT ) = $OFN_ALLOWMULTISELECT Then
		$AFILES = StringSplit ( DllStructGetData ( $TPATH , "Path" ) , " " )
		If $AFILES [ 0 ] = 1 Then Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
		Return StringSplit ( StringReplace ( DllStructGetData ( $TPATH , "Path" ) , " " , "|" ) , "|" )
	Else
		Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
	EndIf
EndFunc
Func _WINAPI_GETOVERLAPPEDRESULT ( $HFILE , $POVERLAPPED , ByRef $IBYTES , $FWAIT = False )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetOverlappedResult" , "handle" , $HFILE , "ptr" , $POVERLAPPED , "dword*" , 0 , "bool" , $FWAIT )
	If @error Then Return SetError ( @error , @extended , False )
	$IBYTES = $ARESULT [ 3 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETPARENT ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetParent" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETPROCESSAFFINITYMASK ( $HPROCESS )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GetProcessAffinityMask" , "handle" , $HPROCESS , "dword_ptr*" , 0 , "dword_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $AMASK [ 3 ]
	$AMASK [ 0 ] = True
	$AMASK [ 1 ] = $ARESULT [ 2 ]
	$AMASK [ 2 ] = $ARESULT [ 3 ]
	Return $AMASK
EndFunc
Func _WINAPI_GETSAVEFILENAME ( $STITLE = "" , $SFILTER = "All files (*.*)" , $SINITALDIR = "." , $SDEFAULTFILE = "" , $SDEFAULTEXT = "" , $IFILTERINDEX = 1 , $IFLAGS = 0 , $IFLAGSEX = 0 , $HWNDOWNER = 0 )
	Local $IPATHLEN = 4096
	Local $TOFN = DllStructCreate ( $TAGOPENFILENAME )
	Local $AFILES [ 1 ] = [ 0 ]
	Local $IFLAG = $IFLAGS
	Local $ASFLINES = StringSplit ( $SFILTER , "|" )
	Local $ASFILTER [ $ASFLINES [ 0 ] * 2 + 1 ]
	Local $ISTART , $IFINAL , $STFILTER
	$ASFILTER [ 0 ] = $ASFLINES [ 0 ] * 2
	For $I = 1 To $ASFLINES [ 0 ]
		$ISTART = StringInStr ( $ASFLINES [ $I ] , "(" , 0 , 1 )
		$IFINAL = StringInStr ( $ASFLINES [ $I ] , ")" , 0 , - 1 )
		$ASFILTER [ $I * 2 - 1 ] = StringStripWS ( StringLeft ( $ASFLINES [ $I ] , $ISTART - 1 ) , 3 )
		$ASFILTER [ $I * 2 ] = StringStripWS ( StringTrimRight ( StringTrimLeft ( $ASFLINES [ $I ] , $ISTART ) , StringLen ( $ASFLINES [ $I ] ) - $IFINAL + 1 ) , 3 )
		$STFILTER &= "wchar[" & StringLen ( $ASFILTER [ $I * 2 - 1 ] ) + 1 & "];wchar[" & StringLen ( $ASFILTER [ $I * 2 ] ) + 1 & "];"
	Next
	Local $TTITLE = DllStructCreate ( "wchar Title[" & StringLen ( $STITLE ) + 1 & "]" )
	Local $TINITIALDIR = DllStructCreate ( "wchar InitDir[" & StringLen ( $SINITALDIR ) + 1 & "]" )
	Local $TFILTER = DllStructCreate ( $STFILTER & "wchar" )
	Local $TPATH = DllStructCreate ( "wchar Path[" & $IPATHLEN & "]" )
	Local $TEXTN = DllStructCreate ( "wchar Extension[" & StringLen ( $SDEFAULTEXT ) + 1 & "]" )
	For $I = 1 To $ASFILTER [ 0 ]
		DllStructSetData ( $TFILTER , $I , $ASFILTER [ $I ] )
	Next
	DllStructSetData ( $TTITLE , "Title" , $STITLE )
	DllStructSetData ( $TINITIALDIR , "InitDir" , $SINITALDIR )
	DllStructSetData ( $TPATH , "Path" , $SDEFAULTFILE )
	DllStructSetData ( $TEXTN , "Extension" , $SDEFAULTEXT )
	DllStructSetData ( $TOFN , "StructSize" , DllStructGetSize ( $TOFN ) )
	DllStructSetData ( $TOFN , "hwndOwner" , $HWNDOWNER )
	DllStructSetData ( $TOFN , "lpstrFilter" , DllStructGetPtr ( $TFILTER ) )
	DllStructSetData ( $TOFN , "nFilterIndex" , $IFILTERINDEX )
	DllStructSetData ( $TOFN , "lpstrFile" , DllStructGetPtr ( $TPATH ) )
	DllStructSetData ( $TOFN , "nMaxFile" , $IPATHLEN )
	DllStructSetData ( $TOFN , "lpstrInitialDir" , DllStructGetPtr ( $TINITIALDIR ) )
	DllStructSetData ( $TOFN , "lpstrTitle" , DllStructGetPtr ( $TTITLE ) )
	DllStructSetData ( $TOFN , "Flags" , $IFLAG )
	DllStructSetData ( $TOFN , "lpstrDefExt" , DllStructGetPtr ( $TEXTN ) )
	DllStructSetData ( $TOFN , "FlagsEx" , $IFLAGSEX )
	DllCall ( "comdlg32.dll" , "bool" , "GetSaveFileNameW" , "ptr" , DllStructGetPtr ( $TOFN ) )
	If @error Then Return SetError ( @error , @extended , $AFILES )
	Return __WINAPI_PARSEFILEDIALOGPATH ( DllStructGetData ( $TPATH , "Path" ) )
EndFunc
Func _WINAPI_GETSTOCKOBJECT ( $IOBJECT )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "GetStockObject" , "int" , $IOBJECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSTDHANDLE ( $ISTDHANDLE )
	If $ISTDHANDLE < 0 Or $ISTDHANDLE > 2 Then Return SetError ( 2 , 0 , - 1 )
	Local Const $AHANDLE [ 3 ] = [ - 10 , - 11 , - 12 ]
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GetStdHandle" , "dword" , $AHANDLE [ $ISTDHANDLE ] )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSCOLOR ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "GetSysColor" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSCOLORBRUSH ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetSysColorBrush" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETSYSTEMMETRICS ( $IINDEX )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetSystemMetrics" , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETTEXTEXTENTPOINT32 ( $HDC , $STEXT )
	Local $TSIZE = DllStructCreate ( $TAGSIZE )
	Local $ISIZE = StringLen ( $STEXT )
	DllCall ( "gdi32.dll" , "bool" , "GetTextExtentPoint32W" , "handle" , $HDC , "wstr" , $STEXT , "int" , $ISIZE , "ptr" , DllStructGetPtr ( $TSIZE ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $TSIZE
EndFunc
Func _WINAPI_GETWINDOW ( $HWND , $ICMD )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "GetWindow" , "hwnd" , $HWND , "uint" , $ICMD )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWDC ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "GetWindowDC" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWHEIGHT ( $HWND )
	Local $TRECT = _WINAPI_GETWINDOWRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Bottom" ) - DllStructGetData ( $TRECT , "Top" )
EndFunc
Func _WINAPI_GETWINDOWLONG ( $HWND , $IINDEX )
	Local $SFUNCNAME = "GetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "GetWindowLongPtrW"
	Local $ARESULT = DllCall ( "user32.dll" , "long_ptr" , $SFUNCNAME , "hwnd" , $HWND , "int" , $IINDEX )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWPLACEMENT ( $HWND )
	Local $TWINDOWPLACEMENT = DllStructCreate ( $TAGWINDOWPLACEMENT )
	DllStructSetData ( $TWINDOWPLACEMENT , "length" , DllStructGetSize ( $TWINDOWPLACEMENT ) )
	Local $PWINDOWPLACEMENT = DllStructGetPtr ( $TWINDOWPLACEMENT )
	DllCall ( "user32.dll" , "bool" , "GetWindowPlacement" , "hwnd" , $HWND , "ptr" , $PWINDOWPLACEMENT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $TWINDOWPLACEMENT
EndFunc
Func _WINAPI_GETWINDOWRECT ( $HWND )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	DllCall ( "user32.dll" , "bool" , "GetWindowRect" , "hwnd" , $HWND , "ptr" , DllStructGetPtr ( $TRECT ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $TRECT
EndFunc
Func _WINAPI_GETWINDOWRGN ( $HWND , $HRGN )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetWindowRgn" , "hwnd" , $HWND , "handle" , $HRGN )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWTEXT ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "GetWindowTextW" , "hwnd" , $HWND , "wstr" , "" , "int" , 4096 )
	If @error Then Return SetError ( @error , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_GETWINDOWTHREADPROCESSID ( $HWND , ByRef $IPID )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "GetWindowThreadProcessId" , "hwnd" , $HWND , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	$IPID = $ARESULT [ 2 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_GETWINDOWWIDTH ( $HWND )
	Local $TRECT = _WINAPI_GETWINDOWRECT ( $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return DllStructGetData ( $TRECT , "Right" ) - DllStructGetData ( $TRECT , "Left" )
EndFunc
Func _WINAPI_GETXYFROMPOINT ( ByRef $TPOINT , ByRef $IX , ByRef $IY )
	$IX = DllStructGetData ( $TPOINT , "X" )
	$IY = DllStructGetData ( $TPOINT , "Y" )
EndFunc
Func _WINAPI_GLOBALMEMORYSTATUS ( )
	Local $TMEM = DllStructCreate ( $TAGMEMORYSTATUSEX )
	Local $PMEM = DllStructGetPtr ( $TMEM )
	Local $IMEM = DllStructGetSize ( $TMEM )
	DllStructSetData ( $TMEM , 1 , $IMEM )
	DllCall ( "kernel32.dll" , "none" , "GlobalMemoryStatusEx" , "ptr" , $PMEM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $AMEM [ 7 ]
	$AMEM [ 0 ] = DllStructGetData ( $TMEM , 2 )
	$AMEM [ 1 ] = DllStructGetData ( $TMEM , 3 )
	$AMEM [ 2 ] = DllStructGetData ( $TMEM , 4 )
	$AMEM [ 3 ] = DllStructGetData ( $TMEM , 5 )
	$AMEM [ 4 ] = DllStructGetData ( $TMEM , 6 )
	$AMEM [ 5 ] = DllStructGetData ( $TMEM , 7 )
	$AMEM [ 6 ] = DllStructGetData ( $TMEM , 8 )
	Return $AMEM
EndFunc
Func _WINAPI_GUIDFROMSTRING ( $SGUID )
	Local $TGUID = DllStructCreate ( $TAGGUID )
	_WINAPI_GUIDFROMSTRINGEX ( $SGUID , DllStructGetPtr ( $TGUID ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $TGUID
EndFunc
Func _WINAPI_GUIDFROMSTRINGEX ( $SGUID , $PGUID )
	Local $ARESULT = DllCall ( "ole32.dll" , "long" , "CLSIDFromString" , "wstr" , $SGUID , "ptr" , $PGUID )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_HIWORD ( $ILONG )
	Return BitShift ( $ILONG , 16 )
EndFunc
Func _WINAPI_INPROCESS ( $HWND , ByRef $HLASTWND )
	If $HWND = $HLASTWND Then Return True
	For $II = $__GAINPROCESS_WINAPI [ 0 ] [ 0 ] To 1 Step - 1
		If $HWND = $__GAINPROCESS_WINAPI [ $II ] [ 0 ] Then
			If $__GAINPROCESS_WINAPI [ $II ] [ 1 ] Then
				$HLASTWND = $HWND
				Return True
			Else
				Return False
			EndIf
		EndIf
	Next
	Local $IPROCESSID
	_WINAPI_GETWINDOWTHREADPROCESSID ( $HWND , $IPROCESSID )
	Local $ICOUNT = $__GAINPROCESS_WINAPI [ 0 ] [ 0 ] + 1
	If $ICOUNT >= 64 Then $ICOUNT = 1
	$__GAINPROCESS_WINAPI [ 0 ] [ 0 ] = $ICOUNT
	$__GAINPROCESS_WINAPI [ $ICOUNT ] [ 0 ] = $HWND
	$__GAINPROCESS_WINAPI [ $ICOUNT ] [ 1 ] = ( $IPROCESSID = @AutoItPID )
	Return $__GAINPROCESS_WINAPI [ $ICOUNT ] [ 1 ]
EndFunc
Func _WINAPI_INTTOFLOAT ( $IINT )
	Local $TINT = DllStructCreate ( "int" )
	Local $TFLOAT = DllStructCreate ( "float" , DllStructGetPtr ( $TINT ) )
	DllStructSetData ( $TINT , 1 , $IINT )
	Return DllStructGetData ( $TFLOAT , 1 )
EndFunc
Func _WINAPI_ISCLASSNAME ( $HWND , $SCLASSNAME )
	Local $SSEPARATOR = Opt ( "GUIDataSeparatorChar" )
	Local $ACLASSNAME = StringSplit ( $SCLASSNAME , $SSEPARATOR )
	If Not IsHWnd ( $HWND ) Then $HWND = GUICtrlGetHandle ( $HWND )
	Local $SCLASSCHECK = _WINAPI_GETCLASSNAME ( $HWND )
	For $X = 1 To UBound ( $ACLASSNAME ) - 1
		If StringUpper ( StringMid ( $SCLASSCHECK , 1 , StringLen ( $ACLASSNAME [ $X ] ) ) ) = StringUpper ( $ACLASSNAME [ $X ] ) Then Return True
	Next
	Return False
EndFunc
Func _WINAPI_ISWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "IsWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_ISWINDOWVISIBLE ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "IsWindowVisible" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_INVALIDATERECT ( $HWND , $TRECT = 0 , $FERASE = True )
	Local $PRECT = 0
	If IsDllStruct ( $TRECT ) Then $PRECT = DllStructGetPtr ( $TRECT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "InvalidateRect" , "hwnd" , $HWND , "ptr" , $PRECT , "bool" , $FERASE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LINETO ( $HDC , $IX , $IY )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "LineTo" , "handle" , $HDC , "int" , $IX , "int" , $IY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADBITMAP ( $HINSTANCE , $SBITMAP )
	Local $SBITMAPTYPE = "int"
	If IsString ( $SBITMAP ) Then $SBITMAPTYPE = "wstr"
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "LoadBitmapW" , "handle" , $HINSTANCE , $SBITMAPTYPE , $SBITMAP )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADIMAGE ( $HINSTANCE , $SIMAGE , $ITYPE , $IXDESIRED , $IYDESIRED , $ILOAD )
	Local $ARESULT , $SIMAGETYPE = "int"
	If IsString ( $SIMAGE ) Then $SIMAGETYPE = "wstr"
	$ARESULT = DllCall ( "user32.dll" , "handle" , "LoadImageW" , "handle" , $HINSTANCE , $SIMAGETYPE , $SIMAGE , "uint" , $ITYPE , "int" , $IXDESIRED , "int" , $IYDESIRED , "uint" , $ILOAD )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADLIBRARY ( $SFILENAME )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LoadLibraryW" , "wstr" , $SFILENAME )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADLIBRARYEX ( $SFILENAME , $IFLAGS = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LoadLibraryExW" , "wstr" , $SFILENAME , "ptr" , 0 , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOADSHELL32ICON ( $IICONID )
	Local $TICONS = DllStructCreate ( "ptr Data" )
	Local $PICONS = DllStructGetPtr ( $TICONS )
	Local $IICONS = _WINAPI_EXTRACTICONEX ( "shell32.dll" , $IICONID , 0 , $PICONS , 1 )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $IICONS <= 0 Then Return SetError ( 1 , 0 , 0 )
	Return DllStructGetData ( $TICONS , "Data" )
EndFunc
Func _WINAPI_LOADSTRING ( $HINSTANCE , $ISTRINGID )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "LoadStringW" , "handle" , $HINSTANCE , "uint" , $ISTRINGID , "wstr" , "" , "int" , 4096 )
	If @error Then Return SetError ( @error , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _WINAPI_LOCALFREE ( $HMEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "LocalFree" , "handle" , $HMEM )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_LOWORD ( $ILONG )
	Return BitAND ( $ILONG , 65535 )
EndFunc
Func _WINAPI_MAKELANGID ( $LGIDPRIMARY , $LGIDSUB )
	Return BitOR ( BitShift ( $LGIDSUB , - 10 ) , $LGIDPRIMARY )
EndFunc
Func _WINAPI_MAKELCID ( $LGID , $SRTID )
	Return BitOR ( BitShift ( $SRTID , - 16 ) , $LGID )
EndFunc
Func _WINAPI_MAKELONG ( $ILO , $IHI )
	Return BitOR ( BitShift ( $IHI , - 16 ) , BitAND ( $ILO , 65535 ) )
EndFunc
Func _WINAPI_MAKEQWORD ( $LODWORD , $HIDWORD )
	Local $TINT64 = DllStructCreate ( "uint64" )
	Local $TDWORDS = DllStructCreate ( "dword;dword" , DllStructGetPtr ( $TINT64 ) )
	DllStructSetData ( $TDWORDS , 1 , $LODWORD )
	DllStructSetData ( $TDWORDS , 2 , $HIDWORD )
	Return DllStructGetData ( $TINT64 , 1 )
EndFunc
Func _WINAPI_MESSAGEBEEP ( $ITYPE = 1 )
	Local $ISOUND
	Switch $ITYPE
	Case 1
		$ISOUND = 0
	Case 2
		$ISOUND = 16
	Case 3
		$ISOUND = 32
	Case 4
		$ISOUND = 48
	Case 5
		$ISOUND = 64
Case Else
		$ISOUND = - 1
	EndSwitch
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "MessageBeep" , "uint" , $ISOUND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MSGBOX ( $IFLAGS , $STITLE , $STEXT )
	BlockInput ( 0 )
	MsgBox ( $IFLAGS , $STITLE , $STEXT & "      " )
EndFunc
Func _WINAPI_MOUSE_EVENT ( $IFLAGS , $IX = 0 , $IY = 0 , $IDATA = 0 , $IEXTRAINFO = 0 )
	DllCall ( "user32.dll" , "none" , "mouse_event" , "dword" , $IFLAGS , "dword" , $IX , "dword" , $IY , "dword" , $IDATA , "ulong_ptr" , $IEXTRAINFO )
	If @error Then Return SetError ( @error , @extended )
EndFunc
Func _WINAPI_MOVETO ( $HDC , $IX , $IY )
	Local $ARESULT = DllCall ( "gdi32.dll" , "bool" , "MoveToEx" , "handle" , $HDC , "int" , $IX , "int" , $IY , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MOVEWINDOW ( $HWND , $IX , $IY , $IWIDTH , $IHEIGHT , $FREPAINT = True )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "MoveWindow" , "hwnd" , $HWND , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "bool" , $FREPAINT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MULDIV ( $INUMBER , $INUMERATOR , $IDENOMINATOR )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MulDiv" , "int" , $INUMBER , "int" , $INUMERATOR , "int" , $IDENOMINATOR )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_MULTIBYTETOWIDECHAR ( $STEXT , $ICODEPAGE = 0 , $IFLAGS = 0 , $BRETSTRING = False )
	Local $STEXTTYPE = "ptr" , $PTEXT = $STEXT
	If IsDllStruct ( $STEXT ) Then
		$PTEXT = DllStructGetPtr ( $STEXT )
	Else
		If Not IsPtr ( $STEXT ) Then $STEXTTYPE = "STR"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , $STEXTTYPE , $PTEXT , "int" , - 1 , "ptr" , 0 , "int" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $IOUT = $ARESULT [ 0 ]
	Local $TOUT = DllStructCreate ( "wchar[" & $IOUT & "]" )
	Local $POUT = DllStructGetPtr ( $TOUT )
	$ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , $STEXTTYPE , $PTEXT , "int" , - 1 , "ptr" , $POUT , "int" , $IOUT )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $BRETSTRING Then Return DllStructGetData ( $TOUT , 1 )
	Return $TOUT
EndFunc
Func _WINAPI_MULTIBYTETOWIDECHAREX ( $STEXT , $PTEXT , $ICODEPAGE = 0 , $IFLAGS = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "MultiByteToWideChar" , "uint" , $ICODEPAGE , "dword" , $IFLAGS , "STR" , $STEXT , "int" , - 1 , "ptr" , $PTEXT , "int" , ( StringLen ( $STEXT ) + 1 ) * 2 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_OPENPROCESS ( $IACCESS , $FINHERIT , $IPROCESSID , $FDEBUGPRIV = False )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $FINHERIT , "dword" , $IPROCESSID )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $ARESULT [ 0 ] Then Return $ARESULT [ 0 ]
	If Not $FDEBUGPRIV Then Return 0
	Local $HTOKEN = _SECURITY__OPENTHREADTOKENEX ( BitOR ( $TOKEN_ADJUST_PRIVILEGES , $TOKEN_QUERY ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , True )
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0
	If Not @error Then
		$ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $FINHERIT , "dword" , $IPROCESSID )
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT [ 0 ] Then $IRET = $ARESULT [ 0 ]
		_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , False )
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	_WINAPI_CLOSEHANDLE ( $HTOKEN )
	Return SetError ( $IERROR , $ILASTERROR , $IRET )
EndFunc
Func __WINAPI_PARSEFILEDIALOGPATH ( $SPATH )
	Local $AFILES [ 3 ]
	$AFILES [ 0 ] = 2
	Local $STEMP = StringMid ( $SPATH , 1 , StringInStr ( $SPATH , "\" , 0 , - 1 ) - 1 )
	$AFILES [ 1 ] = $STEMP
	$AFILES [ 2 ] = StringMid ( $SPATH , StringInStr ( $SPATH , "\" , 0 , - 1 ) + 1 )
	Return $AFILES
EndFunc
Func _WINAPI_PATHFINDONPATH ( Const $SZFILE , $AEXTRAPATHS = "" , Const $SZPATHDELIMITER = @LF )
	Local $IEXTRACOUNT = 0
	If IsString ( $AEXTRAPATHS ) Then
		If StringLen ( $AEXTRAPATHS ) Then
			$AEXTRAPATHS = StringSplit ( $AEXTRAPATHS , $SZPATHDELIMITER , 1 + 2 )
			$IEXTRACOUNT = UBound ( $AEXTRAPATHS , 1 )
		EndIf
	ElseIf IsArray ( $AEXTRAPATHS ) Then
		$IEXTRACOUNT = UBound ( $AEXTRAPATHS )
	EndIf
	Local $TPATHS , $TPATHPTRS
	If $IEXTRACOUNT Then
		Local $SZSTRUCT = ""
		For $PATH In $AEXTRAPATHS
			$SZSTRUCT &= "wchar[" & StringLen ( $PATH ) + 1 & "];"
		Next
		$TPATHS = DllStructCreate ( $SZSTRUCT )
		$TPATHPTRS = DllStructCreate ( "ptr[" & $IEXTRACOUNT + 1 & "]" )
		For $I = 1 To $IEXTRACOUNT
			DllStructSetData ( $TPATHS , $I , $AEXTRAPATHS [ $I - 1 ] )
			DllStructSetData ( $TPATHPTRS , 1 , DllStructGetPtr ( $TPATHS , $I ) , $I )
		Next
		DllStructSetData ( $TPATHPTRS , 1 , Ptr ( 0 ) , $IEXTRACOUNT + 1 )
	EndIf
	Local $ARESULT = DllCall ( "shlwapi.dll" , "bool" , "PathFindOnPathW" , "wstr" , $SZFILE , "ptr" , DllStructGetPtr ( $TPATHPTRS ) )
	If @error Then Return SetError ( @error , @extended , False )
	If $ARESULT [ 0 ] = 0 Then Return SetError ( 1 , 0 , $SZFILE )
	Return $ARESULT [ 1 ]
EndFunc
Func _WINAPI_POINTFROMRECT ( ByRef $TRECT , $FCENTER = True )
	Local $IX1 = DllStructGetData ( $TRECT , "Left" )
	Local $IY1 = DllStructGetData ( $TRECT , "Top" )
	Local $IX2 = DllStructGetData ( $TRECT , "Right" )
	Local $IY2 = DllStructGetData ( $TRECT , "Bottom" )
	If $FCENTER Then
		$IX1 = $IX1 + ( ( $IX2 - $IX1 ) / 2 )
		$IY1 = $IY1 + ( ( $IY2 - $IY1 ) / 2 )
	EndIf
	Local $TPOINT = DllStructCreate ( $TAGPOINT )
	DllStructSetData ( $TPOINT , "X" , $IX1 )
	DllStructSetData ( $TPOINT , "Y" , $IY1 )
	Return $TPOINT
EndFunc
Func _WINAPI_POSTMESSAGE ( $HWND , $IMSG , $IWPARAM , $ILPARAM )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "PostMessage" , "hwnd" , $HWND , "uint" , $IMSG , "wparam" , $IWPARAM , "lparam" , $ILPARAM )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_PRIMARYLANGID ( $LGID )
	Return BitAND ( $LGID , 1023 )
EndFunc
Func _WINAPI_PTINRECT ( ByRef $TRECT , ByRef $TPOINT )
	Local $IX = DllStructGetData ( $TPOINT , "X" )
	Local $IY = DllStructGetData ( $TPOINT , "Y" )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "PtInRect" , "ptr" , DllStructGetPtr ( $TRECT ) , "long" , $IX , "long" , $IY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_READFILE ( $HFILE , $PBUFFER , $ITOREAD , ByRef $IREAD , $POVERLAPPED = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "ReadFile" , "handle" , $HFILE , "ptr" , $PBUFFER , "dword" , $ITOREAD , "dword*" , 0 , "ptr" , $POVERLAPPED )
	If @error Then Return SetError ( @error , @extended , False )
	$IREAD = $ARESULT [ 4 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_READPROCESSMEMORY ( $HPROCESS , $PBASEADDRESS , $PBUFFER , $ISIZE , ByRef $IREAD )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "ReadProcessMemory" , "handle" , $HPROCESS , "ptr" , $PBASEADDRESS , "ptr" , $PBUFFER , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	$IREAD = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RECTISEMPTY ( ByRef $TRECT )
	Return ( DllStructGetData ( $TRECT , "Left" ) = 0 ) And ( DllStructGetData ( $TRECT , "Top" ) = 0 ) And ( DllStructGetData ( $TRECT , "Right" ) = 0 ) And ( DllStructGetData ( $TRECT , "Bottom" ) = 0 )
EndFunc
Func _WINAPI_REDRAWWINDOW ( $HWND , $TRECT = 0 , $HREGION = 0 , $IFLAGS = 5 )
	Local $PRECT = 0
	If $TRECT <> 0 Then $PRECT = DllStructGetPtr ( $TRECT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "RedrawWindow" , "hwnd" , $HWND , "ptr" , $PRECT , "handle" , $HREGION , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_REGISTERWINDOWMESSAGE ( $SMESSAGE )
	Local $ARESULT = DllCall ( "user32.dll" , "uint" , "RegisterWindowMessageW" , "wstr" , $SMESSAGE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RELEASECAPTURE ( )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ReleaseCapture" )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_RELEASEDC ( $HWND , $HDC )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "ReleaseDC" , "hwnd" , $HWND , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SCREENTOCLIENT ( $HWND , ByRef $TPOINT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ScreenToClient" , "hwnd" , $HWND , "ptr" , DllStructGetPtr ( $TPOINT ) )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SELECTOBJECT ( $HDC , $HGDIOBJ )
	Local $ARESULT = DllCall ( "gdi32.dll" , "handle" , "SelectObject" , "handle" , $HDC , "handle" , $HGDIOBJ )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETBKCOLOR ( $HDC , $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "INT" , "SetBkColor" , "handle" , $HDC , "dword" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETBKMODE ( $HDC , $IBKMODE )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "SetBkMode" , "handle" , $HDC , "int" , $IBKMODE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETCAPTURE ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetCapture" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETCURSOR ( $HCURSOR )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "SetCursor" , "handle" , $HCURSOR )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETDEFAULTPRINTER ( $SPRINTER )
	Local $ARESULT = DllCall ( "winspool.drv" , "bool" , "SetDefaultPrinterW" , "wstr" , $SPRINTER )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETDIBITS ( $HDC , $HBMP , $ISTARTSCAN , $ISCANLINES , $PBITS , $PBMI , $ICOLORUSE = 0 )
	Local $ARESULT = DllCall ( "gdi32.dll" , "int" , "SetDIBits" , "handle" , $HDC , "handle" , $HBMP , "uint" , $ISTARTSCAN , "uint" , $ISCANLINES , "ptr" , $PBITS , "ptr" , $PBMI , "uint" , $ICOLORUSE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETENDOFFILE ( $HFILE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetEndOfFile" , "handle" , $HFILE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETEVENT ( $HEVENT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetEvent" , "handle" , $HEVENT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFILEPOINTER ( $HFILE , $IPOS , $IMETHOD = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "SetFilePointer" , "handle" , $HFILE , "long" , $IPOS , "ptr" , 0 , "long" , $IMETHOD )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFOCUS ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetFocus" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETFONT ( $HWND , $HFONT , $FREDRAW = True )
	_SENDMESSAGE ( $HWND , $__WINAPICONSTANT_WM_SETFONT , $HFONT , $FREDRAW , 0 , "hwnd" )
EndFunc
Func _WINAPI_SETHANDLEINFORMATION ( $HOBJECT , $IMASK , $IFLAGS )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetHandleInformation" , "handle" , $HOBJECT , "dword" , $IMASK , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETLAYEREDWINDOWATTRIBUTES ( $HWND , $I_TRANSCOLOR , $TRANSPARENCY = 255 , $DWFLAGS = 3 , $ISCOLORREF = False )
	If $DWFLAGS = Default Or $DWFLAGS = "" Or $DWFLAGS < 0 Then $DWFLAGS = 3
	If Not $ISCOLORREF Then
		$I_TRANSCOLOR = Hex ( String ( $I_TRANSCOLOR ) , 6 )
		$I_TRANSCOLOR = Execute ( "0x00" & StringMid ( $I_TRANSCOLOR , 5 , 2 ) & StringMid ( $I_TRANSCOLOR , 3 , 2 ) & StringMid ( $I_TRANSCOLOR , 1 , 2 ) )
	EndIf
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetLayeredWindowAttributes" , "hwnd" , $HWND , "dword" , $I_TRANSCOLOR , "byte" , $TRANSPARENCY , "dword" , $DWFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETPARENT ( $HWNDCHILD , $HWNDPARENT )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "SetParent" , "hwnd" , $HWNDCHILD , "hwnd" , $HWNDPARENT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETPROCESSAFFINITYMASK ( $HPROCESS , $IMASK )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "SetProcessAffinityMask" , "handle" , $HPROCESS , "ulong_ptr" , $IMASK )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETSYSCOLORS ( $VELEMENTS , $VCOLORS )
	Local $ISEARRAY = IsArray ( $VELEMENTS ) , $ISCARRAY = IsArray ( $VCOLORS )
	Local $IELEMENTNUM
	If Not $ISCARRAY And Not $ISEARRAY Then
		$IELEMENTNUM = 1
	ElseIf $ISCARRAY Or $ISEARRAY Then
		If Not $ISCARRAY Or Not $ISEARRAY Then Return SetError ( - 1 , - 1 , False )
		If UBound ( $VELEMENTS ) <> UBound ( $VCOLORS ) Then Return SetError ( - 1 , - 1 , False )
		$IELEMENTNUM = UBound ( $VELEMENTS )
	EndIf
	Local $TELEMENTS = DllStructCreate ( "int Element[" & $IELEMENTNUM & "]" )
	Local $TCOLORS = DllStructCreate ( "dword NewColor[" & $IELEMENTNUM & "]" )
	Local $PELEMENTS = DllStructGetPtr ( $TELEMENTS )
	Local $PCOLORS = DllStructGetPtr ( $TCOLORS )
	If Not $ISEARRAY Then
		DllStructSetData ( $TELEMENTS , "Element" , $VELEMENTS , 1 )
	Else
		For $X = 0 To $IELEMENTNUM - 1
			DllStructSetData ( $TELEMENTS , "Element" , $VELEMENTS [ $X ] , $X + 1 )
		Next
	EndIf
	If Not $ISCARRAY Then
		DllStructSetData ( $TCOLORS , "NewColor" , $VCOLORS , 1 )
	Else
		For $X = 0 To $IELEMENTNUM - 1
			DllStructSetData ( $TCOLORS , "NewColor" , $VCOLORS [ $X ] , $X + 1 )
		Next
	EndIf
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetSysColors" , "int" , $IELEMENTNUM , "ptr" , $PELEMENTS , "ptr" , $PCOLORS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETTEXTCOLOR ( $HDC , $ICOLOR )
	Local $ARESULT = DllCall ( "gdi32.dll" , "INT" , "SetTextColor" , "handle" , $HDC , "dword" , $ICOLOR )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWLONG ( $HWND , $IINDEX , $IVALUE )
	_WINAPI_SETLASTERROR ( 0 )
	Local $SFUNCNAME = "SetWindowLongW"
	If @AutoItX64 Then $SFUNCNAME = "SetWindowLongPtrW"
	Local $ARESULT = DllCall ( "user32.dll" , "long_ptr" , $SFUNCNAME , "hwnd" , $HWND , "int" , $IINDEX , "long_ptr" , $IVALUE )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWPLACEMENT ( $HWND , $PWINDOWPLACEMENT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowPlacement" , "hwnd" , $HWND , "ptr" , $PWINDOWPLACEMENT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWPOS ( $HWND , $HAFTER , $IX , $IY , $ICX , $ICY , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowPos" , "hwnd" , $HWND , "hwnd" , $HAFTER , "int" , $IX , "int" , $IY , "int" , $ICX , "int" , $ICY , "uint" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWRGN ( $HWND , $HRGN , $BREDRAW = True )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "SetWindowRgn" , "hwnd" , $HWND , "handle" , $HRGN , "bool" , $BREDRAW )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWSHOOKEX ( $IDHOOK , $LPFN , $HMOD , $DWTHREADID = 0 )
	Local $ARESULT = DllCall ( "user32.dll" , "handle" , "SetWindowsHookEx" , "int" , $IDHOOK , "ptr" , $LPFN , "handle" , $HMOD , "dword" , $DWTHREADID )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SETWINDOWTEXT ( $HWND , $STEXT )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SetWindowTextW" , "hwnd" , $HWND , "wstr" , $STEXT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SHOWCURSOR ( $FSHOW )
	Local $ARESULT = DllCall ( "user32.dll" , "int" , "ShowCursor" , "bool" , $FSHOW )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_SHOWERROR ( $STEXT , $FEXIT = True )
	_WINAPI_MSGBOX ( 266256 , "Error" , $STEXT )
	If $FEXIT Then Exit
EndFunc
Func _WINAPI_SHOWMSG ( $STEXT )
	_WINAPI_MSGBOX ( 64 + 4096 , "Information" , $STEXT )
EndFunc
Func _WINAPI_SHOWWINDOW ( $HWND , $ICMDSHOW = 5 )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "ShowWindow" , "hwnd" , $HWND , "int" , $ICMDSHOW )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_STRINGFROMGUID ( $PGUID )
	Local $ARESULT = DllCall ( "ole32.dll" , "int" , "StringFromGUID2" , "ptr" , $PGUID , "wstr" , "" , "int" , 40 )
	If @error Then Return SetError ( @error , @extended , "" )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _WINAPI_SUBLANGID ( $LGID )
	Return BitShift ( $LGID , 10 )
EndFunc
Func _WINAPI_SYSTEMPARAMETERSINFO ( $IACTION , $IPARAM = 0 , $VPARAM = 0 , $IWININI = 0 )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "SystemParametersInfoW" , "uint" , $IACTION , "uint" , $IPARAM , "ptr" , $VPARAM , "uint" , $IWININI )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_TWIPSPERPIXELX ( )
	Local $LNGDC , $TWIPSPERPIXELX
	$LNGDC = _WINAPI_GETDC ( 0 )
	$TWIPSPERPIXELX = 1440 / _WINAPI_GETDEVICECAPS ( $LNGDC , $__WINAPICONSTANT_LOGPIXELSX )
	_WINAPI_RELEASEDC ( 0 , $LNGDC )
	Return $TWIPSPERPIXELX
EndFunc
Func _WINAPI_TWIPSPERPIXELY ( )
	Local $LNGDC , $TWIPSPERPIXELY
	$LNGDC = _WINAPI_GETDC ( 0 )
	$TWIPSPERPIXELY = 1440 / _WINAPI_GETDEVICECAPS ( $LNGDC , $__WINAPICONSTANT_LOGPIXELSY )
	_WINAPI_RELEASEDC ( 0 , $LNGDC )
	Return $TWIPSPERPIXELY
EndFunc
Func _WINAPI_UNHOOKWINDOWSHOOKEX ( $HHK )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UnhookWindowsHookEx" , "handle" , $HHK )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_UPDATELAYEREDWINDOW ( $HWND , $HDCDEST , $PPTDEST , $PSIZE , $HDCSRCE , $PPTSRCE , $IRGB , $PBLEND , $IFLAGS )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UpdateLayeredWindow" , "hwnd" , $HWND , "handle" , $HDCDEST , "ptr" , $PPTDEST , "ptr" , $PSIZE , "handle" , $HDCSRCE , "ptr" , $PPTSRCE , "dword" , $IRGB , "ptr" , $PBLEND , "dword" , $IFLAGS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_UPDATEWINDOW ( $HWND )
	Local $ARESULT = DllCall ( "user32.dll" , "bool" , "UpdateWindow" , "hwnd" , $HWND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORINPUTIDLE ( $HPROCESS , $ITIMEOUT = - 1 )
	Local $ARESULT = DllCall ( "user32.dll" , "dword" , "WaitForInputIdle" , "handle" , $HPROCESS , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORMULTIPLEOBJECTS ( $ICOUNT , $PHANDLES , $FWAITALL = False , $ITIMEOUT = - 1 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "WaitForMultipleObjects" , "dword" , $ICOUNT , "ptr" , $PHANDLES , "bool" , $FWAITALL , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WAITFORSINGLEOBJECT ( $HHANDLE , $ITIMEOUT = - 1 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "INT" , "WaitForSingleObject" , "handle" , $HHANDLE , "dword" , $ITIMEOUT )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WIDECHARTOMULTIBYTE ( $PUNICODE , $ICODEPAGE = 0 , $BRETSTRING = True )
	Local $SUNICODETYPE = "ptr"
	If IsDllStruct ( $PUNICODE ) Then
		$PUNICODE = DllStructGetPtr ( $PUNICODE )
	Else
		If Not IsPtr ( $PUNICODE ) Then $SUNICODETYPE = "wstr"
	EndIf
	Local $ARESULT = DllCall ( "kernel32.dll" , "int" , "WideCharToMultiByte" , "uint" , $ICODEPAGE , "dword" , 0 , $SUNICODETYPE , $PUNICODE , "int" , - 1 , "ptr" , 0 , "int" , 0 , "ptr" , 0 , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , "" )
	Local $TMULTIBYTE = DllStructCreate ( "char[" & $ARESULT [ 0 ] & "]" )
	Local $PMULTIBYTE = DllStructGetPtr ( $TMULTIBYTE )
	$ARESULT = DllCall ( "kernel32.dll" , "int" , "WideCharToMultiByte" , "uint" , $ICODEPAGE , "dword" , 0 , $SUNICODETYPE , $PUNICODE , "int" , - 1 , "ptr" , $PMULTIBYTE , "int" , $ARESULT [ 0 ] , "ptr" , 0 , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , "" )
	If $BRETSTRING Then Return DllStructGetData ( $TMULTIBYTE , 1 )
	Return $TMULTIBYTE
EndFunc
Func _WINAPI_WINDOWFROMPOINT ( ByRef $TPOINT )
	Local $TPOINTCAST = DllStructCreate ( "int64" , DllStructGetPtr ( $TPOINT ) )
	Local $ARESULT = DllCall ( "user32.dll" , "hwnd" , "WindowFromPoint" , "int64" , DllStructGetData ( $TPOINTCAST , 1 ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITECONSOLE ( $HCONSOLE , $STEXT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteConsoleW" , "handle" , $HCONSOLE , "wstr" , $STEXT , "dword" , StringLen ( $STEXT ) , "dword*" , 0 , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITEFILE ( $HFILE , $PBUFFER , $ITOWRITE , ByRef $IWRITTEN , $POVERLAPPED = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteFile" , "handle" , $HFILE , "ptr" , $PBUFFER , "dword" , $ITOWRITE , "dword*" , 0 , "ptr" , $POVERLAPPED )
	If @error Then Return SetError ( @error , @extended , False )
	$IWRITTEN = $ARESULT [ 4 ]
	Return $ARESULT [ 0 ]
EndFunc
Func _WINAPI_WRITEPROCESSMEMORY ( $HPROCESS , $PBASEADDRESS , $PBUFFER , $ISIZE , ByRef $IWRITTEN , $SBUFFER = "ptr" )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteProcessMemory" , "handle" , $HPROCESS , "ptr" , $PBASEADDRESS , $SBUFFER , $PBUFFER , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	$IWRITTEN = $ARESULT [ 5 ]
	Return $ARESULT [ 0 ]
EndFunc
Global Const $GDIP_DASHCAPFLAT = 0
Global Const $GDIP_DASHCAPROUND = 2
Global Const $GDIP_DASHCAPTRIANGLE = 3
Global Const $GDIP_DASHSTYLESOLID = 0
Global Const $GDIP_DASHSTYLEDASH = 1
Global Const $GDIP_DASHSTYLEDOT = 2
Global Const $GDIP_DASHSTYLEDASHDOT = 3
Global Const $GDIP_DASHSTYLEDASHDOTDOT = 4
Global Const $GDIP_DASHSTYLECUSTOM = 5
Global Const $GDIP_EPGCHROMINANCETABLE = "{F2E455DC-09B3-4316-8260-676ADA32481C}"
Global Const $GDIP_EPGCOLORDEPTH = "{66087055-AD66-4C7C-9A18-38A2310B8337}"
Global Const $GDIP_EPGCOMPRESSION = "{E09D739D-CCD4-44EE-8EBA-3FBF8BE4FC58}"
Global Const $GDIP_EPGLUMINANCETABLE = "{EDB33BCE-0266-4A77-B904-27216099E717}"
Global Const $GDIP_EPGQUALITY = "{1D5BE4B5-FA4A-452D-9CDD-5DB35105E7EB}"
Global Const $GDIP_EPGRENDERMETHOD = "{6D42C53A-229A-4825-8BB7-5C99E2B9A8B8}"
Global Const $GDIP_EPGSAVEFLAG = "{292266FC-AC40-47BF-8CFC-A85B89A655DE}"
Global Const $GDIP_EPGSCANMETHOD = "{3A4E2661-3109-4E56-8536-42C156E7DCFA}"
Global Const $GDIP_EPGTRANSFORMATION = "{8D0EB2D1-A58E-4EA8-AA14-108074B7B6F9}"
Global Const $GDIP_EPGVERSION = "{24D18C76-814A-41A4-BF53-1C219CCCF797}"
Global Const $GDIP_EPTBYTE = 1
Global Const $GDIP_EPTASCII = 2
Global Const $GDIP_EPTSHORT = 3
Global Const $GDIP_EPTLONG = 4
Global Const $GDIP_EPTRATIONAL = 5
Global Const $GDIP_EPTLONGRANGE = 6
Global Const $GDIP_EPTUNDEFINED = 7
Global Const $GDIP_EPTRATIONALRANGE = 8
Global Const $GDIP_ERROK = 0
Global Const $GDIP_ERRGENERICERROR = 1
Global Const $GDIP_ERRINVALIDPARAMETER = 2
Global Const $GDIP_ERROUTOFMEMORY = 3
Global Const $GDIP_ERROBJECTBUSY = 4
Global Const $GDIP_ERRINSUFFICIENTBUFFER = 5
Global Const $GDIP_ERRNOTIMPLEMENTED = 6
Global Const $GDIP_ERRWIN32ERROR = 7
Global Const $GDIP_ERRWRONGSTATE = 8
Global Const $GDIP_ERRABORTED = 9
Global Const $GDIP_ERRFILENOTFOUND = 10
Global Const $GDIP_ERRVALUEOVERFLOW = 11
Global Const $GDIP_ERRACCESSDENIED = 12
Global Const $GDIP_ERRUNKNOWNIMAGEFORMAT = 13
Global Const $GDIP_ERRFONTFAMILYNOTFOUND = 14
Global Const $GDIP_ERRFONTSTYLENOTFOUND = 15
Global Const $GDIP_ERRNOTTRUETYPEFONT = 16
Global Const $GDIP_ERRUNSUPPORTEDGDIVERSION = 17
Global Const $GDIP_ERRGDIPLUSNOTINITIALIZED = 18
Global Const $GDIP_ERRPROPERTYNOTFOUND = 19
Global Const $GDIP_ERRPROPERTYNOTSUPPORTED = 20
Global Const $GDIP_EVTCOMPRESSIONLZW = 2
Global Const $GDIP_EVTCOMPRESSIONCCITT3 = 3
Global Const $GDIP_EVTCOMPRESSIONCCITT4 = 4
Global Const $GDIP_EVTCOMPRESSIONRLE = 5
Global Const $GDIP_EVTCOMPRESSIONNONE = 6
Global Const $GDIP_EVTTRANSFORMROTATE90 = 13
Global Const $GDIP_EVTTRANSFORMROTATE180 = 14
Global Const $GDIP_EVTTRANSFORMROTATE270 = 15
Global Const $GDIP_EVTTRANSFORMFLIPHORIZONTAL = 16
Global Const $GDIP_EVTTRANSFORMFLIPVERTICAL = 17
Global Const $GDIP_EVTMULTIFRAME = 18
Global Const $GDIP_EVTLASTFRAME = 19
Global Const $GDIP_EVTFLUSH = 20
Global Const $GDIP_EVTFRAMEDIMENSIONPAGE = 23
Global Const $GDIP_ICFENCODER = 1
Global Const $GDIP_ICFDECODER = 2
Global Const $GDIP_ICFSUPPORTBITMAP = 4
Global Const $GDIP_ICFSUPPORTVECTOR = 8
Global Const $GDIP_ICFSEEKABLEENCODE = 16
Global Const $GDIP_ICFBLOCKINGDECODE = 32
Global Const $GDIP_ICFBUILTIN = 65536
Global Const $GDIP_ICFSYSTEM = 131072
Global Const $GDIP_ICFUSER = 262144
Global Const $GDIP_ILMREAD = 1
Global Const $GDIP_ILMWRITE = 2
Global Const $GDIP_ILMUSERINPUTBUF = 4
Global Const $GDIP_LINECAPFLAT = 0
Global Const $GDIP_LINECAPSQUARE = 1
Global Const $GDIP_LINECAPROUND = 2
Global Const $GDIP_LINECAPTRIANGLE = 3
Global Const $GDIP_LINECAPNOANCHOR = 16
Global Const $GDIP_LINECAPSQUAREANCHOR = 17
Global Const $GDIP_LINECAPROUNDANCHOR = 18
Global Const $GDIP_LINECAPDIAMONDANCHOR = 19
Global Const $GDIP_LINECAPARROWANCHOR = 20
Global Const $GDIP_LINECAPCUSTOM = 255
Global Const $GDIP_PXF01INDEXED = 196865
Global Const $GDIP_PXF04INDEXED = 197634
Global Const $GDIP_PXF08INDEXED = 198659
Global Const $GDIP_PXF16GRAYSCALE = 1052676
Global Const $GDIP_PXF16RGB555 = 135173
Global Const $GDIP_PXF16RGB565 = 135174
Global Const $GDIP_PXF16ARGB1555 = 397319
Global Const $GDIP_PXF24RGB = 137224
Global Const $GDIP_PXF32RGB = 139273
Global Const $GDIP_PXF32ARGB = 2498570
Global Const $GDIP_PXF32PARGB = 860171
Global Const $GDIP_PXF48RGB = 1060876
Global Const $GDIP_PXF64ARGB = 3424269
Global Const $GDIP_PXF64PARGB = 1851406
Global Const $GDIP_IMAGEFORMAT_UNDEFINED = "{B96B3CA9-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_MEMORYBMP = "{B96B3CAA-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_BMP = "{B96B3CAB-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EMF = "{B96B3CAC-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_WMF = "{B96B3CAD-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_JPEG = "{B96B3CAE-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_PNG = "{B96B3CAF-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_GIF = "{B96B3CB0-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_TIFF = "{B96B3CB1-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_EXIF = "{B96B3CB2-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGEFORMAT_ICON = "{B96B3CB5-0728-11D3-9D7B-0000F81EF32E}"
Global Const $GDIP_IMAGETYPE_UNKNOWN = 0
Global Const $GDIP_IMAGETYPE_BITMAP = 1
Global Const $GDIP_IMAGETYPE_METAFILE = 2
Global Const $GDIP_IMAGEFLAGS_NONE = 0
Global Const $GDIP_IMAGEFLAGS_SCALABLE = 1
Global Const $GDIP_IMAGEFLAGS_HASALPHA = 2
Global Const $GDIP_IMAGEFLAGS_HASTRANSLUCENT = 4
Global Const $GDIP_IMAGEFLAGS_PARTIALLYSCALABLE = 8
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_RGB = 16
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_CMYK = 32
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_GRAY = 64
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCBCR = 128
Global Const $GDIP_IMAGEFLAGS_COLORSPACE_YCCK = 256
Global Const $GDIP_IMAGEFLAGS_HASREALDPI = 4096
Global Const $GDIP_IMAGEFLAGS_HASREALPIXELSIZE = 8192
Global Const $GDIP_IMAGEFLAGS_READONLY = 65536
Global Const $GDIP_IMAGEFLAGS_CACHING = 131072
Global $GHGDIPBRUSH = 0
Global $GHGDIPDLL = 0
Global $GHGDIPPEN = 0
Global $GIGDIPREF = 0
Global $GIGDIPTOKEN = 0
Func _GDIPLUS_ARROWCAPCREATE ( $FHEIGHT , $FWIDTH , $BFILLED = True )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateAdjustableArrowCap" , "float" , $FHEIGHT , "float" , $FWIDTH , "bool" , $BFILLED , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 4 ] )
EndFunc
Func _GDIPLUS_ARROWCAPDISPOSE ( $HCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteCustomLineCap" , "handle" , $HCAP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ARROWCAPGETFILLSTATE ( $HARROWCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetAdjustableArrowCapFillState" , "handle" , $HARROWCAP , "bool*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ARROWCAPGETHEIGHT ( $HARROWCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetAdjustableArrowCapHeight" , "handle" , $HARROWCAP , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_ARROWCAPGETMIDDLEINSET ( $HARROWCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetAdjustableArrowCapMiddleInset" , "handle" , $HARROWCAP , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_ARROWCAPGETWIDTH ( $HARROWCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetAdjustableArrowCapWidth" , "handle" , $HARROWCAP , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_ARROWCAPSETFILLSTATE ( $HARROWCAP , $BFILLED = True )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetAdjustableArrowCapFillState" , "handle" , $HARROWCAP , "bool" , $BFILLED )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ARROWCAPSETHEIGHT ( $HARROWCAP , $FHEIGHT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetAdjustableArrowCapHeight" , "handle" , $HARROWCAP , "float" , $FHEIGHT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ARROWCAPSETMIDDLEINSET ( $HARROWCAP , $FINSET )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetAdjustableArrowCapMiddleInset" , "handle" , $HARROWCAP , "float" , $FINSET )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ARROWCAPSETWIDTH ( $HARROWCAP , $FWIDTH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetAdjustableArrowCapWidth" , "handle" , $HARROWCAP , "float" , $FWIDTH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_BITMAPCLONEAREA ( $HBMP , $ILEFT , $ITOP , $IWIDTH , $IHEIGHT , $IFORMAT = 137224 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCloneBitmapAreaI" , "int" , $ILEFT , "int" , $ITOP , "int" , $IWIDTH , "int" , $IHEIGHT , "int" , $IFORMAT , "handle" , $HBMP , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 7 ] )
EndFunc
Func _GDIPLUS_BITMAPCREATEFROMFILE ( $SFILENAME )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateBitmapFromFile" , "wstr" , $SFILENAME , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BITMAPCREATEFROMGRAPHICS ( $IWIDTH , $IHEIGHT , $HGRAPHICS )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateBitmapFromGraphics" , "int" , $IWIDTH , "int" , $IHEIGHT , "handle" , $HGRAPHICS , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 4 ] )
EndFunc
Func _GDIPLUS_BITMAPCREATEFROMHBITMAP ( $HBMP , $HPAL = 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateBitmapFromHBITMAP" , "handle" , $HBMP , "handle" , $HPAL , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _GDIPLUS_BITMAPCREATEHBITMAPFROMBITMAP ( $HBITMAP , $IARGB = 4278190080 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateHBITMAPFromBitmap" , "handle" , $HBITMAP , "ptr*" , 0 , "dword" , $IARGB )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BITMAPDISPOSE ( $HBITMAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDisposeImage" , "handle" , $HBITMAP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_BITMAPLOCKBITS ( $HBITMAP , $ILEFT , $ITOP , $IWIDTH , $IHEIGHT , $IFLAGS = $GDIP_ILMREAD , $IFORMAT = $GDIP_PXF32RGB )
	Local $TDATA = DllStructCreate ( $TAGGDIPBITMAPDATA )
	Local $PDATA = DllStructGetPtr ( $TDATA )
	Local $TRECT = DllStructCreate ( $TAGRECT )
	Local $PRECT = DllStructGetPtr ( $TRECT )
	DllStructSetData ( $TRECT , "Left" , $ILEFT )
	DllStructSetData ( $TRECT , "Top" , $ITOP )
	DllStructSetData ( $TRECT , "Right" , $IWIDTH )
	DllStructSetData ( $TRECT , "Bottom" , $IHEIGHT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipBitmapLockBits" , "handle" , $HBITMAP , "ptr" , $PRECT , "uint" , $IFLAGS , "int" , $IFORMAT , "ptr" , $PDATA )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $TDATA )
EndFunc
Func _GDIPLUS_BITMAPUNLOCKBITS ( $HBITMAP , $TBITMAPDATA )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipBitmapUnlockBits" , "handle" , $HBITMAP , "ptr" , DllStructGetPtr ( $TBITMAPDATA ) )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_BRUSHCLONE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCloneBrush" , "handle" , $HBRUSH , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BRUSHCREATESOLID ( $IARGB = 4278190080 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateSolidFill" , "int" , $IARGB , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BRUSHDISPOSE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteBrush" , "handle" , $HBRUSH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_BRUSHGETSOLIDCOLOR ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetSolidFillColor" , "handle" , $HBRUSH , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BRUSHGETTYPE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetBrushType" , "handle" , $HBRUSH , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_BRUSHSETSOLIDCOLOR ( $HBRUSH , $IARGB = 4278190080 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetSolidFillColor" , "handle" , $HBRUSH , "dword" , $IARGB )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_CUSTOMLINECAPDISPOSE ( $HCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteCustomLineCap" , "handle" , $HCAP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_DECODERS ( )
	Local $ICOUNT = _GDIPLUS_DECODERSGETCOUNT ( )
	Local $ISIZE = _GDIPLUS_DECODERSGETSIZE ( )
	Local $TBUFFER = DllStructCreate ( "byte[" & $ISIZE & "]" )
	Local $PBUFFER = DllStructGetPtr ( $TBUFFER )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageDecoders" , "uint" , $ICOUNT , "uint" , $ISIZE , "ptr" , $PBUFFER )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $ARESULT [ 0 ] <> 0 Then Return SetError ( $ARESULT [ 0 ] , 0 , 0 )
	Local $TCODEC , $AINFO [ $ICOUNT + 1 ] [ 14 ]
	$AINFO [ 0 ] [ 0 ] = $ICOUNT
	For $II = 1 To $ICOUNT
		$TCODEC = DllStructCreate ( $TAGGDIPIMAGECODECINFO , $PBUFFER )
		$AINFO [ $II ] [ 1 ] = _WINAPI_STRINGFROMGUID ( DllStructGetPtr ( $TCODEC , "CLSID" ) )
		$AINFO [ $II ] [ 2 ] = _WINAPI_STRINGFROMGUID ( DllStructGetPtr ( $TCODEC , "FormatID" ) )
		$AINFO [ $II ] [ 3 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "CodecName" ) )
		$AINFO [ $II ] [ 4 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "DllName" ) )
		$AINFO [ $II ] [ 5 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "FormatDesc" ) )
		$AINFO [ $II ] [ 6 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "FileExt" ) )
		$AINFO [ $II ] [ 7 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "MimeType" ) )
		$AINFO [ $II ] [ 8 ] = DllStructGetData ( $TCODEC , "Flags" )
		$AINFO [ $II ] [ 9 ] = DllStructGetData ( $TCODEC , "Version" )
		$AINFO [ $II ] [ 10 ] = DllStructGetData ( $TCODEC , "SigCount" )
		$AINFO [ $II ] [ 11 ] = DllStructGetData ( $TCODEC , "SigSize" )
		$AINFO [ $II ] [ 12 ] = DllStructGetData ( $TCODEC , "SigPattern" )
		$AINFO [ $II ] [ 13 ] = DllStructGetData ( $TCODEC , "SigMask" )
		$PBUFFER += DllStructGetSize ( $TCODEC )
	Next
	Return $AINFO
EndFunc
Func _GDIPLUS_DECODERSGETCOUNT ( )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageDecodersSize" , "uint*" , 0 , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 1 ] )
EndFunc
Func _GDIPLUS_DECODERSGETSIZE ( )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageDecodersSize" , "uint*" , 0 , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_DRAWIMAGEPOINTS ( $HGRAPHIC , $HIMAGE , $NULX , $NULY , $NURX , $NURY , $NLLX , $NLLY , $COUNT = 3 )
	Local $TPOINT = DllStructCreate ( "float X;float Y;float X2;float Y2;float X3;float Y3" )
	DllStructSetData ( $TPOINT , "X" , $NULX )
	DllStructSetData ( $TPOINT , "Y" , $NULY )
	DllStructSetData ( $TPOINT , "X2" , $NURX )
	DllStructSetData ( $TPOINT , "Y2" , $NURY )
	DllStructSetData ( $TPOINT , "X3" , $NLLX )
	DllStructSetData ( $TPOINT , "Y3" , $NLLY )
	Local $PPOINT = DllStructGetPtr ( $TPOINT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawImagePoints" , "handle" , $HGRAPHIC , "handle" , $HIMAGE , "ptr" , $PPOINT , "int" , $COUNT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_ENCODERS ( )
	Local $ICOUNT = _GDIPLUS_ENCODERSGETCOUNT ( )
	Local $ISIZE = _GDIPLUS_ENCODERSGETSIZE ( )
	Local $TBUFFER = DllStructCreate ( "byte[" & $ISIZE & "]" )
	Local $PBUFFER = DllStructGetPtr ( $TBUFFER )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageEncoders" , "uint" , $ICOUNT , "uint" , $ISIZE , "ptr" , $PBUFFER )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $ARESULT [ 0 ] <> 0 Then Return SetError ( $ARESULT [ 0 ] , 0 , 0 )
	Local $TCODEC , $AINFO [ $ICOUNT + 1 ] [ 14 ]
	$AINFO [ 0 ] [ 0 ] = $ICOUNT
	For $II = 1 To $ICOUNT
		$TCODEC = DllStructCreate ( $TAGGDIPIMAGECODECINFO , $PBUFFER )
		$AINFO [ $II ] [ 1 ] = _WINAPI_STRINGFROMGUID ( DllStructGetPtr ( $TCODEC , "CLSID" ) )
		$AINFO [ $II ] [ 2 ] = _WINAPI_STRINGFROMGUID ( DllStructGetPtr ( $TCODEC , "FormatID" ) )
		$AINFO [ $II ] [ 3 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "CodecName" ) )
		$AINFO [ $II ] [ 4 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "DllName" ) )
		$AINFO [ $II ] [ 5 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "FormatDesc" ) )
		$AINFO [ $II ] [ 6 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "FileExt" ) )
		$AINFO [ $II ] [ 7 ] = _WINAPI_WIDECHARTOMULTIBYTE ( DllStructGetData ( $TCODEC , "MimeType" ) )
		$AINFO [ $II ] [ 8 ] = DllStructGetData ( $TCODEC , "Flags" )
		$AINFO [ $II ] [ 9 ] = DllStructGetData ( $TCODEC , "Version" )
		$AINFO [ $II ] [ 10 ] = DllStructGetData ( $TCODEC , "SigCount" )
		$AINFO [ $II ] [ 11 ] = DllStructGetData ( $TCODEC , "SigSize" )
		$AINFO [ $II ] [ 12 ] = DllStructGetData ( $TCODEC , "SigPattern" )
		$AINFO [ $II ] [ 13 ] = DllStructGetData ( $TCODEC , "SigMask" )
		$PBUFFER += DllStructGetSize ( $TCODEC )
	Next
	Return $AINFO
EndFunc
Func _GDIPLUS_ENCODERSGETCLSID ( $SFILEEXT )
	Local $AENCODERS = _GDIPLUS_ENCODERS ( )
	For $II = 1 To $AENCODERS [ 0 ] [ 0 ]
		If StringInStr ( $AENCODERS [ $II ] [ 6 ] , "*." & $SFILEEXT ) > 0 Then Return $AENCODERS [ $II ] [ 1 ]
	Next
	Return SetError ( - 1 , - 1 , "" )
EndFunc
Func _GDIPLUS_ENCODERSGETCOUNT ( )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageEncodersSize" , "uint*" , 0 , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 1 ] )
EndFunc
Func _GDIPLUS_ENCODERSGETPARAMLIST ( $HIMAGE , $SENCODER )
	Local $ISIZE = _GDIPLUS_ENCODERSGETPARAMLISTSIZE ( $HIMAGE , $SENCODER )
	If @error Then Return SetError ( @error , - 1 , 0 )
	Local $TGUID = _WINAPI_GUIDFROMSTRING ( $SENCODER )
	Local $PGUID = DllStructGetPtr ( $TGUID )
	Local $TBUFFER = DllStructCreate ( "dword Count;byte Params[" & $ISIZE - 4 & "]" )
	Local $PBUFFER = DllStructGetPtr ( $TBUFFER )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetEncoderParameterList" , "handle" , $HIMAGE , "ptr" , $PGUID , "uint" , $ISIZE , "ptr" , $PBUFFER )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $TBUFFER )
EndFunc
Func _GDIPLUS_ENCODERSGETPARAMLISTSIZE ( $HIMAGE , $SENCODER )
	Local $TGUID = _WINAPI_GUIDFROMSTRING ( $SENCODER )
	Local $PGUID = DllStructGetPtr ( $TGUID )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetEncoderParameterListSize" , "handle" , $HIMAGE , "ptr" , $PGUID , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _GDIPLUS_ENCODERSGETSIZE ( )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageEncodersSize" , "uint*" , 0 , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_FONTCREATE ( $HFAMILY , $FSIZE , $ISTYLE = 0 , $IUNIT = 3 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateFont" , "handle" , $HFAMILY , "float" , $FSIZE , "int" , $ISTYLE , "int" , $IUNIT , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 5 ] )
EndFunc
Func _GDIPLUS_FONTDISPOSE ( $HFONT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteFont" , "handle" , $HFONT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_FONTFAMILYCREATE ( $SFAMILY )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateFontFamilyFromName" , "wstr" , $SFAMILY , "ptr" , 0 , "handle*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _GDIPLUS_FONTFAMILYDISPOSE ( $HFAMILY )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteFontFamily" , "handle" , $HFAMILY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSCLEAR ( $HGRAPHICS , $IARGB = 4278190080 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGraphicsClear" , "handle" , $HGRAPHICS , "dword" , $IARGB )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSCREATEFROMHDC ( $HDC )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateFromHDC" , "handle" , $HDC , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_GRAPHICSCREATEFROMHWND ( $HWND )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateFromHWND" , "hwnd" , $HWND , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_GRAPHICSDISPOSE ( $HGRAPHICS )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteGraphics" , "handle" , $HGRAPHICS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWARC ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $FSTARTANGLE , $FSWEEPANGLE , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawArcI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "float" , $FSTARTANGLE , "float" , $FSWEEPANGLE )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWBEZIER ( $HGRAPHICS , $IX1 , $IY1 , $IX2 , $IY2 , $IX3 , $IY3 , $IX4 , $IY4 , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawBezierI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX1 , "int" , $IY1 , "int" , $IX2 , "int" , $IY2 , "int" , $IX3 , "int" , $IY3 , "int" , $IX4 , "int" , $IY4 )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWCLOSEDCURVE ( $HGRAPHICS , $APOINTS , $HPEN = 0 )
	Local $ICOUNT = $APOINTS [ 0 ] [ 0 ]
	Local $TPOINTS = DllStructCreate ( "long[" & $ICOUNT * 2 & "]" )
	Local $PPOINTS = DllStructGetPtr ( $TPOINTS )
	For $II = 1 To $ICOUNT
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 0 ] , ( ( $II - 1 ) * 2 ) + 1 )
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 1 ] , ( ( $II - 1 ) * 2 ) + 2 )
	Next
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawClosedCurveI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "ptr" , $PPOINTS , "int" , $ICOUNT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWCURVE ( $HGRAPHICS , $APOINTS , $HPEN = 0 )
	Local $ICOUNT = $APOINTS [ 0 ] [ 0 ]
	Local $TPOINTS = DllStructCreate ( "long[" & $ICOUNT * 2 & "]" )
	Local $PPOINTS = DllStructGetPtr ( $TPOINTS )
	For $II = 1 To $ICOUNT
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 0 ] , ( ( $II - 1 ) * 2 ) + 1 )
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 1 ] , ( ( $II - 1 ) * 2 ) + 2 )
	Next
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawCurveI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "ptr" , $PPOINTS , "int" , $ICOUNT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWELLIPSE ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawEllipseI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWIMAGE ( $HGRAPHICS , $HIMAGE , $IX , $IY )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawImageI" , "handle" , $HGRAPHICS , "handle" , $HIMAGE , "int" , $IX , "int" , $IY )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWIMAGERECT ( $HGRAPHICS , $HIMAGE , $IX , $IY , $IW , $IH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawImageRectI" , "handle" , $HGRAPHICS , "handle" , $HIMAGE , "int" , $IX , "int" , $IY , "int" , $IW , "int" , $IH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWIMAGERECTRECT ( $HGRAPHICS , $HIMAGE , $ISRCX , $ISRCY , $ISRCWIDTH , $ISRCHEIGHT , $IDSTX , $IDSTY , $IDSTWIDTH , $IDSTHEIGHT , $IUNIT = 2 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawImageRectRectI" , "handle" , $HGRAPHICS , "handle" , $HIMAGE , "int" , $IDSTX , "int" , $IDSTY , "int" , $IDSTWIDTH , "int" , $IDSTHEIGHT , "int" , $ISRCX , "int" , $ISRCY , "int" , $ISRCWIDTH , "int" , $ISRCHEIGHT , "int" , $IUNIT , "int" , 0 , "int" , 0 , "int" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWLINE ( $HGRAPHICS , $IX1 , $IY1 , $IX2 , $IY2 , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawLineI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX1 , "int" , $IY1 , "int" , $IX2 , "int" , $IY2 )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWPIE ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $FSTARTANGLE , $FSWEEPANGLE , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawPieI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "float" , $FSTARTANGLE , "float" , $FSWEEPANGLE )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWPOLYGON ( $HGRAPHICS , $APOINTS , $HPEN = 0 )
	Local $ICOUNT = $APOINTS [ 0 ] [ 0 ]
	Local $TPOINTS = DllStructCreate ( "long[" & $ICOUNT * 2 & "]" )
	Local $PPOINTS = DllStructGetPtr ( $TPOINTS )
	For $II = 1 To $ICOUNT
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 0 ] , ( ( $II - 1 ) * 2 ) + 1 )
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 1 ] , ( ( $II - 1 ) * 2 ) + 2 )
	Next
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawPolygonI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "ptr" , $PPOINTS , "int" , $ICOUNT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWRECT ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $HPEN = 0 )
	__GDIPLUS_PENDEFCREATE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawRectangleI" , "handle" , $HGRAPHICS , "handle" , $HPEN , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_PENDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSDRAWSTRING ( $HGRAPHICS , $SSTRING , $NX , $NY , $SFONT = "Arial" , $NSIZE = 10 , $IFORMAT = 0 )
	Local $HBRUSH = _GDIPLUS_BRUSHCREATESOLID ( )
	Local $HFORMAT = _GDIPLUS_STRINGFORMATCREATE ( $IFORMAT )
	Local $HFAMILY = _GDIPLUS_FONTFAMILYCREATE ( $SFONT )
	Local $HFONT = _GDIPLUS_FONTCREATE ( $HFAMILY , $NSIZE )
	Local $TLAYOUT = _GDIPLUS_RECTFCREATE ( $NX , $NY , 0 , 0 )
	Local $AINFO = _GDIPLUS_GRAPHICSMEASURESTRING ( $HGRAPHICS , $SSTRING , $HFONT , $TLAYOUT , $HFORMAT )
	Local $ARESULT = _GDIPLUS_GRAPHICSDRAWSTRINGEX ( $HGRAPHICS , $SSTRING , $HFONT , $AINFO [ 0 ] , $HFORMAT , $HBRUSH )
	Local $IERROR = @error
	_GDIPLUS_FONTDISPOSE ( $HFONT )
	_GDIPLUS_FONTFAMILYDISPOSE ( $HFAMILY )
	_GDIPLUS_STRINGFORMATDISPOSE ( $HFORMAT )
	_GDIPLUS_BRUSHDISPOSE ( $HBRUSH )
	Return SetError ( $IERROR , 0 , $ARESULT )
EndFunc
Func _GDIPLUS_GRAPHICSDRAWSTRINGEX ( $HGRAPHICS , $SSTRING , $HFONT , $TLAYOUT , $HFORMAT , $HBRUSH )
	Local $PLAYOUT = DllStructGetPtr ( $TLAYOUT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDrawString" , "handle" , $HGRAPHICS , "wstr" , $SSTRING , "int" , - 1 , "handle" , $HFONT , "ptr" , $PLAYOUT , "handle" , $HFORMAT , "handle" , $HBRUSH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSFILLCLOSEDCURVE ( $HGRAPHICS , $APOINTS , $HBRUSH = 0 )
	Local $ICOUNT = $APOINTS [ 0 ] [ 0 ]
	Local $TPOINTS = DllStructCreate ( "long[" & $ICOUNT * 2 & "]" )
	Local $PPOINTS = DllStructGetPtr ( $TPOINTS )
	For $II = 1 To $ICOUNT
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 0 ] , ( ( $II - 1 ) * 2 ) + 1 )
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 1 ] , ( ( $II - 1 ) * 2 ) + 2 )
	Next
	__GDIPLUS_BRUSHDEFCREATE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipFillClosedCurveI" , "handle" , $HGRAPHICS , "handle" , $HBRUSH , "ptr" , $PPOINTS , "int" , $ICOUNT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_BRUSHDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSFILLELLIPSE ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $HBRUSH = 0 )
	__GDIPLUS_BRUSHDEFCREATE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipFillEllipseI" , "handle" , $HGRAPHICS , "handle" , $HBRUSH , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_BRUSHDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSFILLPIE ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $FSTARTANGLE , $FSWEEPANGLE , $HBRUSH = 0 )
	__GDIPLUS_BRUSHDEFCREATE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipFillPieI" , "handle" , $HGRAPHICS , "handle" , $HBRUSH , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT , "float" , $FSTARTANGLE , "float" , $FSWEEPANGLE )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_BRUSHDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSFILLPOLYGON ( $HGRAPHICS , $APOINTS , $HBRUSH = 0 )
	Local $ICOUNT = $APOINTS [ 0 ] [ 0 ]
	Local $TPOINTS = DllStructCreate ( "long[" & $ICOUNT * 2 & "]" )
	Local $PPOINTS = DllStructGetPtr ( $TPOINTS )
	For $II = 1 To $ICOUNT
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 0 ] , ( ( $II - 1 ) * 2 ) + 1 )
		DllStructSetData ( $TPOINTS , 1 , $APOINTS [ $II ] [ 1 ] , ( ( $II - 1 ) * 2 ) + 2 )
	Next
	__GDIPLUS_BRUSHDEFCREATE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipFillPolygonI" , "handle" , $HGRAPHICS , "handle" , $HBRUSH , "ptr" , $PPOINTS , "int" , $ICOUNT , "int" , "FillModeAlternate" )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_BRUSHDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSFILLRECT ( $HGRAPHICS , $IX , $IY , $IWIDTH , $IHEIGHT , $HBRUSH = 0 )
	__GDIPLUS_BRUSHDEFCREATE ( $HBRUSH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipFillRectangleI" , "handle" , $HGRAPHICS , "handle" , $HBRUSH , "int" , $IX , "int" , $IY , "int" , $IWIDTH , "int" , $IHEIGHT )
	Local $TMPERROR = @error , $TMPEXTENDED = @extended
	__GDIPLUS_BRUSHDEFDISPOSE ( )
	If $TMPERROR Then Return SetError ( $TMPERROR , $TMPEXTENDED , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSGETDC ( $HGRAPHICS )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetDC" , "handle" , $HGRAPHICS , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_GRAPHICSGETSMOOTHINGMODE ( $HGRAPHICS )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetSmoothingMode" , "handle" , $HGRAPHICS , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Switch $ARESULT [ 2 ]
	Case 3
		Return SetExtended ( $ARESULT [ 0 ] , 1 )
	Case 7
		Return SetExtended ( $ARESULT [ 0 ] , 2 )
Case Else
		Return SetExtended ( $ARESULT [ 0 ] , 0 )
	EndSwitch
EndFunc
Func _GDIPLUS_GRAPHICSMEASURESTRING ( $HGRAPHICS , $SSTRING , $HFONT , $TLAYOUT , $HFORMAT )
	Local $PLAYOUT = DllStructGetPtr ( $TLAYOUT )
	Local $TRECTF = DllStructCreate ( $TAGGDIPRECTF )
	Local $PRECTF = DllStructGetPtr ( $TRECTF )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipMeasureString" , "handle" , $HGRAPHICS , "wstr" , $SSTRING , "int" , - 1 , "handle" , $HFONT , "ptr" , $PLAYOUT , "handle" , $HFORMAT , "ptr" , $PRECTF , "int*" , 0 , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $AINFO [ 3 ]
	$AINFO [ 0 ] = $TRECTF
	$AINFO [ 1 ] = $ARESULT [ 8 ]
	$AINFO [ 2 ] = $ARESULT [ 9 ]
	Return SetExtended ( $ARESULT [ 0 ] , $AINFO )
EndFunc
Func _GDIPLUS_GRAPHICSRELEASEDC ( $HGRAPHICS , $HDC )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipReleaseDC" , "handle" , $HGRAPHICS , "handle" , $HDC )
	If @error Then Return SetError ( @error , @extended , False )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_GRAPHICSSETTRANSFORM ( $HGRAPHICS , $HMATRIX )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetWorldTransform" , "handle" , $HGRAPHICS , "handle" , $HMATRIX )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_GRAPHICSSETSMOOTHINGMODE ( $HGRAPHICS , $ISMOOTH )
	If $ISMOOTH < 0 Or $ISMOOTH > 4 Then $ISMOOTH = 0
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetSmoothingMode" , "handle" , $HGRAPHICS , "int" , $ISMOOTH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_IMAGEDISPOSE ( $HIMAGE )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDisposeImage" , "handle" , $HIMAGE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_IMAGEGETFLAGS ( $HIMAGE )
	Local $AFLAG [ 2 ] = [ 0 , "" ]
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 1 , $AFLAG )
	Local $AIMAGEFLAGS [ 13 ] [ 2 ] = [ [ "Pixel data Cacheable" , $GDIP_IMAGEFLAGS_CACHING ] , [ "Pixel data read-only" , $GDIP_IMAGEFLAGS_READONLY ] , [ "Pixel size in image" , $GDIP_IMAGEFLAGS_HASREALPIXELSIZE ] , [ "DPI info in image" , $GDIP_IMAGEFLAGS_HASREALDPI ] , [ "YCCK color space" , $GDIP_IMAGEFLAGS_COLORSPACE_YCCK ] , [ "YCBCR color space" , $GDIP_IMAGEFLAGS_COLORSPACE_YCBCR ] , [ "Grayscale image" , $GDIP_IMAGEFLAGS_COLORSPACE_GRAY ] , [ "CMYK color space" , $GDIP_IMAGEFLAGS_COLORSPACE_CMYK ] , [ "RGB color space" , $GDIP_IMAGEFLAGS_COLORSPACE_RGB ] , [ "Partially scalable" , $GDIP_IMAGEFLAGS_PARTIALLYSCALABLE ] , [ "Alpha values other than 0 (transparent) and 255 (opaque)" , $GDIP_IMAGEFLAGS_HASTRANSLUCENT ] , [ "Alpha values" , $GDIP_IMAGEFLAGS_HASALPHA ] , [ "Scalable" , $GDIP_IMAGEFLAGS_SCALABLE ] ]
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageFlags" , "handle" , $HIMAGE , "long*" , 0 )
	If @error Then Return SetError ( @error , 2 , $AFLAG )
	If $ARESULT [ 2 ] = $GDIP_IMAGEFLAGS_NONE Then
		$AFLAG [ 1 ] = "No pixel data"
		Return SetError ( $ARESULT [ 0 ] , 3 , $AFLAG )
	EndIf
	$AFLAG [ 0 ] = $ARESULT [ 2 ]
	For $I = 0 To 12
		If BitAND ( $ARESULT [ 2 ] , $AIMAGEFLAGS [ $I ] [ 1 ] ) = $AIMAGEFLAGS [ $I ] [ 1 ] Then
			If StringLen ( $AFLAG [ 1 ] ) Then $AFLAG [ 1 ] &= "|"
			$ARESULT [ 2 ] -= $AIMAGEFLAGS [ $I ] [ 1 ]
			$AFLAG [ 1 ] &= $AIMAGEFLAGS [ $I ] [ 0 ]
		EndIf
	Next
	Return SetExtended ( $ARESULT [ 0 ] , $AFLAG )
EndFunc
Func _GDIPLUS_IMAGEGETGRAPHICSCONTEXT ( $HIMAGE )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageGraphicsContext" , "handle" , $HIMAGE , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_IMAGEGETHEIGHT ( $HIMAGE )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageHeight" , "handle" , $HIMAGE , "uint*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_IMAGEGETHORIZONTALRESOLUTION ( $HIMAGE )
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 1 , 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageHorizontalResolution" , "handle" , $HIMAGE , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , Round ( $ARESULT [ 2 ] ) )
EndFunc
Func _GDIPLUS_IMAGEGETPIXELFORMAT ( $HIMAGE )
	Local $AFORMAT [ 2 ] = [ 0 , "" ]
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 1 , $AFORMAT )
	Local $APIXELFORMAT [ 14 ] [ 2 ] = [ [ "1 Bpp Indexed" , $GDIP_PXF01INDEXED ] , [ "4 Bpp Indexed" , $GDIP_PXF04INDEXED ] , [ "8 Bpp Indexed" , $GDIP_PXF08INDEXED ] , [ "16 Bpp Grayscale" , $GDIP_PXF16GRAYSCALE ] , [ "16 Bpp RGB 555" , $GDIP_PXF16RGB555 ] , [ "16 Bpp RGB 565" , $GDIP_PXF16RGB565 ] , [ "16 Bpp ARGB 1555" , $GDIP_PXF16ARGB1555 ] , [ "24 Bpp RGB" , $GDIP_PXF24RGB ] , [ "32 Bpp RGB" , $GDIP_PXF32RGB ] , [ "32 Bpp ARGB" , $GDIP_PXF32ARGB ] , [ "32 Bpp PARGB" , $GDIP_PXF32PARGB ] , [ "48 Bpp RGB" , $GDIP_PXF48RGB ] , [ "64 Bpp ARGB" , $GDIP_PXF64ARGB ] , [ "64 Bpp PARGB" , $GDIP_PXF64PARGB ] ]
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImagePixelFormat" , "handle" , $HIMAGE , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , $AFORMAT )
	For $I = 0 To 13
		If $APIXELFORMAT [ $I ] [ 1 ] = $ARESULT [ 2 ] Then
			$AFORMAT [ 0 ] = $APIXELFORMAT [ $I ] [ 1 ]
			$AFORMAT [ 1 ] = $APIXELFORMAT [ $I ] [ 0 ]
			Return SetExtended ( $ARESULT [ 0 ] , $AFORMAT )
		EndIf
	Next
	Return SetExtended ( $ARESULT [ 0 ] , $AFORMAT )
EndFunc
Func _GDIPLUS_IMAGEGETRAWFORMAT ( $HIMAGE )
	Local $AGUID [ 2 ]
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 1 , $AGUID )
	Local $AIMAGETYPE [ 11 ] [ 2 ] = [ [ "UNDEFINED" , $GDIP_IMAGEFORMAT_UNDEFINED ] , [ "MEMORYBMP" , $GDIP_IMAGEFORMAT_MEMORYBMP ] , [ "BMP" , $GDIP_IMAGEFORMAT_BMP ] , [ "EMF" , $GDIP_IMAGEFORMAT_EMF ] , [ "WMF" , $GDIP_IMAGEFORMAT_WMF ] , [ "JPEG" , $GDIP_IMAGEFORMAT_JPEG ] , [ "PNG" , $GDIP_IMAGEFORMAT_PNG ] , [ "GIF" , $GDIP_IMAGEFORMAT_GIF ] , [ "TIFF" , $GDIP_IMAGEFORMAT_TIFF ] , [ "EXIF" , $GDIP_IMAGEFORMAT_EXIF ] , [ "ICON" , $GDIP_IMAGEFORMAT_ICON ] ]
	Local $TSTRUC = DllStructCreate ( "byte[16]" )
	Local $ARESULT1 = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageRawFormat" , "handle" , $HIMAGE , "ptr" , DllStructGetPtr ( $TSTRUC ) )
	If @error Then Return SetError ( @error , @extended , $AGUID )
	If ( Not IsArray ( $ARESULT1 ) ) Or ( Not IsPtr ( $ARESULT1 [ 2 ] ) ) Or ( Not $ARESULT1 [ 2 ] ) Then Return SetError ( 1 , 3 , $AGUID )
	Local $SRESULT2 = _WINAPI_STRINGFROMGUID ( $ARESULT1 [ 2 ] )
	If @error Then Return SetError ( @error , 4 , $AGUID )
	For $I = 0 To 10
		If $AIMAGETYPE [ $I ] [ 1 ] == $SRESULT2 Then
			$AGUID [ 0 ] = $AIMAGETYPE [ $I ] [ 1 ]
			$AGUID [ 1 ] = $AIMAGETYPE [ $I ] [ 0 ]
			Return SetExtended ( $ARESULT1 [ 0 ] , $AGUID )
		EndIf
	Next
	Return SetError ( - 1 , 5 , $AGUID )
EndFunc
Func _GDIPLUS_IMAGEGETTYPE ( $HIMAGE )
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 0 , - 1 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageType" , "handle" , $HIMAGE , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_IMAGEGETVERTICALRESOLUTION ( $HIMAGE )
	If ( $HIMAGE = - 1 ) Or ( Not $HIMAGE ) Then Return SetError ( 10 , 0 , 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageVerticalResolution" , "handle" , $HIMAGE , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , Round ( $ARESULT [ 2 ] ) )
EndFunc
Func _GDIPLUS_IMAGEGETWIDTH ( $HIMAGE )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetImageWidth" , "handle" , $HIMAGE , "uint*" , - 1 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_IMAGELOADFROMFILE ( $SFILENAME )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipLoadImageFromFile" , "wstr" , $SFILENAME , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_IMAGESAVETOFILE ( $HIMAGE , $SFILENAME )
	Local $SEXT = __GDIPLUS_EXTRACTFILEEXT ( $SFILENAME )
	Local $SCLSID = _GDIPLUS_ENCODERSGETCLSID ( $SEXT )
	If $SCLSID = "" Then Return SetError ( - 1 , 0 , False )
	Return _GDIPLUS_IMAGESAVETOFILEEX ( $HIMAGE , $SFILENAME , $SCLSID , 0 )
EndFunc
Func _GDIPLUS_IMAGESAVETOFILEEX ( $HIMAGE , $SFILENAME , $SENCODER , $PPARAMS = 0 )
	Local $TGUID = _WINAPI_GUIDFROMSTRING ( $SENCODER )
	Local $PGUID = DllStructGetPtr ( $TGUID )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSaveImageToFile" , "handle" , $HIMAGE , "wstr" , $SFILENAME , "ptr" , $PGUID , "ptr" , $PPARAMS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_MATRIXCREATE ( )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateMatrix" , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 1 ] )
EndFunc
Func _GDIPLUS_MATRIXDISPOSE ( $HMATRIX )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteMatrix" , "handle" , $HMATRIX )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_MATRIXROTATE ( $HMATRIX , $FANGLE , $BAPPEND = False )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipRotateMatrix" , "handle" , $HMATRIX , "float" , $FANGLE , "int" , $BAPPEND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_MATRIXSCALE ( $HMATRIX , $FSCALEX , $FSCALEY , $BORDER = False )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipScaleMatrix" , "handle" , $HMATRIX , "float" , $FSCALEX , "float" , $FSCALEY , "int" , $BORDER )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_MATRIXTRANSLATE ( $HMATRIX , $FOFFSETX , $FOFFSETY , $BAPPEND = False )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipTranslateMatrix" , "handle" , $HMATRIX , "float" , $FOFFSETX , "float" , $FOFFSETY , "int" , $BAPPEND )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PARAMADD ( ByRef $TPARAMS , $SGUID , $ICOUNT , $ITYPE , $PVALUES )
	Local $TPARAM = DllStructCreate ( $TAGGDIPENCODERPARAM , DllStructGetPtr ( $TPARAMS , "Params" ) + ( DllStructGetData ( $TPARAMS , "Count" ) * 28 ) )
	_WINAPI_GUIDFROMSTRINGEX ( $SGUID , DllStructGetPtr ( $TPARAM , "GUID" ) )
	DllStructSetData ( $TPARAM , "Type" , $ITYPE )
	DllStructSetData ( $TPARAM , "Count" , $ICOUNT )
	DllStructSetData ( $TPARAM , "Values" , $PVALUES )
	DllStructSetData ( $TPARAMS , "Count" , DllStructGetData ( $TPARAMS , "Count" ) + 1 )
EndFunc
Func _GDIPLUS_PARAMINIT ( $ICOUNT )
	If $ICOUNT <= 0 Then Return SetError ( - 1 , - 1 , 0 )
	Return DllStructCreate ( "dword Count;byte Params[" & $ICOUNT * 28 & "]" )
EndFunc
Func _GDIPLUS_PENCREATE ( $IARGB = 4278190080 , $FWIDTH = 1 , $IUNIT = 2 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreatePen1" , "dword" , $IARGB , "float" , $FWIDTH , "int" , $IUNIT , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 4 ] )
EndFunc
Func _GDIPLUS_PENDISPOSE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeletePen" , "handle" , $HPEN )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENGETALIGNMENT ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenMode" , "handle" , $HPEN , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETCOLOR ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenColor" , "handle" , $HPEN , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETCUSTOMENDCAP ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenCustomEndCap" , "handle" , $HPEN , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETDASHCAP ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenDashCap197819" , "handle" , $HPEN , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETDASHSTYLE ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenDashStyle" , "handle" , $HPEN , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETENDCAP ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenEndCap" , "handle" , $HPEN , "int*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENGETWIDTH ( $HPEN )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipGetPenWidth" , "handle" , $HPEN , "float*" , 0 )
	If @error Then Return SetError ( @error , @extended , - 1 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 2 ] )
EndFunc
Func _GDIPLUS_PENSETALIGNMENT ( $HPEN , $IALIGNMENT = 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenMode" , "handle" , $HPEN , "int" , $IALIGNMENT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETCOLOR ( $HPEN , $IARGB )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenColor" , "handle" , $HPEN , "dword" , $IARGB )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETDASHCAP ( $HPEN , $IDASH = 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenDashCap197819" , "handle" , $HPEN , "int" , $IDASH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETCUSTOMENDCAP ( $HPEN , $HENDCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenCustomEndCap" , "handle" , $HPEN , "handle" , $HENDCAP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETDASHSTYLE ( $HPEN , $ISTYLE = 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenDashStyle" , "handle" , $HPEN , "int" , $ISTYLE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETENDCAP ( $HPEN , $IENDCAP )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenEndCap" , "handle" , $HPEN , "int" , $IENDCAP )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_PENSETWIDTH ( $HPEN , $FWIDTH )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetPenWidth" , "handle" , $HPEN , "float" , $FWIDTH )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_RECTFCREATE ( $NX = 0 , $NY = 0 , $NWIDTH = 0 , $NHEIGHT = 0 )
	Local $TRECTF = DllStructCreate ( $TAGGDIPRECTF )
	DllStructSetData ( $TRECTF , "X" , $NX )
	DllStructSetData ( $TRECTF , "Y" , $NY )
	DllStructSetData ( $TRECTF , "Width" , $NWIDTH )
	DllStructSetData ( $TRECTF , "Height" , $NHEIGHT )
	Return $TRECTF
EndFunc
Func _GDIPLUS_SHUTDOWN ( )
	If $GHGDIPDLL = 0 Then Return SetError ( - 1 , - 1 , False )
	$GIGDIPREF -= 1
	If $GIGDIPREF = 0 Then
		DllCall ( $GHGDIPDLL , "none" , "GdiplusShutdown" , "ptr" , $GIGDIPTOKEN )
		DllClose ( $GHGDIPDLL )
		$GHGDIPDLL = 0
	EndIf
	Return True
EndFunc
Func _GDIPLUS_STARTUP ( )
	$GIGDIPREF += 1
	If $GIGDIPREF > 1 Then Return True
	$GHGDIPDLL = DllOpen ( "GDIPlus.dll" )
	If $GHGDIPDLL = - 1 Then Return SetError ( 1 , 2 , False )
	Local $TINPUT = DllStructCreate ( $TAGGDIPSTARTUPINPUT )
	Local $PINPUT = DllStructGetPtr ( $TINPUT )
	Local $TTOKEN = DllStructCreate ( "ulong_ptr Data" )
	Local $PTOKEN = DllStructGetPtr ( $TTOKEN )
	DllStructSetData ( $TINPUT , "Version" , 1 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdiplusStartup" , "ptr" , $PTOKEN , "ptr" , $PINPUT , "ptr" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	$GIGDIPTOKEN = DllStructGetData ( $TTOKEN , "Data" )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_STRINGFORMATCREATE ( $IFORMAT = 0 , $ILANGID = 0 )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipCreateStringFormat" , "int" , $IFORMAT , "word" , $ILANGID , "ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return SetExtended ( $ARESULT [ 0 ] , $ARESULT [ 3 ] )
EndFunc
Func _GDIPLUS_STRINGFORMATDISPOSE ( $HFORMAT )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipDeleteStringFormat" , "handle" , $HFORMAT )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func _GDIPLUS_STRINGFORMATSETALIGN ( $HSTRINGFORMAT , $IFLAG )
	Local $ARESULT = DllCall ( $GHGDIPDLL , "int" , "GdipSetStringFormatAlign" , "handle" , $HSTRINGFORMAT , "int" , $IFLAG )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ] = 0
EndFunc
Func __GDIPLUS_BRUSHDEFCREATE ( ByRef $HBRUSH )
	If $HBRUSH = 0 Then
		$GHGDIPBRUSH = _GDIPLUS_BRUSHCREATESOLID ( )
		$HBRUSH = $GHGDIPBRUSH
	EndIf
EndFunc
Func __GDIPLUS_BRUSHDEFDISPOSE ( )
	If $GHGDIPBRUSH <> 0 Then
		_GDIPLUS_BRUSHDISPOSE ( $GHGDIPBRUSH )
		$GHGDIPBRUSH = 0
	EndIf
EndFunc
Func __GDIPLUS_EXTRACTFILEEXT ( $SFILENAME , $FNODOT = True )
	Local $IINDEX = __GDIPLUS_LASTDELIMITER ( ".\:" , $SFILENAME )
	If ( $IINDEX > 0 ) And ( StringMid ( $SFILENAME , $IINDEX , 1 ) = "." ) Then
		If $FNODOT Then
			Return StringMid ( $SFILENAME , $IINDEX + 1 )
		Else
			Return StringMid ( $SFILENAME , $IINDEX )
		EndIf
	Else
		Return ""
	EndIf
EndFunc
Func __GDIPLUS_LASTDELIMITER ( $SDELIMITERS , $SSTRING )
	Local $SDELIMITER , $IN
	For $II = 1 To StringLen ( $SDELIMITERS )
		$SDELIMITER = StringMid ( $SDELIMITERS , $II , 1 )
		$IN = StringInStr ( $SSTRING , $SDELIMITER , 0 , - 1 )
		If $IN > 0 Then Return $IN
	Next
EndFunc
Func __GDIPLUS_PENDEFCREATE ( ByRef $HPEN )
	If $HPEN = 0 Then
		$GHGDIPPEN = _GDIPLUS_PENCREATE ( )
		$HPEN = $GHGDIPPEN
	EndIf
EndFunc
Func __GDIPLUS_PENDEFDISPOSE ( )
	If $GHGDIPPEN <> 0 Then
		_GDIPLUS_PENDISPOSE ( $GHGDIPPEN )
		$GHGDIPPEN = 0
	EndIf
EndFunc
Global Const $GMEM_FIXED = 0
Global Const $GMEM_MOVEABLE = 2
Global Const $GMEM_NOCOMPACT = 16
Global Const $GMEM_NODISCARD = 32
Global Const $GMEM_ZEROINIT = 64
Global Const $GMEM_MODIFY = 128
Global Const $GMEM_DISCARDABLE = 256
Global Const $GMEM_NOT_BANKED = 4096
Global Const $GMEM_SHARE = 8192
Global Const $GMEM_DDESHARE = 8192
Global Const $GMEM_NOTIFY = 16384
Global Const $GMEM_LOWER = 4096
Global Const $GMEM_VALID_FLAGS = 32626
Global Const $GMEM_INVALID_HANDLE = 32768
Global Const $GPTR = $GMEM_FIXED + $GMEM_ZEROINIT
Global Const $GHND = $GMEM_MOVEABLE + $GMEM_ZEROINIT
Global Const $MEM_COMMIT = 4096
Global Const $MEM_RESERVE = 8192
Global Const $MEM_TOP_DOWN = 1048576
Global Const $MEM_SHARED = 134217728
Global Const $PAGE_NOACCESS = 1
Global Const $PAGE_READONLY = 2
Global Const $PAGE_READWRITE = 4
Global Const $PAGE_EXECUTE = 16
Global Const $PAGE_EXECUTE_READ = 32
Global Const $PAGE_EXECUTE_READWRITE = 64
Global Const $PAGE_GUARD = 256
Global Const $PAGE_NOCACHE = 512
Global Const $MEM_DECOMMIT = 16384
Global Const $MEM_RELEASE = 32768
Global Const $PROCESS_TERMINATE = 1
Global Const $PROCESS_CREATE_THREAD = 2
Global Const $PROCESS_SET_SESSIONID = 4
Global Const $PROCESS_VM_OPERATION = 8
Global Const $PROCESS_VM_READ = 16
Global Const $PROCESS_VM_WRITE = 32
Global Const $PROCESS_DUP_HANDLE = 64
Global Const $PROCESS_CREATE_PROCESS = 128
Global Const $PROCESS_SET_QUOTA = 256
Global Const $PROCESS_SET_INFORMATION = 512
Global Const $PROCESS_QUERY_INFORMATION = 1024
Global Const $PROCESS_SUSPEND_RESUME = 2048
Global Const $PROCESS_ALL_ACCESS = 2035711
Global Const $TAGMEMMAP = "handle hProc;ulong_ptr Size;ptr Mem"
Func _MEMFREE ( ByRef $TMEMMAP )
	Local $PMEMORY = DllStructGetData ( $TMEMMAP , "Mem" )
	Local $HPROCESS = DllStructGetData ( $TMEMMAP , "hProc" )
	Local $BRESULT = _MEMVIRTUALFREEEX ( $HPROCESS , $PMEMORY , 0 , $MEM_RELEASE )
	DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $HPROCESS )
	If @error Then Return SetError ( @error , @extended , False )
	Return $BRESULT
EndFunc
Func _MEMGLOBALALLOC ( $IBYTES , $IFLAGS = 0 )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "GlobalAlloc" , "uint" , $IFLAGS , "ulong_ptr" , $IBYTES )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMGLOBALFREE ( $HMEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "ptr" , "GlobalFree" , "handle" , $HMEM )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMGLOBALLOCK ( $HMEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "ptr" , "GlobalLock" , "handle" , $HMEM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMGLOBALSIZE ( $HMEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "ulong_ptr" , "GlobalSize" , "handle" , $HMEM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMGLOBALUNLOCK ( $HMEM )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "GlobalUnlock" , "handle" , $HMEM )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMINIT ( $HWND , $ISIZE , ByRef $TMEMMAP )
	Local $ARESULT = DllCall ( "User32.dll" , "dword" , "GetWindowThreadProcessId" , "hwnd" , $HWND , "dword*" , 0 )
	If @error Then Return SetError ( @error , @extended , 0 )
	Local $IPROCESSID = $ARESULT [ 2 ]
	If $IPROCESSID = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $IACCESS = BitOR ( $PROCESS_VM_OPERATION , $PROCESS_VM_READ , $PROCESS_VM_WRITE )
	Local $HPROCESS = __MEM_OPENPROCESS ( $IACCESS , False , $IPROCESSID , True )
	Local $IALLOC = BitOR ( $MEM_RESERVE , $MEM_COMMIT )
	Local $PMEMORY = _MEMVIRTUALALLOCEX ( $HPROCESS , 0 , $ISIZE , $IALLOC , $PAGE_READWRITE )
	If $PMEMORY = 0 Then Return SetError ( 2 , 0 , 0 )
	$TMEMMAP = DllStructCreate ( $TAGMEMMAP )
	DllStructSetData ( $TMEMMAP , "hProc" , $HPROCESS )
	DllStructSetData ( $TMEMMAP , "Size" , $ISIZE )
	DllStructSetData ( $TMEMMAP , "Mem" , $PMEMORY )
	Return $PMEMORY
EndFunc
Func _MEMMOVEMEMORY ( $PSOURCE , $PDEST , $ILENGTH )
	DllCall ( "kernel32.dll" , "none" , "RtlMoveMemory" , "ptr" , $PDEST , "ptr" , $PSOURCE , "ulong_ptr" , $ILENGTH )
	If @error Then Return SetError ( @error , @extended )
EndFunc
Func _MEMREAD ( ByRef $TMEMMAP , $PSRCE , $PDEST , $ISIZE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "ReadProcessMemory" , "handle" , DllStructGetData ( $TMEMMAP , "hProc" ) , "ptr" , $PSRCE , "ptr" , $PDEST , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMWRITE ( ByRef $TMEMMAP , $PSRCE , $PDEST = 0 , $ISIZE = 0 , $SSRCE = "ptr" )
	If $PDEST = 0 Then $PDEST = DllStructGetData ( $TMEMMAP , "Mem" )
	If $ISIZE = 0 Then $ISIZE = DllStructGetData ( $TMEMMAP , "Size" )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "WriteProcessMemory" , "handle" , DllStructGetData ( $TMEMMAP , "hProc" ) , "ptr" , $PDEST , $SSRCE , $PSRCE , "ulong_ptr" , $ISIZE , "ulong_ptr*" , 0 )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMVIRTUALALLOC ( $PADDRESS , $ISIZE , $IALLOCATION , $IPROTECT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "ptr" , "VirtualAlloc" , "ptr" , $PADDRESS , "ulong_ptr" , $ISIZE , "dword" , $IALLOCATION , "dword" , $IPROTECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMVIRTUALALLOCEX ( $HPROCESS , $PADDRESS , $ISIZE , $IALLOCATION , $IPROTECT )
	Local $ARESULT = DllCall ( "kernel32.dll" , "ptr" , "VirtualAllocEx" , "handle" , $HPROCESS , "ptr" , $PADDRESS , "ulong_ptr" , $ISIZE , "dword" , $IALLOCATION , "dword" , $IPROTECT )
	If @error Then Return SetError ( @error , @extended , 0 )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMVIRTUALFREE ( $PADDRESS , $ISIZE , $IFREETYPE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "VirtualFree" , "ptr" , $PADDRESS , "ulong_ptr" , $ISIZE , "dword" , $IFREETYPE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func _MEMVIRTUALFREEEX ( $HPROCESS , $PADDRESS , $ISIZE , $IFREETYPE )
	Local $ARESULT = DllCall ( "kernel32.dll" , "bool" , "VirtualFreeEx" , "handle" , $HPROCESS , "ptr" , $PADDRESS , "ulong_ptr" , $ISIZE , "dword" , $IFREETYPE )
	If @error Then Return SetError ( @error , @extended , False )
	Return $ARESULT [ 0 ]
EndFunc
Func __MEM_OPENPROCESS ( $IACCESS , $FINHERIT , $IPROCESSID , $FDEBUGPRIV = False )
	Local $ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $FINHERIT , "dword" , $IPROCESSID )
	If @error Then Return SetError ( @error , @extended , 0 )
	If $ARESULT [ 0 ] Then Return $ARESULT [ 0 ]
	If Not $FDEBUGPRIV Then Return 0
	Local $HTOKEN = _SECURITY__OPENTHREADTOKENEX ( BitOR ( $TOKEN_ADJUST_PRIVILEGES , $TOKEN_QUERY ) )
	If @error Then Return SetError ( @error , @extended , 0 )
	_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , True )
	Local $IERROR = @error
	Local $ILASTERROR = @extended
	Local $IRET = 0
	If Not @error Then
		$ARESULT = DllCall ( "kernel32.dll" , "handle" , "OpenProcess" , "dword" , $IACCESS , "bool" , $FINHERIT , "dword" , $IPROCESSID )
		$IERROR = @error
		$ILASTERROR = @extended
		If $ARESULT [ 0 ] Then $IRET = $ARESULT [ 0 ]
		_SECURITY__SETPRIVILEGE ( $HTOKEN , "SeDebugPrivilege" , False )
		If @error Then
			$IERROR = @error
			$ILASTERROR = @extended
		EndIf
	EndIf
	DllCall ( "kernel32.dll" , "bool" , "CloseHandle" , "handle" , $HTOKEN )
	Return SetError ( $IERROR , $ILASTERROR , $IRET )
EndFunc
_GDIPLUS_STARTUP ( )
Global Const $RT_CURSOR = 1
Global Const $RT_BITMAP = 2
Global Const $RT_ICON = 3
Global Const $RT_MENU = 4
Global Const $RT_DIALOG = 5
Global Const $RT_STRING = 6
Global Const $RT_FONTDIR = 7
Global Const $RT_FONT = 8
Global Const $RT_ACCELERATOR = 9
Global Const $RT_RCDATA = 10
Global Const $RT_MESSAGETABLE = 11
Global Const $RT_GROUP_CURSOR = 12
Global Const $RT_GROUP_ICON = 14
Global Const $RT_VERSION = 16
Global Const $RT_DLGINCLUDE = 17
Global Const $RT_PLUGPLAY = 19
Global Const $RT_VXD = 20
Global Const $RT_ANICURSOR = 21
Global Const $RT_ANIICON = 22
Global Const $RT_HTML = 23
Global Const $RT_MANIFEST = 24
Global Const $SND_RESOURCE = 262148
Global Const $SND_SYNC = 0
Global Const $SND_ASYNC = 1
Global Const $SND_MEMORY = 4
Global Const $SND_LOOP = 8
Global Const $SND_NOSTOP = 16
Global Const $SND_NOWAIT = 8192
Global Const $SND_PURGE = 64
Func _RESOURCEGET ( $RESNAME , $RESTYPE = 10 , $RESLANG = 0 , $DLL = - 1 )
	Local Const $IMAGE_BITMAP = 0
	Local $HINSTANCE , $HBITMAP , $INFOBLOCK , $GLOBALMEMORYBLOCK , $MEMORYPOINTER , $RESSIZE
	If $DLL = - 1 Then
		$HINSTANCE = _WINAPI_GETMODULEHANDLE ( "" )
	Else
		$HINSTANCE = _WINAPI_LOADLIBRARY ( $DLL )
	EndIf
	If $HINSTANCE = 0 Then Return SetError ( 1 , 0 , 0 )
	If $RESTYPE = $RT_BITMAP Then
		$HBITMAP = _WINAPI_LOADIMAGE ( $HINSTANCE , $RESNAME , $IMAGE_BITMAP , 0 , 0 , 0 )
		If @error Then Return SetError ( 2 , 0 , 0 )
		Return $HBITMAP
	EndIf
	If $RESLANG <> 0 Then
		$INFOBLOCK = DllCall ( "kernel32.dll" , "int" , "FindResourceExA" , "int" , $HINSTANCE , "long" , $RESTYPE , "str" , $RESNAME , "short" , $RESLANG )
	Else
		$INFOBLOCK = DllCall ( "kernel32.dll" , "int" , "FindResourceA" , "int" , $HINSTANCE , "str" , $RESNAME , "long" , $RESTYPE )
	EndIf
	If @error Then Return SetError ( 3 , 0 , 0 )
	$INFOBLOCK = $INFOBLOCK [ 0 ]
	If $INFOBLOCK = 0 Then Return SetError ( 4 , 0 , 0 )
	$RESSIZE = DllCall ( "kernel32.dll" , "dword" , "SizeofResource" , "int" , $HINSTANCE , "int" , $INFOBLOCK )
	If @error Then Return SetError ( 5 , 0 , 0 )
	$RESSIZE = $RESSIZE [ 0 ]
	If $RESSIZE = 0 Then Return SetError ( 6 , 0 , 0 )
	$GLOBALMEMORYBLOCK = DllCall ( "kernel32.dll" , "int" , "LoadResource" , "int" , $HINSTANCE , "int" , $INFOBLOCK )
	If @error Then Return SetError ( 7 , 0 , 0 )
	$GLOBALMEMORYBLOCK = $GLOBALMEMORYBLOCK [ 0 ]
	If $GLOBALMEMORYBLOCK = 0 Then Return SetError ( 8 , 0 , 0 )
	$MEMORYPOINTER = DllCall ( "kernel32.dll" , "int" , "LockResource" , "int" , $GLOBALMEMORYBLOCK )
	If @error Then Return SetError ( 9 , 0 , 0 )
	$MEMORYPOINTER = $MEMORYPOINTER [ 0 ]
	If $MEMORYPOINTER = 0 Then Return SetError ( 10 , 0 , 0 )
	If $DLL <> - 1 Then _WINAPI_FREELIBRARY ( $HINSTANCE )
	If @error Then Return SetError ( 11 , 0 , 0 )
	SetExtended ( $RESSIZE )
	Return $MEMORYPOINTER
EndFunc
Func _RESOURCEGETASSTRING ( $RESNAME , $RESTYPE = 10 , $RESLANG = 0 , $DLL = - 1 )
	Local $RESPOINTER , $RESSIZE , $STRUCT
	$RESPOINTER = _RESOURCEGET ( $RESNAME , $RESTYPE , $RESLANG , $DLL )
	If @error Then
		SetError ( 1 , 0 , 0 )
		Return ""
	EndIf
	$RESSIZE = @extended
	$STRUCT = DllStructCreate ( "char[" & $RESSIZE & "]" , $RESPOINTER )
	Return DllStructGetData ( $STRUCT , 1 )
EndFunc
Func _RESOURCEGETASSTRINGW ( $RESNAME , $RESTYPE = 10 , $RESLANG = 0 , $DLL = - 1 )
	Local $RESPOINTER , $RESSIZE , $STRUCT
	$RESPOINTER = _RESOURCEGET ( $RESNAME , $RESTYPE , $RESLANG , $DLL )
	If @error Then
		SetError ( 1 , 0 , 0 )
		Return ""
	EndIf
	$RESSIZE = @extended
	$STRUCT = DllStructCreate ( "wchar[" & $RESSIZE & "]" , $RESPOINTER )
	Return DllStructGetData ( $STRUCT , 1 )
EndFunc
Func _RESOURCEGETASBYTES ( $RESNAME , $RESTYPE = 10 , $RESLANG = 0 , $DLL = - 1 )
	Local $RESPOINTER , $RESSIZE
	$RESPOINTER = _RESOURCEGET ( $RESNAME , $RESTYPE , $RESLANG , $DLL )
	If @error Then Return SetError ( 1 , 0 , 0 )
	$RESSIZE = @extended
	Return DllStructCreate ( "byte[" & $RESSIZE & "]" , $RESPOINTER )
EndFunc
Func _RESOURCEGETASIMAGE ( $RESNAME , $RESTYPE = 10 , $DLL = - 1 )
	Local $RESDATA , $NSIZE , $HDATA , $PDATA , $PSTREAM , $PBITMAP , $HBITMAP
	$RESDATA = _RESOURCEGET ( $RESNAME , $RESTYPE , 0 , $DLL )
	If @error Then Return SetError ( 1 , 0 , 0 )
	$NSIZE = @extended
	If $RESTYPE = $RT_BITMAP Then
		$HIMAGE = _GDIPLUS_BITMAPCREATEFROMHBITMAP ( $RESDATA )
	Else
		$HDATA = _MEMGLOBALALLOC ( $NSIZE , 2 )
		$PDATA = _MEMGLOBALLOCK ( $HDATA )
		_MEMMOVEMEMORY ( $RESDATA , $PDATA , $NSIZE )
		_MEMGLOBALUNLOCK ( $HDATA )
		$PSTREAM = DllCall ( "ole32.dll" , "int" , "CreateStreamOnHGlobal" , "int" , $HDATA , "long" , 1 , "Int*" , 0 )
		$PSTREAM = $PSTREAM [ 3 ]
		$HIMAGE = DllCall ( $GHGDIPDLL , "int" , "GdipCreateBitmapFromStream" , "ptr" , $PSTREAM , "int*" , 0 )
		$HIMAGE = $HIMAGE [ 2 ]
		_WINAPI_DELETEOBJECT ( $PSTREAM )
	EndIf
	Return $HIMAGE
EndFunc
Func _RESOURCEGETASBITMAP ( $RESNAME , $RESTYPE = 10 , $DLL = - 1 )
	$HIMAGE = _RESOURCEGETASIMAGE ( $RESNAME , $RESTYPE , $DLL )
	If @error Then Return SetError ( 1 , 0 , 0 )
	$HBITMAP = _GDIPLUS_BITMAPCREATEHBITMAPFROMBITMAP ( $HIMAGE )
	Return $HBITMAP
EndFunc
Func _RESOURCESAVETOFILE ( $FILENAME , $RESNAME , $RESTYPE = 10 , $RESLANG = 0 , $CREATEPATH = 0 , $DLL = - 1 )
	Local $RESSTRUCT , $RESSIZE , $FILEHANDLE
	If $CREATEPATH Then $CREATEPATH = 8
	If $RESTYPE = $RT_BITMAP Then
		$HIMAGE = _RESOURCEGETASIMAGE ( $RESNAME , $RESTYPE )
		If @error Then Return SetError ( 10 , 0 , 0 )
		$FILEHANDLE = FileOpen ( $FILENAME , 2 + 16 + $CREATEPATH )
		If @error Then Return SetError ( 11 , 0 , 0 )
		FileClose ( $FILEHANDLE )
		If @error Then Return SetError ( 12 , 0 , 0 )
		_GDIPLUS_IMAGESAVETOFILE ( $HIMAGE , $FILENAME )
		_GDIPLUS_IMAGEDISPOSE ( $HIMAGE )
		$RESSIZE = FileGetSize ( $FILENAME )
	Else
		$RESSTRUCT = _RESOURCEGETASBYTES ( $RESNAME , $RESTYPE , $RESLANG , $DLL )
		If @error Then Return SetError ( 1 , 0 , 0 )
		$RESSIZE = DllStructGetSize ( $RESSTRUCT )
		$FILEHANDLE = FileOpen ( $FILENAME , 2 + 16 + $CREATEPATH )
		If @error Then Return SetError ( 2 , 0 , 0 )
		FileWrite ( $FILEHANDLE , DllStructGetData ( $RESSTRUCT , 1 ) )
		If @error Then Return SetError ( 3 , 0 , 0 )
		FileClose ( $FILEHANDLE )
		If @error Then Return SetError ( 4 , 0 , 0 )
	EndIf
	Return $RESSIZE
EndFunc
Func _RESOURCESETIMAGETOCTRL ( $CTRLID , $RESNAME , $RESTYPE = 10 , $DLL = - 1 )
	Local $RESDATA , $NSIZE , $HDATA , $PDATA , $PSTREAM , $PBITMAP , $HBITMAP
	$RESDATA = _RESOURCEGET ( $RESNAME , $RESTYPE , 0 , $DLL )
	If @error Then Return SetError ( 1 , 0 , 0 )
	$NSIZE = @extended
	If $RESTYPE = $RT_BITMAP Then
		_SETBITMAPTOCTRL ( $CTRLID , $RESDATA )
		If @error Then Return SetError ( 2 , 0 , 0 )
	Else
		$HDATA = _MEMGLOBALALLOC ( $NSIZE , 2 )
		$PDATA = _MEMGLOBALLOCK ( $HDATA )
		_MEMMOVEMEMORY ( $RESDATA , $PDATA , $NSIZE )
		_MEMGLOBALUNLOCK ( $HDATA )
		$PSTREAM = DllCall ( "ole32.dll" , "int" , "CreateStreamOnHGlobal" , "int" , $HDATA , "long" , 1 , "Int*" , 0 )
		$PSTREAM = $PSTREAM [ 3 ]
		$PBITMAP = DllCall ( $GHGDIPDLL , "int" , "GdipCreateBitmapFromStream" , "ptr" , $PSTREAM , "int*" , 0 )
		$PBITMAP = $PBITMAP [ 2 ]
		$HBITMAP = _GDIPLUS_BITMAPCREATEHBITMAPFROMBITMAP ( $PBITMAP )
		_SETBITMAPTOCTRL ( $CTRLID , $HBITMAP )
		If @error Then SetError ( 3 , 0 , 0 )
		_GDIPLUS_BITMAPDISPOSE ( $PBITMAP )
		_WINAPI_DELETEOBJECT ( $PSTREAM )
		_MEMGLOBALFREE ( $HDATA )
	EndIf
	Return 1
EndFunc
Func _SETBITMAPTOCTRL ( $CTRLID , $HBITMAP )
	Local Const $STM_SETIMAGE = 370
	Local Const $IMAGE_BITMAP = 0
	Local Const $SS_BITMAP = 14
	Local Const $GWL_STYLE = - 16
	Local $HWND = GUICtrlGetHandle ( $CTRLID )
	If $HWND = 0 Then Return SetError ( 1 , 0 , 0 )
	Local $OLDSTYLE = _WINAPI_GETWINDOWLONG ( $HWND , $GWL_STYLE )
	If @error Then Return SetError ( 2 , 0 , 0 )
	_WINAPI_SETWINDOWLONG ( $HWND , $GWL_STYLE , BitOR ( $OLDSTYLE , $SS_BITMAP ) )
	If @error Then Return SetError ( 3 , 0 , 0 )
	Local $OLDBMP = _SENDMESSAGE ( $HWND , $STM_SETIMAGE , $IMAGE_BITMAP , $HBITMAP )
	If @error Then Return SetError ( 4 , 0 , 0 )
	If $OLDBMP <> 0 Then _WINAPI_DELETEOBJECT ( $OLDBMP )
	Return 1
EndFunc
Func _RESOURCEPLAYSOUND ( $RESNAME , $FLAG = 0 , $DLL = - 1 )
	If $DLL = - 1 Then
		$HINSTANCE = 0
	Else
		$HINSTANCE = _WINAPI_LOADLIBRARY ( $DLL )
	EndIf
	Local $RET = DllCall ( "winmm.dll" , "int" , "PlaySound" , "str" , $RESNAME , "hwnd" , $HINSTANCE , "int" , BitOR ( $SND_RESOURCE , $FLAG ) )
	If @error Then Return SetError ( 1 , 0 , 0 )
	If $DLL <> - 1 Then _WINAPI_FREELIBRARY ( $HINSTANCE )
	If @error Then Return SetError ( 2 , 0 , 0 )
	Return $RET [ 0 ]
EndFunc
Func _ARRAYADD ( ByRef $AVARRAY , $VVALUE )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , - 1 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , - 1 )
	Local $IUBOUND = UBound ( $AVARRAY )
	ReDim $AVARRAY [ $IUBOUND + 1 ]
	$AVARRAY [ $IUBOUND ] = $VVALUE
	Return $IUBOUND
EndFunc
Func _ARRAYBINARYSEARCH ( Const ByRef $AVARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , - 1 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 5 , 0 , - 1 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 4 , 0 , - 1 )
	Local $IMID = Int ( ( $IEND + $ISTART ) / 2 )
	If $AVARRAY [ $ISTART ] > $VVALUE Or $AVARRAY [ $IEND ] < $VVALUE Then Return SetError ( 2 , 0 , - 1 )
	While $ISTART <= $IMID And $VVALUE <> $AVARRAY [ $IMID ]
		If $VVALUE < $AVARRAY [ $IMID ] Then
			$IEND = $IMID - 1
		Else
			$ISTART = $IMID + 1
		EndIf
		$IMID = Int ( ( $IEND + $ISTART ) / 2 )
	WEnd
	If $ISTART > $IEND Then Return SetError ( 3 , 0 , - 1 )
	Return $IMID
EndFunc
Func _ARRAYCOMBINATIONS ( ByRef $AVARRAY , $ISET , $SDELIM = "" )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $IN = UBound ( $AVARRAY )
	Local $IR = $ISET
	Local $AIDX [ $IR ]
	For $I = 0 To $IR - 1
		$AIDX [ $I ] = $I
	Next
	Local $ITOTAL = __ARRAY_COMBINATIONS ( $IN , $IR )
	Local $ILEFT = $ITOTAL
	Local $ARESULT [ $ITOTAL + 1 ]
	$ARESULT [ 0 ] = $ITOTAL
	Local $ICOUNT = 1
	While $ILEFT > 0
		__ARRAY_GETNEXT ( $IN , $IR , $ILEFT , $ITOTAL , $AIDX )
		For $I = 0 To $ISET - 1
			$ARESULT [ $ICOUNT ] &= $AVARRAY [ $AIDX [ $I ] ] & $SDELIM
		Next
		If $SDELIM <> "" Then $ARESULT [ $ICOUNT ] = StringTrimRight ( $ARESULT [ $ICOUNT ] , 1 )
		$ICOUNT += 1
	WEnd
	Return $ARESULT
EndFunc
Func _ARRAYCONCATENATE ( ByRef $AVARRAYTARGET , Const ByRef $AVARRAYSOURCE , $ISTART = 0 )
	If Not IsArray ( $AVARRAYTARGET ) Then Return SetError ( 1 , 0 , 0 )
	If Not IsArray ( $AVARRAYSOURCE ) Then Return SetError ( 2 , 0 , 0 )
	If UBound ( $AVARRAYTARGET , 0 ) <> 1 Then
		If UBound ( $AVARRAYSOURCE , 0 ) <> 1 Then Return SetError ( 5 , 0 , 0 )
		Return SetError ( 3 , 0 , 0 )
	EndIf
	If UBound ( $AVARRAYSOURCE , 0 ) <> 1 Then Return SetError ( 4 , 0 , 0 )
	Local $IUBOUNDTARGET = UBound ( $AVARRAYTARGET ) - $ISTART , $IUBOUNDSOURCE = UBound ( $AVARRAYSOURCE )
	ReDim $AVARRAYTARGET [ $IUBOUNDTARGET + $IUBOUNDSOURCE ]
	For $I = $ISTART To $IUBOUNDSOURCE - 1
		$AVARRAYTARGET [ $IUBOUNDTARGET + $I ] = $AVARRAYSOURCE [ $I ]
	Next
	Return $IUBOUNDTARGET + $IUBOUNDSOURCE
EndFunc
Func _ARRAYCREATE ( $V_0 , $V_1 = 0 , $V_2 = 0 , $V_3 = 0 , $V_4 = 0 , $V_5 = 0 , $V_6 = 0 , $V_7 = 0 , $V_8 = 0 , $V_9 = 0 , $V_10 = 0 , $V_11 = 0 , $V_12 = 0 , $V_13 = 0 , $V_14 = 0 , $V_15 = 0 , $V_16 = 0 , $V_17 = 0 , $V_18 = 0 , $V_19 = 0 , $V_20 = 0 )
	Local $AV_ARRAY [ 21 ] = [ $V_0 , $V_1 , $V_2 , $V_3 , $V_4 , $V_5 , $V_6 , $V_7 , $V_8 , $V_9 , $V_10 , $V_11 , $V_12 , $V_13 , $V_14 , $V_15 , $V_16 , $V_17 , $V_18 , $V_19 , $V_20 ]
	ReDim $AV_ARRAY [ @NumParams ]
	Return $AV_ARRAY
EndFunc
Func _ARRAYDELETE ( ByRef $AVARRAY , $IELEMENT )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	Local $IUBOUND = UBound ( $AVARRAY , 1 ) - 1
	If Not $IUBOUND Then
		$AVARRAY = ""
		Return 0
	EndIf
	If $IELEMENT < 0 Then $IELEMENT = 0
	If $IELEMENT > $IUBOUND Then $IELEMENT = $IUBOUND
	Switch UBound ( $AVARRAY , 0 )
	Case 1
		For $I = $IELEMENT To $IUBOUND - 1
			$AVARRAY [ $I ] = $AVARRAY [ $I + 1 ]
		Next
		ReDim $AVARRAY [ $IUBOUND ]
	Case 2
		Local $ISUBMAX = UBound ( $AVARRAY , 2 ) - 1
		For $I = $IELEMENT To $IUBOUND - 1
			For $J = 0 To $ISUBMAX
				$AVARRAY [ $I ] [ $J ] = $AVARRAY [ $I + 1 ] [ $J ]
			Next
		Next
		ReDim $AVARRAY [ $IUBOUND ] [ $ISUBMAX + 1 ]
Case Else
		Return SetError ( 3 , 0 , 0 )
	EndSwitch
	Return $IUBOUND
EndFunc
Func _ARRAYDISPLAY ( Const ByRef $AVARRAY , $STITLE = "Array: ListView Display" , $IITEMLIMIT = - 1 , $ITRANSPOSE = 0 , $SSEPARATOR = "" , $SREPLACE = "|" , $SHEADER = "" )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	Local $IDIMENSION = UBound ( $AVARRAY , 0 ) , $IUBOUND = UBound ( $AVARRAY , 1 ) - 1 , $ISUBMAX = UBound ( $AVARRAY , 2 ) - 1
	If $IDIMENSION > 2 Then Return SetError ( 2 , 0 , 0 )
	If $SSEPARATOR = "" Then $SSEPARATOR = Chr ( 124 )
	If _ARRAYSEARCH ( $AVARRAY , $SSEPARATOR , 0 , 0 , 0 , 1 ) <> - 1 Then
		For $X = 1 To 255
			If $X >= 32 And $X <= 127 Then ContinueLoop
			Local $SFIND = _ARRAYSEARCH ( $AVARRAY , Chr ( $X ) , 0 , 0 , 0 , 1 )
			If $SFIND = - 1 Then
				$SSEPARATOR = Chr ( $X )
				ExitLoop
			EndIf
		Next
	EndIf
	Local $VTMP , $IBUFFER = 64
	Local $ICOLLIMIT = 250
	Local $IONEVENTMODE = Opt ( "GUIOnEventMode" , 0 ) , $SDATASEPARATORCHAR = Opt ( "GUIDataSeparatorChar" , $SSEPARATOR )
	If $ISUBMAX < 0 Then $ISUBMAX = 0
	If $ITRANSPOSE Then
		$VTMP = $IUBOUND
		$IUBOUND = $ISUBMAX
		$ISUBMAX = $VTMP
	EndIf
	If $ISUBMAX > $ICOLLIMIT Then $ISUBMAX = $ICOLLIMIT
	If $IITEMLIMIT < 1 Then $IITEMLIMIT = $IUBOUND
	If $IUBOUND > $IITEMLIMIT Then $IUBOUND = $IITEMLIMIT
	If $SHEADER = "" Then
		$SHEADER = "Row  "
		For $I = 0 To $ISUBMAX
			$SHEADER &= $SSEPARATOR & "Col " & $I
		Next
	EndIf
	Local $AVARRAYTEXT [ $IUBOUND + 1 ]
	For $I = 0 To $IUBOUND
		$AVARRAYTEXT [ $I ] = "[" & $I & "]"
		For $J = 0 To $ISUBMAX
			If $IDIMENSION = 1 Then
				If $ITRANSPOSE Then
					$VTMP = $AVARRAY [ $J ]
				Else
					$VTMP = $AVARRAY [ $I ]
				EndIf
			Else
				If $ITRANSPOSE Then
					$VTMP = $AVARRAY [ $J ] [ $I ]
				Else
					$VTMP = $AVARRAY [ $I ] [ $J ]
				EndIf
			EndIf
			$VTMP = StringReplace ( $VTMP , $SSEPARATOR , $SREPLACE , 0 , 1 )
			$AVARRAYTEXT [ $I ] &= $SSEPARATOR & $VTMP
			$VTMP = StringLen ( $VTMP )
			If $VTMP > $IBUFFER Then $IBUFFER = $VTMP
		Next
	Next
	$IBUFFER += 1
	Local Const $_ARRAYCONSTANT_GUI_DOCKBORDERS = 102
	Local Const $_ARRAYCONSTANT_GUI_DOCKBOTTOM = 64
	Local Const $_ARRAYCONSTANT_GUI_DOCKHEIGHT = 512
	Local Const $_ARRAYCONSTANT_GUI_DOCKLEFT = 2
	Local Const $_ARRAYCONSTANT_GUI_DOCKRIGHT = 4
	Local Const $_ARRAYCONSTANT_GUI_EVENT_CLOSE = - 3
	Local Const $_ARRAYCONSTANT_LVIF_PARAM = 4
	Local Const $_ARRAYCONSTANT_LVIF_TEXT = 1
	Local Const $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH = ( 4096 + 29 )
	Local Const $_ARRAYCONSTANT_LVM_GETITEMCOUNT = ( 4096 + 4 )
	Local Const $_ARRAYCONSTANT_LVM_GETITEMSTATE = ( 4096 + 44 )
	Local Const $_ARRAYCONSTANT_LVM_INSERTITEMW = ( 4096 + 77 )
	Local Const $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE = ( 4096 + 54 )
	Local Const $_ARRAYCONSTANT_LVM_SETITEMW = ( 4096 + 76 )
	Local Const $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT = 32
	Local Const $_ARRAYCONSTANT_LVS_EX_GRIDLINES = 1
	Local Const $_ARRAYCONSTANT_LVS_SHOWSELALWAYS = 8
	Local Const $_ARRAYCONSTANT_WS_EX_CLIENTEDGE = 512
	Local Const $_ARRAYCONSTANT_WS_MAXIMIZEBOX = 65536
	Local Const $_ARRAYCONSTANT_WS_MINIMIZEBOX = 131072
	Local Const $_ARRAYCONSTANT_WS_SIZEBOX = 262144
	Local Const $_ARRAYCONSTANT_TAGLVITEM = "int Mask;int Item;int SubItem;int State;int StateMask;ptr Text;int TextMax;int Image;int Param;int Indent;int GroupID;int Columns;ptr pColumns"
	Local $IADDMASK = BitOR ( $_ARRAYCONSTANT_LVIF_TEXT , $_ARRAYCONSTANT_LVIF_PARAM )
	Local $TBUFFER = DllStructCreate ( "wchar Text[" & $IBUFFER & "]" ) , $PBUFFER = DllStructGetPtr ( $TBUFFER )
	Local $TITEM = DllStructCreate ( $_ARRAYCONSTANT_TAGLVITEM ) , $PITEM = DllStructGetPtr ( $TITEM )
	DllStructSetData ( $TITEM , "Param" , 0 )
	DllStructSetData ( $TITEM , "Text" , $PBUFFER )
	DllStructSetData ( $TITEM , "TextMax" , $IBUFFER )
	Local $IWIDTH = 640 , $IHEIGHT = 480
	Local $HGUI = GUICreate ( $STITLE , $IWIDTH , $IHEIGHT , Default , Default , BitOR ( $_ARRAYCONSTANT_WS_SIZEBOX , $_ARRAYCONSTANT_WS_MINIMIZEBOX , $_ARRAYCONSTANT_WS_MAXIMIZEBOX ) )
	Local $AIGUISIZE = WinGetClientSize ( $HGUI )
	Local $HLISTVIEW = GUICtrlCreateListView ( $SHEADER , 0 , 0 , $AIGUISIZE [ 0 ] , $AIGUISIZE [ 1 ] - 26 , $_ARRAYCONSTANT_LVS_SHOWSELALWAYS )
	Local $HCOPY = GUICtrlCreateButton ( "Copy Selected" , 3 , $AIGUISIZE [ 1 ] - 23 , $AIGUISIZE [ 0 ] - 6 , 20 )
	GUICtrlSetResizing ( $HLISTVIEW , $_ARRAYCONSTANT_GUI_DOCKBORDERS )
	GUICtrlSetResizing ( $HCOPY , $_ARRAYCONSTANT_GUI_DOCKLEFT + $_ARRAYCONSTANT_GUI_DOCKRIGHT + $_ARRAYCONSTANT_GUI_DOCKBOTTOM + $_ARRAYCONSTANT_GUI_DOCKHEIGHT )
	GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_LVS_EX_GRIDLINES , $_ARRAYCONSTANT_LVS_EX_GRIDLINES )
	GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT , $_ARRAYCONSTANT_LVS_EX_FULLROWSELECT )
	GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_SETEXTENDEDLISTVIEWSTYLE , $_ARRAYCONSTANT_WS_EX_CLIENTEDGE , $_ARRAYCONSTANT_WS_EX_CLIENTEDGE )
	Local $AITEM
	For $I = 0 To $IUBOUND
		If GUICtrlCreateListViewItem ( $AVARRAYTEXT [ $I ] , $HLISTVIEW ) = 0 Then
			$AITEM = StringSplit ( $AVARRAYTEXT [ $I ] , $SSEPARATOR )
			DllStructSetData ( $TBUFFER , "Text" , $AITEM [ 1 ] )
			DllStructSetData ( $TITEM , "Item" , $I )
			DllStructSetData ( $TITEM , "SubItem" , 0 )
			DllStructSetData ( $TITEM , "Mask" , $IADDMASK )
			GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_INSERTITEMW , 0 , $PITEM )
			DllStructSetData ( $TITEM , "Mask" , $_ARRAYCONSTANT_LVIF_TEXT )
			For $J = 2 To $AITEM [ 0 ]
				DllStructSetData ( $TBUFFER , "Text" , $AITEM [ $J ] )
				DllStructSetData ( $TITEM , "SubItem" , $J - 1 )
				GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_SETITEMW , 0 , $PITEM )
			Next
		EndIf
	Next
	$IWIDTH = 0
	For $I = 0 To $ISUBMAX + 1
		$IWIDTH += GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_GETCOLUMNWIDTH , $I , 0 )
	Next
	If $IWIDTH < 250 Then $IWIDTH = 230
	$IWIDTH += 20
	If $IWIDTH > @DesktopWidth Then $IWIDTH = @DesktopWidth - 100
	WinMove ( $HGUI , "" , ( @DesktopWidth - $IWIDTH ) / 2 , Default , $IWIDTH )
	GUISetState ( @SW_SHOW , $HGUI )
	While 1
		Switch GUIGetMsg ( )
		Case $_ARRAYCONSTANT_GUI_EVENT_CLOSE
			ExitLoop
		Case $HCOPY
			Local $SCLIP = ""
			Local $AICURITEMS [ 1 ] = [ 0 ]
			For $I = 0 To GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_GETITEMCOUNT , 0 , 0 )
				If GUICtrlSendMsg ( $HLISTVIEW , $_ARRAYCONSTANT_LVM_GETITEMSTATE , $I , 2 ) Then
					$AICURITEMS [ 0 ] += 1
					ReDim $AICURITEMS [ $AICURITEMS [ 0 ] + 1 ]
					$AICURITEMS [ $AICURITEMS [ 0 ] ] = $I
				EndIf
			Next
			If Not $AICURITEMS [ 0 ] Then
				For $SITEM In $AVARRAYTEXT
					$SCLIP &= $SITEM & @CRLF
				Next
			Else
				For $I = 1 To UBound ( $AICURITEMS ) - 1
					$SCLIP &= $AVARRAYTEXT [ $AICURITEMS [ $I ] ] & @CRLF
				Next
			EndIf
			ClipPut ( $SCLIP )
		EndSwitch
	WEnd
	GUIDelete ( $HGUI )
	Opt ( "GUIOnEventMode" , $IONEVENTMODE )
	Opt ( "GUIDataSeparatorChar" , $SDATASEPARATORCHAR )
	Return 1
EndFunc
Func _ARRAYFINDALL ( Const ByRef $AVARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 , $ICASE = 0 , $IPARTIAL = 0 , $ISUBITEM = 0 )
	$ISTART = _ARRAYSEARCH ( $AVARRAY , $VVALUE , $ISTART , $IEND , $ICASE , $IPARTIAL , 1 , $ISUBITEM )
	If @error Then Return SetError ( @error , 0 , - 1 )
	Local $IINDEX = 0 , $AVRESULT [ UBound ( $AVARRAY ) ]
	Do
		$AVRESULT [ $IINDEX ] = $ISTART
		$IINDEX += 1
		$ISTART = _ARRAYSEARCH ( $AVARRAY , $VVALUE , $ISTART + 1 , $IEND , $ICASE , $IPARTIAL , 1 , $ISUBITEM )
	Until @error
	ReDim $AVRESULT [ $IINDEX ]
	Return $AVRESULT
EndFunc
Func _ARRAYINSERT ( ByRef $AVARRAY , $IELEMENT , $VVALUE = "" )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $IUBOUND = UBound ( $AVARRAY ) + 1
	ReDim $AVARRAY [ $IUBOUND ]
	For $I = $IUBOUND - 1 To $IELEMENT + 1 Step - 1
		$AVARRAY [ $I ] = $AVARRAY [ $I - 1 ]
	Next
	$AVARRAY [ $IELEMENT ] = $VVALUE
	Return $IUBOUND
EndFunc
Func _ARRAYMAX ( Const ByRef $AVARRAY , $ICOMPNUMERIC = 0 , $ISTART = 0 , $IEND = 0 )
	Local $IRESULT = _ARRAYMAXINDEX ( $AVARRAY , $ICOMPNUMERIC , $ISTART , $IEND )
	If @error Then Return SetError ( @error , 0 , "" )
	Return $AVARRAY [ $IRESULT ]
EndFunc
Func _ARRAYMAXINDEX ( Const ByRef $AVARRAY , $ICOMPNUMERIC = 0 , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Or UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 1 , 0 , - 1 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 3 , 0 , - 1 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , - 1 )
	Local $IMAXINDEX = $ISTART
	If $ICOMPNUMERIC Then
		For $I = $ISTART To $IEND
			If Number ( $AVARRAY [ $IMAXINDEX ] ) < Number ( $AVARRAY [ $I ] ) Then $IMAXINDEX = $I
		Next
	Else
		For $I = $ISTART To $IEND
			If $AVARRAY [ $IMAXINDEX ] < $AVARRAY [ $I ] Then $IMAXINDEX = $I
		Next
	EndIf
	Return $IMAXINDEX
EndFunc
Func _ARRAYMIN ( Const ByRef $AVARRAY , $ICOMPNUMERIC = 0 , $ISTART = 0 , $IEND = 0 )
	Local $IRESULT = _ARRAYMININDEX ( $AVARRAY , $ICOMPNUMERIC , $ISTART , $IEND )
	If @error Then Return SetError ( @error , 0 , "" )
	Return $AVARRAY [ $IRESULT ]
EndFunc
Func _ARRAYMININDEX ( Const ByRef $AVARRAY , $ICOMPNUMERIC = 0 , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , - 1 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 3 , 0 , - 1 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , - 1 )
	Local $IMININDEX = $ISTART
	If $ICOMPNUMERIC Then
		For $I = $ISTART To $IEND
			If Number ( $AVARRAY [ $IMININDEX ] ) > Number ( $AVARRAY [ $I ] ) Then $IMININDEX = $I
		Next
	Else
		For $I = $ISTART To $IEND
			If $AVARRAY [ $IMININDEX ] > $AVARRAY [ $I ] Then $IMININDEX = $I
		Next
	EndIf
	Return $IMININDEX
EndFunc
Func _ARRAYPERMUTE ( ByRef $AVARRAY , $SDELIM = "" )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $ISIZE = UBound ( $AVARRAY ) , $IFACTORIAL = 1 , $AIDX [ $ISIZE ] , $ARESULT [ 1 ] , $ICOUNT = 1
	For $I = 0 To $ISIZE - 1
		$AIDX [ $I ] = $I
	Next
	For $I = $ISIZE To 1 Step - 1
		$IFACTORIAL *= $I
	Next
	ReDim $ARESULT [ $IFACTORIAL + 1 ]
	$ARESULT [ 0 ] = $IFACTORIAL
	__ARRAY_EXETERINTERNAL ( $AVARRAY , 0 , $ISIZE , $SDELIM , $AIDX , $ARESULT , $ICOUNT )
	Return $ARESULT
EndFunc
Func _ARRAYPOP ( ByRef $AVARRAY )
	If ( Not IsArray ( $AVARRAY ) ) Then Return SetError ( 1 , 0 , "" )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , "" )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1 , $SLASTVAL = $AVARRAY [ $IUBOUND ]
	If Not $IUBOUND Then
		$AVARRAY = ""
	Else
		ReDim $AVARRAY [ $IUBOUND ]
	EndIf
	Return $SLASTVAL
EndFunc
Func _ARRAYPUSH ( ByRef $AVARRAY , $VVALUE , $IDIRECTION = 0 )
	If ( Not IsArray ( $AVARRAY ) ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 3 , 0 , 0 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If IsArray ( $VVALUE ) Then
		Local $IUBOUNDS = UBound ( $VVALUE )
		If ( $IUBOUNDS - 1 ) > $IUBOUND Then Return SetError ( 2 , 0 , 0 )
		If $IDIRECTION Then
			For $I = $IUBOUND To $IUBOUNDS Step - 1
				$AVARRAY [ $I ] = $AVARRAY [ $I - $IUBOUNDS ]
			Next
			For $I = 0 To $IUBOUNDS - 1
				$AVARRAY [ $I ] = $VVALUE [ $I ]
			Next
		Else
			For $I = 0 To $IUBOUND - $IUBOUNDS
				$AVARRAY [ $I ] = $AVARRAY [ $I + $IUBOUNDS ]
			Next
			For $I = 0 To $IUBOUNDS - 1
				$AVARRAY [ $I + $IUBOUND - $IUBOUNDS + 1 ] = $VVALUE [ $I ]
			Next
		EndIf
	Else
		If $IDIRECTION Then
			For $I = $IUBOUND To 1 Step - 1
				$AVARRAY [ $I ] = $AVARRAY [ $I - 1 ]
			Next
			$AVARRAY [ 0 ] = $VVALUE
		Else
			For $I = 0 To $IUBOUND - 1
				$AVARRAY [ $I ] = $AVARRAY [ $I + 1 ]
			Next
			$AVARRAY [ $IUBOUND ] = $VVALUE
		EndIf
	EndIf
	Return 1
EndFunc
Func _ARRAYREVERSE ( ByRef $AVARRAY , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 3 , 0 , 0 )
	Local $VTMP , $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , 0 )
	For $I = $ISTART To Int ( ( $ISTART + $IEND - 1 ) / 2 )
		$VTMP = $AVARRAY [ $I ]
		$AVARRAY [ $I ] = $AVARRAY [ $IEND ]
		$AVARRAY [ $IEND ] = $VTMP
		$IEND -= 1
	Next
	Return 1
EndFunc
Func _ARRAYSEARCH ( Const ByRef $AVARRAY , $VVALUE , $ISTART = 0 , $IEND = 0 , $ICASE = 0 , $IPARTIAL = 0 , $IFORWARD = 1 , $ISUBITEM = - 1 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , - 1 )
	If UBound ( $AVARRAY , 0 ) > 2 Or UBound ( $AVARRAY , 0 ) < 1 Then Return SetError ( 2 , 0 , - 1 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 4 , 0 , - 1 )
	Local $ISTEP = 1
	If Not $IFORWARD Then
		Local $ITMP = $ISTART
		$ISTART = $IEND
		$IEND = $ITMP
		$ISTEP = - 1
	EndIf
	Switch UBound ( $AVARRAY , 0 )
	Case 1
		If Not $IPARTIAL Then
			If Not $ICASE Then
				For $I = $ISTART To $IEND Step $ISTEP
					If $AVARRAY [ $I ] = $VVALUE Then Return $I
				Next
			Else
				For $I = $ISTART To $IEND Step $ISTEP
					If $AVARRAY [ $I ] == $VVALUE Then Return $I
				Next
			EndIf
		Else
			For $I = $ISTART To $IEND Step $ISTEP
				If StringInStr ( $AVARRAY [ $I ] , $VVALUE , $ICASE ) > 0 Then Return $I
			Next
		EndIf
	Case 2
		Local $IUBOUNDSUB = UBound ( $AVARRAY , 2 ) - 1
		If $ISUBITEM > $IUBOUNDSUB Then $ISUBITEM = $IUBOUNDSUB
		If $ISUBITEM < 0 Then
			$ISUBITEM = 0
		Else
			$IUBOUNDSUB = $ISUBITEM
		EndIf
		For $J = $ISUBITEM To $IUBOUNDSUB
			If Not $IPARTIAL Then
				If Not $ICASE Then
					For $I = $ISTART To $IEND Step $ISTEP
						If $AVARRAY [ $I ] [ $J ] = $VVALUE Then Return $I
					Next
				Else
					For $I = $ISTART To $IEND Step $ISTEP
						If $AVARRAY [ $I ] [ $J ] == $VVALUE Then Return $I
					Next
				EndIf
			Else
				For $I = $ISTART To $IEND Step $ISTEP
					If StringInStr ( $AVARRAY [ $I ] [ $J ] , $VVALUE , $ICASE ) > 0 Then Return $I
				Next
			EndIf
		Next
Case Else
		Return SetError ( 7 , 0 , - 1 )
	EndSwitch
	Return SetError ( 6 , 0 , - 1 )
EndFunc
Func _ARRAYSORT ( ByRef $AVARRAY , $IDESCENDING = 0 , $ISTART = 0 , $IEND = 0 , $ISUBITEM = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , 0 )
	Switch UBound ( $AVARRAY , 0 )
	Case 1
		__ARRAYQUICKSORT1D ( $AVARRAY , $ISTART , $IEND )
		If $IDESCENDING Then _ARRAYREVERSE ( $AVARRAY , $ISTART , $IEND )
	Case 2
		Local $ISUBMAX = UBound ( $AVARRAY , 2 ) - 1
		If $ISUBITEM > $ISUBMAX Then Return SetError ( 3 , 0 , 0 )
		If $IDESCENDING Then
			$IDESCENDING = - 1
		Else
			$IDESCENDING = 1
		EndIf
		__ARRAYQUICKSORT2D ( $AVARRAY , $IDESCENDING , $ISTART , $IEND , $ISUBITEM , $ISUBMAX )
Case Else
		Return SetError ( 4 , 0 , 0 )
	EndSwitch
	Return 1
EndFunc
Func __ARRAYQUICKSORT1D ( ByRef $AVARRAY , ByRef $ISTART , ByRef $IEND )
	If $IEND <= $ISTART Then Return
	Local $VTMP
	If ( $IEND - $ISTART ) < 15 Then
		Local $VCUR
		For $I = $ISTART + 1 To $IEND
			$VTMP = $AVARRAY [ $I ]
			If IsNumber ( $VTMP ) Then
				For $J = $I - 1 To $ISTART Step - 1
					$VCUR = $AVARRAY [ $J ]
					If ( $VTMP >= $VCUR And IsNumber ( $VCUR ) ) Or ( Not IsNumber ( $VCUR ) And StringCompare ( $VTMP , $VCUR ) >= 0 ) Then ExitLoop
					$AVARRAY [ $J + 1 ] = $VCUR
				Next
			Else
				For $J = $I - 1 To $ISTART Step - 1
					If ( StringCompare ( $VTMP , $AVARRAY [ $J ] ) >= 0 ) Then ExitLoop
					$AVARRAY [ $J + 1 ] = $AVARRAY [ $J ]
				Next
			EndIf
			$AVARRAY [ $J + 1 ] = $VTMP
		Next
		Return
	EndIf
	Local $L = $ISTART , $R = $IEND , $VPIVOT = $AVARRAY [ Int ( ( $ISTART + $IEND ) / 2 ) ] , $FNUM = IsNumber ( $VPIVOT )
	Do
		If $FNUM Then
			While ( $AVARRAY [ $L ] < $VPIVOT And IsNumber ( $AVARRAY [ $L ] ) ) Or ( Not IsNumber ( $AVARRAY [ $L ] ) And StringCompare ( $AVARRAY [ $L ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $AVARRAY [ $R ] > $VPIVOT And IsNumber ( $AVARRAY [ $R ] ) ) Or ( Not IsNumber ( $AVARRAY [ $R ] ) And StringCompare ( $AVARRAY [ $R ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		Else
			While ( StringCompare ( $AVARRAY [ $L ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( StringCompare ( $AVARRAY [ $R ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			$VTMP = $AVARRAY [ $L ]
			$AVARRAY [ $L ] = $AVARRAY [ $R ]
			$AVARRAY [ $R ] = $VTMP
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT1D ( $AVARRAY , $ISTART , $R )
	__ARRAYQUICKSORT1D ( $AVARRAY , $L , $IEND )
EndFunc
Func __ARRAYQUICKSORT2D ( ByRef $AVARRAY , ByRef $ISTEP , ByRef $ISTART , ByRef $IEND , ByRef $ISUBITEM , ByRef $ISUBMAX )
	If $IEND <= $ISTART Then Return
	Local $VTMP , $L = $ISTART , $R = $IEND , $VPIVOT = $AVARRAY [ Int ( ( $ISTART + $IEND ) / 2 ) ] [ $ISUBITEM ] , $FNUM = IsNumber ( $VPIVOT )
	Do
		If $FNUM Then
			While ( $ISTEP * ( $AVARRAY [ $L ] [ $ISUBITEM ] - $VPIVOT ) < 0 And IsNumber ( $AVARRAY [ $L ] [ $ISUBITEM ] ) ) Or ( Not IsNumber ( $AVARRAY [ $L ] [ $ISUBITEM ] ) And $ISTEP * StringCompare ( $AVARRAY [ $L ] [ $ISUBITEM ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $ISTEP * ( $AVARRAY [ $R ] [ $ISUBITEM ] - $VPIVOT ) > 0 And IsNumber ( $AVARRAY [ $R ] [ $ISUBITEM ] ) ) Or ( Not IsNumber ( $AVARRAY [ $R ] [ $ISUBITEM ] ) And $ISTEP * StringCompare ( $AVARRAY [ $R ] [ $ISUBITEM ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		Else
			While ( $ISTEP * StringCompare ( $AVARRAY [ $L ] [ $ISUBITEM ] , $VPIVOT ) < 0 )
				$L += 1
			WEnd
			While ( $ISTEP * StringCompare ( $AVARRAY [ $R ] [ $ISUBITEM ] , $VPIVOT ) > 0 )
				$R -= 1
			WEnd
		EndIf
		If $L <= $R Then
			For $I = 0 To $ISUBMAX
				$VTMP = $AVARRAY [ $L ] [ $I ]
				$AVARRAY [ $L ] [ $I ] = $AVARRAY [ $R ] [ $I ]
				$AVARRAY [ $R ] [ $I ] = $VTMP
			Next
			$L += 1
			$R -= 1
		EndIf
	Until $L > $R
	__ARRAYQUICKSORT2D ( $AVARRAY , $ISTEP , $ISTART , $R , $ISUBITEM , $ISUBMAX )
	__ARRAYQUICKSORT2D ( $AVARRAY , $ISTEP , $L , $IEND , $ISUBITEM , $ISUBMAX )
EndFunc
Func _ARRAYSWAP ( ByRef $VITEM1 , ByRef $VITEM2 )
	Local $VTMP = $VITEM1
	$VITEM1 = $VITEM2
	$VITEM2 = $VTMP
EndFunc
Func _ARRAYTOCLIP ( Const ByRef $AVARRAY , $ISTART = 0 , $IEND = 0 )
	Local $SRESULT = _ARRAYTOSTRING ( $AVARRAY , @CR , $ISTART , $IEND )
	If @error Then Return SetError ( @error , 0 , 0 )
	Return ClipPut ( $SRESULT )
EndFunc
Func _ARRAYTOSTRING ( Const ByRef $AVARRAY , $SDELIM = "|" , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , "" )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 3 , 0 , "" )
	Local $SRESULT , $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 2 , 0 , "" )
	For $I = $ISTART To $IEND
		$SRESULT &= $AVARRAY [ $I ] & $SDELIM
	Next
	Return StringTrimRight ( $SRESULT , StringLen ( $SDELIM ) )
EndFunc
Func _ARRAYTRIM ( ByRef $AVARRAY , $ITRIMNUM , $IDIRECTION = 0 , $ISTART = 0 , $IEND = 0 )
	If Not IsArray ( $AVARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If UBound ( $AVARRAY , 0 ) <> 1 Then Return SetError ( 2 , 0 , 0 )
	Local $IUBOUND = UBound ( $AVARRAY ) - 1
	If $IEND < 1 Or $IEND > $IUBOUND Then $IEND = $IUBOUND
	If $ISTART < 0 Then $ISTART = 0
	If $ISTART > $IEND Then Return SetError ( 5 , 0 , 0 )
	If $IDIRECTION Then
		For $I = $ISTART To $IEND
			$AVARRAY [ $I ] = StringTrimRight ( $AVARRAY [ $I ] , $ITRIMNUM )
		Next
	Else
		For $I = $ISTART To $IEND
			$AVARRAY [ $I ] = StringTrimLeft ( $AVARRAY [ $I ] , $ITRIMNUM )
		Next
	EndIf
	Return 1
EndFunc
Func _ARRAYUNIQUE ( $AARRAY , $IDIMENSION = 1 , $IBASE = 0 , $ICASE = 0 , $VDELIM = "|" )
	Local $IUBOUNDDIM
	If $VDELIM = "|" Then $VDELIM = Chr ( 1 )
	If Not IsArray ( $AARRAY ) Then Return SetError ( 1 , 0 , 0 )
	If Not $IDIMENSION > 0 Then
		Return SetError ( 3 , 0 , 0 )
	Else
		$IUBOUNDDIM = UBound ( $AARRAY , 1 )
		If @error Then Return SetError ( 3 , 0 , 0 )
		If $IDIMENSION > 1 Then
			Local $AARRAYTMP [ 1 ]
			For $I = 0 To $IUBOUNDDIM - 1
				_ARRAYADD ( $AARRAYTMP , $AARRAY [ $I ] [ $IDIMENSION - 1 ] )
			Next
			_ARRAYDELETE ( $AARRAYTMP , 0 )
		Else
			If UBound ( $AARRAY , 0 ) = 1 Then
				Dim $AARRAYTMP [ 1 ]
				For $I = 0 To $IUBOUNDDIM - 1
					_ARRAYADD ( $AARRAYTMP , $AARRAY [ $I ] )
				Next
				_ARRAYDELETE ( $AARRAYTMP , 0 )
			Else
				Dim $AARRAYTMP [ 1 ]
				For $I = 0 To $IUBOUNDDIM - 1
					_ARRAYADD ( $AARRAYTMP , $AARRAY [ $I ] [ $IDIMENSION - 1 ] )
				Next
				_ARRAYDELETE ( $AARRAYTMP , 0 )
			EndIf
		EndIf
	EndIf
	Local $SHOLD
	For $ICC = $IBASE To UBound ( $AARRAYTMP ) - 1
		If Not StringInStr ( $VDELIM & $SHOLD , $VDELIM & $AARRAYTMP [ $ICC ] & $VDELIM , $ICASE ) Then $SHOLD &= $AARRAYTMP [ $ICC ] & $VDELIM
	Next
	If $SHOLD Then
		$AARRAYTMP = StringSplit ( StringTrimRight ( $SHOLD , StringLen ( $VDELIM ) ) , $VDELIM , 1 )
		Return $AARRAYTMP
	EndIf
	Return SetError ( 2 , 0 , 0 )
EndFunc
Func __ARRAY_EXETERINTERNAL ( ByRef $AVARRAY , $ISTART , $ISIZE , $SDELIM , ByRef $AIDX , ByRef $ARESULT , ByRef $ICOUNT )
	If $ISTART == $ISIZE - 1 Then
		For $I = 0 To $ISIZE - 1
			$ARESULT [ $ICOUNT ] &= $AVARRAY [ $AIDX [ $I ] ] & $SDELIM
		Next
		If $SDELIM <> "" Then $ARESULT [ $ICOUNT ] = StringTrimRight ( $ARESULT [ $ICOUNT ] , 1 )
		$ICOUNT += 1
	Else
		Local $ITEMP
		For $I = $ISTART To $ISIZE - 1
			$ITEMP = $AIDX [ $I ]
			$AIDX [ $I ] = $AIDX [ $ISTART ]
			$AIDX [ $ISTART ] = $ITEMP
			__ARRAY_EXETERINTERNAL ( $AVARRAY , $ISTART + 1 , $ISIZE , $SDELIM , $AIDX , $ARESULT , $ICOUNT )
			$AIDX [ $ISTART ] = $AIDX [ $I ]
			$AIDX [ $I ] = $ITEMP
		Next
	EndIf
EndFunc
Func __ARRAY_COMBINATIONS ( $IN , $IR )
	Local $I_TOTAL = 1
	For $I = $IR To 1 Step - 1
		$I_TOTAL *= ( $IN / $I )
		$IN -= 1
	Next
	Return Round ( $I_TOTAL )
EndFunc
Func __ARRAY_GETNEXT ( $IN , $IR , ByRef $ILEFT , $ITOTAL , ByRef $AIDX )
	If $ILEFT == $ITOTAL Then
		$ILEFT -= 1
		Return
	EndIf
	Local $I = $IR - 1
	While $AIDX [ $I ] == $IN - $IR + $I
		$I -= 1
	WEnd
	$AIDX [ $I ] += 1
	For $J = $I + 1 To $IR - 1
		$AIDX [ $J ] = $AIDX [ $I ] + $J - $I
	Next
	$ILEFT -= 1
EndFunc
Global $STANDARD_RIGHTS_REQUIRED = 983040
Global $SC_MANAGER_CONNECT = 1
Global $SC_MANAGER_CREATE_SERVICE = 2
Global $SC_MANAGER_ENUMERATE_SERVICE = 4
Global $SC_MANAGER_LOCK = 8
Global $SC_MANAGER_QUERY_LOCK_STATUS = 16
Global $SC_MANAGER_MODIFY_BOOT_CONFIG = 32
Global $SC_MANAGER_ALL_ACCESS = BitOR ( $STANDARD_RIGHTS_REQUIRED , $SC_MANAGER_CONNECT , $SC_MANAGER_CREATE_SERVICE , $SC_MANAGER_ENUMERATE_SERVICE , $SC_MANAGER_LOCK , $SC_MANAGER_QUERY_LOCK_STATUS , $SC_MANAGER_MODIFY_BOOT_CONFIG )
Global $SERVICE_QUERY_CONFIG = 1
Global $SERVICE_CHANGE_CONFIG = 2
Global $SERVICE_QUERY_STATUS = 4
Global $SERVICE_ENUMERATE_DEPENDENTS = 8
Global $SERVICE_START = 16
Global $SERVICE_STOP = 32
Global $SERVICE_PAUSE_CONTINUE = 64
Global $SERVICE_INTERROGATE = 128
Global $SERVICE_USER_DEFINED_CONTROL = 256
Global $SERVICE_ALL_ACCESS = BitOR ( $STANDARD_RIGHTS_REQUIRED , $SERVICE_QUERY_CONFIG , $SERVICE_CHANGE_CONFIG , $SERVICE_QUERY_STATUS , $SERVICE_ENUMERATE_DEPENDENTS , $SERVICE_START , $SERVICE_STOP , $SERVICE_PAUSE_CONTINUE , $SERVICE_INTERROGATE , $SERVICE_USER_DEFINED_CONTROL )
Global $SERVICE_CONTROL_STOP = 1
Global $SERVICE_CONTROL_PAUSE = 2
Global $SERVICE_CONTROL_CONTINUE = 3
Global $SERVICE_CONTROL_INTERROGATE = 4
Global $SERVICE_CONTROL_SHUTDOWN = 5
Global $SERVICE_CONTROL_PARAMCHANGE = 6
Global $SERVICE_CONTROL_NETBINDADD = 7
Global $SERVICE_CONTROL_NETBINDREMOVE = 8
Global $SERVICE_CONTROL_NETBINDENABLE = 9
Global $SERVICE_CONTROL_NETBINDDISABLE = 10
Global $SERVICE_CONTROL_DEVICEEVENT = 11
Global $SERVICE_CONTROL_HARDWAREPROFILECHANGE = 12
Global $SERVICE_CONTROL_POWEREVENT = 13
Global $SERVICE_CONTROL_SESSIONCHANGE = 14
Global $SERVICE_KERNEL_DRIVER = 1
Global $SERVICE_FILE_SYSTEM_DRIVER = 2
Global $SERVICE_ADAPTER = 4
Global $SERVICE_RECOGNIZER_DRIVER = 8
Global $SERVICE_DRIVER = BitOR ( $SERVICE_KERNEL_DRIVER , $SERVICE_FILE_SYSTEM_DRIVER , $SERVICE_RECOGNIZER_DRIVER )
Global $SERVICE_WIN32_OWN_PROCESS = 16
Global $SERVICE_WIN32_SHARE_PROCESS = 32
Global $SERVICE_WIN32 = BitOR ( $SERVICE_WIN32_OWN_PROCESS , $SERVICE_WIN32_SHARE_PROCESS )
Global $SERVICE_INTERACTIVE_PROCESS = 256
Global $SERVICE_TYPE_ALL = BitOR ( $SERVICE_WIN32 , $SERVICE_ADAPTER , $SERVICE_DRIVER , $SERVICE_INTERACTIVE_PROCESS )
Global $SERVICE_BOOT_START = 0
Global $SERVICE_SYSTEM_START = 1
Global $SERVICE_AUTO_START = 2
Global $SERVICE_DEMAND_START = 3
Global $SERVICE_DISABLED = 4
Global $SERVICE_ERROR_IGNORE = 0
Global $SERVICE_ERROR_NORMAL = 1
Global $SERVICE_ERROR_SEVERE = 2
Global $SERVICE_ERROR_CRITICAL = 3
Func _STARTSERVICE ( $SCOMPUTERNAME , $SSERVICENAME )
	Local $HADVAPI32
	Local $HKERNEL32
	Local $ARRET
	Local $HSC
	Local $HSERVICE
	Local $LERROR = - 1
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$HKERNEL32 = DllOpen ( "kernel32.dll" )
	If $HKERNEL32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_CONNECT )
	If $ARRET [ 0 ] = 0 Then
		$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
		$LERROR = $ARRET [ 0 ]
	Else
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_START )
		If $ARRET [ 0 ] = 0 Then
			$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
			$LERROR = $ARRET [ 0 ]
		Else
			$HSERVICE = $ARRET [ 0 ]
			$ARRET = DllCall ( $HADVAPI32 , "int" , "StartService" , "long" , $HSERVICE , "long" , 0 , "str" , "" )
			If $ARRET [ 0 ] = 0 Then
				$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
				$LERROR = $ARRET [ 0 ]
			EndIf
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSERVICE )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	DllClose ( $HKERNEL32 )
	If $LERROR <> - 1 Then
		SetError ( $LERROR )
		Return 0
	EndIf
	Return 1
EndFunc
Func _STOPSERVICE ( $SCOMPUTERNAME , $SSERVICENAME )
	Local $HADVAPI32
	Local $HKERNEL32
	Local $ARRET
	Local $HSC
	Local $HSERVICE
	Local $LERROR = - 1
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$HKERNEL32 = DllOpen ( "kernel32.dll" )
	If $HKERNEL32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_CONNECT )
	If $ARRET [ 0 ] = 0 Then
		$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
		$LERROR = $ARRET [ 0 ]
	Else
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_STOP )
		If $ARRET [ 0 ] = 0 Then
			$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
			$LERROR = $ARRET [ 0 ]
		Else
			$HSERVICE = $ARRET [ 0 ]
			$ARRET = DllCall ( $HADVAPI32 , "int" , "ControlService" , "long" , $HSERVICE , "long" , $SERVICE_CONTROL_STOP , "str" , "" )
			If $ARRET [ 0 ] = 0 Then
				$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
				$LERROR = $ARRET [ 0 ]
			EndIf
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSERVICE )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	DllClose ( $HKERNEL32 )
	If $LERROR <> - 1 Then
		SetError ( $LERROR )
		Return 0
	EndIf
	Return 1
EndFunc
Func _SERVICEEXISTS ( $SCOMPUTERNAME , $SSERVICENAME )
	Local $HADVAPI32
	Local $ARRET
	Local $HSC
	Local $BEXIST = 0
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_CONNECT )
	If $ARRET [ 0 ] <> 0 Then
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_INTERROGATE )
		If $ARRET [ 0 ] <> 0 Then
			$BEXIST = 1
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $ARRET [ 0 ] )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	Return $BEXIST
EndFunc
Func _SERVICERUNNING ( $SCOMPUTERNAME , $SSERVICENAME )
	Local $HADVAPI32
	Local $ARRET
	Local $HSC
	Local $HSERVICE
	Local $BRUNNING = 0
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_CONNECT )
	If $ARRET [ 0 ] <> 0 Then
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_INTERROGATE )
		If $ARRET [ 0 ] <> 0 Then
			$HSERVICE = $ARRET [ 0 ]
			$ARRET = DllCall ( $HADVAPI32 , "int" , "ControlService" , "long" , $HSERVICE , "long" , $SERVICE_CONTROL_INTERROGATE , "str" , "" )
			$BRUNNING = $ARRET [ 0 ]
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSERVICE )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	Return $BRUNNING
EndFunc
Func _CREATESERVICE ( $SCOMPUTERNAME , $SSERVICENAME , $SDISPLAYNAME , $SBINARYPATH , $SSERVICEUSER = "LocalSystem" , $SPASSWORD = "" , $NSERVICETYPE = 16 , $NSTARTTYPE = 2 , $NERRORTYPE = 1 , $NDESIREDACCESS = 983551 , $SLOADORDERGROUP = "" )
	Local $HADVAPI32
	Local $HKERNEL32
	Local $ARRET
	Local $HSC
	Local $LERROR = - 1
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$HKERNEL32 = DllOpen ( "kernel32.dll" )
	If $HKERNEL32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_ALL_ACCESS )
	If $ARRET [ 0 ] = 0 Then
		$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
		$LERROR = $ARRET [ 0 ]
	Else
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_INTERROGATE )
		If $ARRET [ 0 ] = 0 Then
			$ARRET = DllCall ( $HADVAPI32 , "long" , "CreateService" , "long" , $HSC , "str" , $SSERVICENAME , "str" , $SDISPLAYNAME , "long" , $NDESIREDACCESS , "long" , $NSERVICETYPE , "long" , $NSTARTTYPE , "long" , $NERRORTYPE , "str" , $SBINARYPATH , "str" , $SLOADORDERGROUP , "ptr" , 0 , "str" , "" , "str" , $SSERVICEUSER , "str" , $SPASSWORD )
			If $ARRET [ 0 ] = 0 Then
				$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
				$LERROR = $ARRET [ 0 ]
			Else
				DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $ARRET [ 0 ] )
			EndIf
		Else
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $ARRET [ 0 ] )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	DllClose ( $HKERNEL32 )
	If $LERROR <> - 1 Then
		SetError ( $LERROR )
		Return 0
	EndIf
	Return 1
EndFunc
Func _DELETESERVICE ( $SCOMPUTERNAME , $SSERVICENAME )
	Local $HADVAPI32
	Local $HKERNEL32
	Local $ARRET
	Local $HSC
	Local $HSERVICE
	Local $LERROR = - 1
	$HADVAPI32 = DllOpen ( "advapi32.dll" )
	If $HADVAPI32 = - 1 Then Return 0
	$HKERNEL32 = DllOpen ( "kernel32.dll" )
	If $HKERNEL32 = - 1 Then Return 0
	$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenSCManager" , "str" , $SCOMPUTERNAME , "str" , "ServicesActive" , "long" , $SC_MANAGER_ALL_ACCESS )
	If $ARRET [ 0 ] = 0 Then
		$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
		$LERROR = $ARRET [ 0 ]
	Else
		$HSC = $ARRET [ 0 ]
		$ARRET = DllCall ( $HADVAPI32 , "long" , "OpenService" , "long" , $HSC , "str" , $SSERVICENAME , "long" , $SERVICE_ALL_ACCESS )
		If $ARRET [ 0 ] = 0 Then
			$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
			$LERROR = $ARRET [ 0 ]
		Else
			$HSERVICE = $ARRET [ 0 ]
			$ARRET = DllCall ( $HADVAPI32 , "int" , "DeleteService" , "long" , $HSERVICE )
			If $ARRET [ 0 ] = 0 Then
				$ARRET = DllCall ( $HKERNEL32 , "long" , "GetLastError" )
				$LERROR = $ARRET [ 0 ]
			EndIf
			DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSERVICE )
		EndIf
		DllCall ( $HADVAPI32 , "int" , "CloseServiceHandle" , "long" , $HSC )
	EndIf
	DllClose ( $HADVAPI32 )
	DllClose ( $HKERNEL32 )
	If $LERROR <> - 1 Then
		SetError ( $LERROR )
		Return 0
	EndIf
	Return 1
EndFunc
Global Const $GUI_EVENT_CLOSE = - 3
Global Const $GUI_EVENT_MINIMIZE = - 4
Global Const $GUI_EVENT_RESTORE = - 5
Global Const $GUI_EVENT_MAXIMIZE = - 6
Global Const $GUI_EVENT_PRIMARYDOWN = - 7
Global Const $GUI_EVENT_PRIMARYUP = - 8
Global Const $GUI_EVENT_SECONDARYDOWN = - 9
Global Const $GUI_EVENT_SECONDARYUP = - 10
Global Const $GUI_EVENT_MOUSEMOVE = - 11
Global Const $GUI_EVENT_RESIZED = - 12
Global Const $GUI_EVENT_DROPPED = - 13
Global Const $GUI_RUNDEFMSG = "GUI_RUNDEFMSG"
Global Const $GUI_AVISTOP = 0
Global Const $GUI_AVISTART = 1
Global Const $GUI_AVICLOSE = 2
Global Const $GUI_CHECKED = 1
Global Const $GUI_INDETERMINATE = 2
Global Const $GUI_UNCHECKED = 4
Global Const $GUI_DROPACCEPTED = 8
Global Const $GUI_NODROPACCEPTED = 4096
Global Const $GUI_ACCEPTFILES = $GUI_DROPACCEPTED
Global Const $GUI_SHOW = 16
Global Const $GUI_HIDE = 32
Global Const $GUI_ENABLE = 64
Global Const $GUI_DISABLE = 128
Global Const $GUI_FOCUS = 256
Global Const $GUI_NOFOCUS = 8192
Global Const $GUI_DEFBUTTON = 512
Global Const $GUI_EXPAND = 1024
Global Const $GUI_ONTOP = 2048
Global Const $GUI_FONTITALIC = 2
Global Const $GUI_FONTUNDER = 4
Global Const $GUI_FONTSTRIKE = 8
Global Const $GUI_DOCKAUTO = 1
Global Const $GUI_DOCKLEFT = 2
Global Const $GUI_DOCKRIGHT = 4
Global Const $GUI_DOCKHCENTER = 8
Global Const $GUI_DOCKTOP = 32
Global Const $GUI_DOCKBOTTOM = 64
Global Const $GUI_DOCKVCENTER = 128
Global Const $GUI_DOCKWIDTH = 256
Global Const $GUI_DOCKHEIGHT = 512
Global Const $GUI_DOCKSIZE = 768
Global Const $GUI_DOCKMENUBAR = 544
Global Const $GUI_DOCKSTATEBAR = 576
Global Const $GUI_DOCKALL = 802
Global Const $GUI_DOCKBORDERS = 102
Global Const $GUI_GR_CLOSE = 1
Global Const $GUI_GR_LINE = 2
Global Const $GUI_GR_BEZIER = 4
Global Const $GUI_GR_MOVE = 6
Global Const $GUI_GR_COLOR = 8
Global Const $GUI_GR_RECT = 10
Global Const $GUI_GR_ELLIPSE = 12
Global Const $GUI_GR_PIE = 14
Global Const $GUI_GR_DOT = 16
Global Const $GUI_GR_PIXEL = 18
Global Const $GUI_GR_HINT = 20
Global Const $GUI_GR_REFRESH = 22
Global Const $GUI_GR_PENSIZE = 24
Global Const $GUI_GR_NOBKCOLOR = - 2
Global Const $GUI_BKCOLOR_DEFAULT = - 1
Global Const $GUI_BKCOLOR_TRANSPARENT = - 2
Global Const $GUI_BKCOLOR_LV_ALTERNATE = 4261412864
Global Const $GUI_WS_EX_PARENTDRAG = 1048576
Global Const $SS_LEFT = 0
Global Const $SS_CENTER = 1
Global Const $SS_RIGHT = 2
Global Const $SS_ICON = 3
Global Const $SS_BLACKRECT = 4
Global Const $SS_GRAYRECT = 5
Global Const $SS_WHITERECT = 6
Global Const $SS_BLACKFRAME = 7
Global Const $SS_GRAYFRAME = 8
Global Const $SS_WHITEFRAME = 9
Global Const $SS_SIMPLE = 11
Global Const $SS_LEFTNOWORDWRAP = 12
Global Const $SS_BITMAP = 14
Global Const $SS_ETCHEDHORZ = 16
Global Const $SS_ETCHEDVERT = 17
Global Const $SS_ETCHEDFRAME = 18
Global Const $SS_NOPREFIX = 128
Global Const $SS_NOTIFY = 256
Global Const $SS_CENTERIMAGE = 512
Global Const $SS_RIGHTJUST = 1024
Global Const $SS_SUNKEN = 4096
Global Const $GUI_SS_DEFAULT_LABEL = 0
Global Const $GUI_SS_DEFAULT_GRAPHIC = 0
Global Const $GUI_SS_DEFAULT_ICON = $SS_NOTIFY
Global Const $GUI_SS_DEFAULT_PIC = $SS_NOTIFY
Func _SERVICEWHITELISTED ( $SNAME )
	$WHITELIST = False
	If @OSVersion = "WIN_7" Then
		$WHITELIST = True
		Switch $SNAME
		Case "AudioEndpointBuilder"
		Case "AudioSrv"
		Case "BFE"
		Case "BITS"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "Dhcp"
		Case "Dnscache"
		Case "DPS"
		Case "eventlog"
		Case "EventSystem"
		Case "gpsvc"
		Case "iphlpsvc"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "lmhosts"
		Case "MMCSS"
		Case "MpsSvc"
		Case "NlaSvc"
		Case "nsi"
		Case "PcaSvc"
		Case "PlugPlay"
		Case "Power"
		Case "ProfSvc"
		Case "RpcEptMapper"
		Case "RpcSs"
		Case "SamSs"
		Case "Schedule"
		Case "SENS"
		Case "ShellHWDetection"
		Case "Spooler"
		Case "sppsvc"
		Case "SysMain"
		Case "Themes"
		Case "TrkWks"
		Case "TrustedInstaller"
		Case "UxSms"
		Case "WinDefend"
		Case "Winmgmt"
		Case "wscsvc"
		Case "WSearch"
		Case "wuauserv"
		Case "wudfsvc"
		Case "AeLookupSvc"
		Case "Appinfo"
		Case "fdPHost"
		Case "FDResPub"
		Case "HomeGroupProvider"
		Case "Netman"
		Case "netprofm"
		Case "SSDPSRV"
		Case "W32Time"
		Case "WdiServiceHost"
		Case "WdiSystemHost"
		Case "WinHttpAutoProxySvc"
		Case "WMPNetworkSvc"
		Case "ALG"
		Case "AppIDSvc"
		Case "AxInstSV"
		Case "BDESVC"
		Case "Browser"
		Case "bthserv"
		Case "CertPropSvc"
		Case "clr_optimization_v2.0.50727_32"
		Case "clr_optimization_v2.0.50727_64"
		Case "COMSysApp"
		Case "defragsvc"
		Case "dot3svc"
		Case "EapHost"
		Case "EFS"
		Case "ehRecvr"
		Case "ehSched"
		Case "Fax"
		Case "FontCache"
		Case "FontCache3.0.0.0"
		Case "hidserv"
		Case "hkmsvc"
		Case "HomeGroupListener"
		Case "idsvc"
		Case "IKEEXT"
		Case "IPBusEnum"
		Case "KeyIso"
		Case "KtmRm"
		Case "lltdsvc"
		Case "MSDTC"
		Case "MSiSCSI"
		Case "msiserver"
		Case "napagent"
		Case "Netlogon"
		Case "p2pimsvc"
		Case "p2psvc"
		Case "PerfHost"
		Case "pla"
		Case "PNRPAutoReg"
		Case "PNRPsvc"
		Case "PolicyAgent"
		Case "ProtectedStorage"
		Case "QWAVE"
		Case "RasAuto"
		Case "RasMan"
		Case "RemoteRegistry"
		Case "RpcLocator"
		Case "SCardSvr"
		Case "SCPolicySvc"
		Case "SDRSVC"
		Case "seclogon"
		Case "SensrSvc"
		Case "SessionEnv"
		Case "SNMPTRAP"
		Case "sppuinotify"
		Case "SstpSvc"
		Case "stisvc"
		Case "swprv"
		Case "TabletInputService"
		Case "TapiSrv"
		Case "TBS"
		Case "TermService"
		Case "THREADORDER"
		Case "UI0Detect"
		Case "upnphost"
		Case "VaultSvc"
		Case "vds"
		Case "VSS"
		Case "wbengine"
		Case "WbioSrvc"
		Case "wcncsvc"
		Case "WcsPlugInService"
		Case "WebClient"
		Case "Wecsvc"
		Case "wercplsupport"
		Case "WerSvc"
		Case "WinRM"
		Case "Wlansvc"
		Case "wmiApSrv"
		Case "WPCSvc"
		Case "WPDBusEnum"
		Case "WwanSvc"
		Case "Mcx2Svc"
		Case "NetTcpPortSharing"
		Case "RemoteAccess"
		Case "SharedAccess"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_vista" Then
		$WHITELIST = True
		Switch $SNAME
		Case "ACPI"
		Case "AFD"
		Case "ALG"
		Case "AeLookupSvc"
		Case "AmdK7"
		Case "AmdK8"
		Case "Appinfo"
		Case "AsyncMac"
		Case "AudioEndpointBuilder"
		Case "Audiosrv"
		Case "BFE"
		Case "BITS"
		Case "BTHMODEM"
		Case "BrFiltLo"
		Case "BrFiltUp"
		Case "BrSerWdm"
		Case "BrUsbMdm"
		Case "BrUsbSer"
		Case "Browser"
		Case "Brserid"
		Case "CLFS"
		Case "COMSysApp"
		Case "CertPropSvc"
		Case "Compbatt"
		Case "Crusoe"
		Case "CryptSvc"
		Case "DFSR"
		Case "DPS"
		Case "DXGKrnl"
		Case "DcomLaunch"
		Case "DfsC"
		Case "Dhcp"
		Case "Dnscache"
		Case "E1G60"
		Case "EMDMgmt"
		Case "EapHost"
		Case "Ecache"
		Case "EventSystem"
		Case "Eventlog"
		Case "FDResPub"
		Case "FileInfo"
		Case "Filetrace"
		Case "FltMgr"
		Case "FontCache3.0.0.0"
		Case "HDAudBus"
		Case "HTTP"
		Case "HidBth"
		Case "HidIr"
		Case "HidUsb"
		Case "HpCISSs"
		Case "IKEEXT"
		Case "IPBusEnum"
		Case "IPMIDRV"
		Case "IPNAT"
		Case "IRENUM"
		Case "IpFilterDriver"
		Case "IpInIp"
		Case "KSecDD"
		Case "KeyIso"
		Case "KtmRm"
		Case "LSI_FC"
		Case "LSI_SAS"
		Case "LSI_SCSI"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "MMCSS"
		Case "MRxDAV"
		Case "MSDTC"
		Case "MSiSCSI"
		Case "Mcx2Svc"
		Case "Modem"
		Case "MountMgr"
		Case "MpsSvc"
		Case "Mraid35x"
		Case "Mup"
		Case "NDIS"
		Case "NativeWifiP"
		Case "NdisTapi"
		Case "NdisWan"
		Case "Ndisuio"
		Case "NetBIOS"
		Case "NetTcpPortSharing"
		Case "Netlogon"
		Case "Netman"
		Case "NlaSvc"
		Case "NwlnkFlt"
		Case "NwlnkFwd"
		Case "PEAUTH"
		Case "PNRPAutoReg"
		Case "PNRPsvc"
		Case "PSched"
		Case "Parport"
		Case "Parvdm"
		Case "PcaSvc"
		Case "PlugPlay"
		Case "PolicyAgent"
		Case "PptpMiniport"
		Case "Processor"
		Case "ProfSvc"
		Case "ProtectedStorage"
		Case "QWAVE"
		Case "QWAVEdrv"
		Case "RDPCDD"
		Case "RDPENCDD"
		Case "RasAcd"
		Case "RasAuto"
		Case "RasMan"
		Case "RasPppoe"
		Case "Rasl2tp"
		Case "RemoteRegistry"
		Case "RpcLocator"
		Case "RpcSs"
		Case "SCPolicySvc"
		Case "SCardSvr"
		Case "SDRSVC"
		Case "SENS"
		Case "SLUINotify"
		Case "SNMPTRAP"
		Case "SSDPSRV"
		Case "SamSs"
		Case "Schedule"
		Case "Serenum"
		Case "Serial"
		Case "SessionEnv"
		Case "ShellHWDetection"
		Case "SiSRaid2"
		Case "SiSRaid4"
		Case "Smb"
		Case "Spooler"
		Case "SstpSvc"
		Case "Sym_hi"
		Case "Sym_u3"
		Case "Symc8xx"
		Case "SysMain"
		Case "TBS"
		Case "TDPIPE"
		Case "TDTCP"
		Case "THREADORDER"
		Case "TabletInputService"
		Case "TapiSrv"
		Case "Tcpip"
		Case "Tcpip6"
		Case "TermDD"
		Case "TermService"
		Case "Themes"
		Case "TrkWks"
		Case "TrustedInstaller"
		Case "UI0Detect"
		Case "USBSTOR"
		Case "UlSata"
		Case "UxSms"
		Case "VSS"
		Case "VgaSave"
		Case "ViaC7"
		Case "W32Time"
		Case "WMPNetworkSvc"
		Case "WPCSvc"
		Case "WPDBusEnum"
		Case "WSearch"
		Case "WacomPen"
		Case "Wanarp"
		Case "Wanarpv6"
		Case "WcsPlugInService"
		Case "Wd"
		Case "Wdf01000"
		Case "WdiServiceHost"
		Case "WdiSystemHost"
		Case "WebClient"
		Case "Wecsvc"
		Case "WerSvc"
		Case "WinDefend"
		Case "WinHttpAutoProxySvc"
		Case "WinRM"
		Case "Winmgmt"
		Case "Wlansvc"
		Case "adp94xx"
		Case "adpahci"
		Case "adpu160m"
		Case "adpu320"
		Case "agp440"
		Case "aic78xx"
		Case "aliide"
		Case "amdagp"
		Case "amdide"
		Case "arc"
		Case "arcsas"
		Case "atapi"
		Case "blbdrive"
		Case "bowser"
		Case "cdfs"
		Case "cdrom"
		Case "circlass"
		Case "clr_optimization_v2.0.50727_32"
		Case "cmdide"
		Case "crcdisk"
		Case "dc21x4vm"
		Case "disk"
		Case "dot3svc"
		Case "ehRecvr"
		Case "ehSched"
		Case "ehstart"
		Case "elxstor"
		Case "fdPHost"
		Case "fdc"
		Case "flpydisk"
		Case "gagp30kx"
		Case "gpsvc"
		Case "hidserv"
		Case "hkmsvc"
		Case "i2omp"
		Case "i8042prt"
		Case "iScsiPrt"
		Case "iaStorV"
		Case "idsvc"
		Case "iirsp"
		Case "intelide"
		Case "intelppm"
		Case "iphlpsvc"
		Case "isapnp"
		Case "iteatapi"
		Case "iteraid"
		Case "kbdclass"
		Case "kbdhid"
		Case "lltdio"
		Case "lltdsvc"
		Case "lmhosts"
		Case "luafv"
		Case "megasas"
		Case "monitor"
		Case "mouclass"
		Case "mouhid"
		Case "mpio"
		Case "mpsdrv"
		Case "mrxsmb"
		Case "mrxsmb10"
		Case "mrxsmb20"
		Case "msahci"
		Case "msdsm"
		Case "msisadrv"
		Case "msiserver"
		Case "mssmbios"
		Case "napagent"
		Case "netbt"
		Case "netprofm"
		Case "nfrd960"
		Case "nsi"
		Case "nsiproxy"
		Case "ntrigdigi"
		Case "nv_agp"
		Case "nvraid"
		Case "nvstor"
		Case "ohci1394"
		Case "p2pimsvc"
		Case "p2psvc"
		Case "partmgr"
		Case "pci"
		Case "pciide"
		Case "pcmcia"
		Case "pla"
		Case "ql2300"
		Case "ql40xx"
		Case "rdbss"
		Case "rdpdr"
		Case "rspndr"
		Case "sbp2port"
		Case "seclogon"
		Case "sermouse"
		Case "sffdisk"
		Case "sffp_mmc"
		Case "sffp_sd"
		Case "sfloppy"
		Case "sisagp"
		Case "slsvc"
		Case "srv"
		Case "srv2"
		Case "srvnet"
		Case "stisvc"
		Case "swenum"
		Case "swprv"
		Case "tcpipreg"
		Case "tdx"
		Case "tssecsrv"
		Case "tunnel"
		Case "uagp35"
		Case "udfs"
		Case "uliagpkx"
		Case "uliahci"
		Case "ulsata2"
		Case "umbus"
		Case "upnphost"
		Case "usbccgp"
		Case "usbcir"
		Case "usbehci"
		Case "usbhub"
		Case "usbohci"
		Case "usbprint"
		Case "usbuhci"
		Case "vds"
		Case "vga"
		Case "viaagp"
		Case "viaide"
		Case "volmgr"
		Case "volmgrx"
		Case "volsnap"
		Case "vsmraid"
		Case "wcncsvc"
		Case "wercplsupport"
		Case "wmiApSrv"
		Case "wscsvc"
		Case "wuauserv"
		Case "wudfsvc"
		Case "RemoteAccess"
		Case "SharedAccess"
		Case "CscService"
		Case "AppMgmt"
		Case "clr_optimization_v2.0.50727_64"
		Case "Fax"
		Case "UmRdpService"
		Case "wbengine"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $SNAME
		Case "1-vmsrvc"
		Case "AudioSrv"
		Case "Browser"
		Case "CryptSvc"
		Case "Dhcp"
		Case "dmserver"
		Case "Dnscache"
		Case "ERSvc"
		Case "Eventlog"
		Case "helpsvc"
		Case "lanmanserver"
		Case "lanmanworkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "PlugPlay"
		Case "PolicyAgent"
		Case "ProtectedStorage"
		Case "RemoteRegistry"
		Case "RpcSs"
		Case "SamSs"
		Case "Schedule"
		Case "seclogon"
		Case "SENS"
		Case "ShellHWDetection"
		Case "Spooler"
		Case "srservice"
		Case "Themes"
		Case "TrkWks"
		Case "uploadmgr"
		Case "VPCMap"
		Case "W32Time"
		Case "WebClient"
		Case "winmgmt"
		Case "WmdmPmSp"
		Case "wuauserv"
		Case "WZCSVC"
		Case "EventSystem"
		Case "FastUserSwitchingCompatibility"
		Case "Netman"
		Case "Nla"
		Case "SSDPSRV"
		Case "TermService"
		Case "Alerter"
		Case "ALG"
		Case "AppMgmt"
		Case "BITS"
		Case "cisvc"
		Case "ClipSrv"
		Case "COMSysApp"
		Case "dmadmin"
		Case "ImapiService"
		Case "mnmsrvc"
		Case "MSDTC"
		Case "MSIServer"
		Case "NetDDE"
		Case "NetDDEdsdm"
		Case "Netlogon"
		Case "NtLmSsp"
		Case "NtmsSvc"
		Case "RasAuto"
		Case "RasMan"
		Case "RDSessMgr"
		Case "RpcLocator"
		Case "RSVP"
		Case "SCardDrv"
		Case "SCardSvr"
		Case "SharedAccess"
		Case "stisvc"
		Case "SwPrv"
		Case "SysmonLog"
		Case "TapiSrv"
		Case "TlntSvr"
		Case "upnphost"
		Case "UPS"
		Case "VSS"
		Case "Wmi"
		Case "WmiApSrv"
		Case "MSIServer"
		Case "DcomLaunch"
		Case "SharedAccess"
		Case "wscsvc"
		Case "ALG"
		Case "Browser"
		Case "CiSvc"
		Case "dmserver"
		Case "HTTPFilter"
		Case "WmdmPmSN"
		Case "xmlprov"
		Case "Alerter"
		Case "ClipSrv"
		Case "HidServ"
		Case "Messenger"
		Case "NetDDE"
		Case "remoteaccess"
		Case "Dot3svc"
		Case "EapHost"
		Case "hkmsvc"
		Case "napagent"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $SNAME
		Case "1-vmsrvc"
		Case "Dhcp"
		Case "dmserver"
		Case "Dnscache"
		Case "Eventlog"
		Case "lanmanserver"
		Case "lanmanworkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "NtmsSvc"
		Case "PlugPlay"
		Case "PolicyAgent"
		Case "ProtectedStorage"
		Case "RemoteRegistry"
		Case "RpcSs"
		Case "SamSs"
		Case "Schedule"
		Case "seclogon"
		Case "SENS"
		Case "Spooler"
		Case "TrkWks"
		Case "VPCMap"
		Case "WinMgmt"
		Case "wuauserv"
		Case "EventSystem"
		Case "Netman"
		Case "RasMan"
		Case "TapiSrv"
		Case "Wmi"
		Case "Alerter"
		Case "AppMgmt"
		Case "BITS"
		Case "Browser"
		Case "cisvc"
		Case "ClipSrv"
		Case "dmadmin"
		Case "Fax"
		Case "mnmsrvc"
		Case "MSDTC"
		Case "MSIServer"
		Case "NetDDE"
		Case "NetDDEdsdm"
		Case "Netlogon"
		Case "NtLmSsp"
		Case "RasAuto"
		Case "RpcLocator"
		Case "RSVP"
		Case "SCardDrv"
		Case "SCardSvr"
		Case "SharedAccess"
		Case "SysmonLog"
		Case "TlntSvr"
		Case "UPS"
		Case "UtilMan"
		Case "W32Time"
		Case "WZCSVC"
		Case "RemoteAccess"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _DRIVERWHITELISTED ( $DNAME )
	$WHITELIST = False
	If @OSVersion = "WIN_7" Then
		$WHITELIST = True
		Switch $DNAME
		Case "ACPI"
		Case "amdxata"
		Case "atapi"
		Case "CLFS"
		Case "CNG"
		Case "Disk"
		Case "FileInfo"
		Case "FltMgr"
		Case "fvevol"
		Case "hwpolicy"
		Case "intelide"
		Case "KSecDD"
		Case "KSecPkg"
		Case "mountmgr"
		Case "msisadrv"
		Case "Mup"
		Case "NDIS"
		Case "partmgr"
		Case "pci"
		Case "pcw"
		Case "pcw"
		Case "spldr"
		Case "storflt"
		Case "Tcpip"
		Case "vdrvroot"
		Case "volmgr"
		Case "volmgrx"
		Case "volsnap"
		Case "Wdf01000"
		Case "AFD"
		Case "Beep"
		Case "blbdrive"
		Case "cdrom"
		Case "DfsC"
		Case "discache"
		Case "Msfs"
		Case "mssmbios"
		Case "NetBIOS"
		Case "NetBT"
		Case "Npfs"
		Case "nsiproxy"
		Case "Null"
		Case "Psched"
		Case "rdbss"
		Case "RDPCDD"
		Case "RDPENCDD"
		Case "RDPREFMP"
		Case "Serial"
		Case "tdx"
		Case "TermDD"
		Case "VgaSave"
		Case "Wanarpv6"
		Case "WfpLwf"
		Case "lltdio"
		Case "luafv"
		Case "PEAUTH"
		Case "rspndr"
		Case "secdrv"
		Case "tcpipreg"
		Case "1394ohci"
		Case "bowser"
		Case "CompositeBus"
		Case "DXGKrnl"
		Case "fastfat"
		Case "HdAudAddService"
		Case "HDAudBus"
		Case "HTTP"
		Case "i8042prt"
		Case "intelppm"
		Case "kbdclass"
		Case "ksthunk"
		Case "monitor"
		Case "mouclass"
		Case "mpsdrv"
		Case "mrxsmb"
		Case "mrxsmb10"
		Case "mrxsmb20"
		Case "NdisTapi"
		Case "NdisWan"
		Case "NDProxy"
		Case "Ntfs"
		Case "nvlddmkm"
		Case "Parport"
		Case "PptpMiniport"
		Case "RasAgileVpn"
		Case "Rasl2tp"
		Case "RasPppoe"
		Case "RasSstp"
		Case "Serenum"
		Case "srv"
		Case "srv2"
		Case "srvnet"
		Case "swenum"
		Case "tunnel"
		Case "umbus"
		Case "usbaudio"
		Case "usbccgp"
		Case "usbehci"
		Case "usbhub"
		Case "usbuhci"
		Case "usbvideo"
		Case "WudfPf"
		Case "yukonw7"
		Case "udfs"
		Case "AcpiPmi"
		Case "adp94xx"
		Case "adpahci"
		Case "adpu320"
		Case "agp440"
		Case "aliide"
		Case "amdide"
		Case "AmdK8"
		Case "AmdPPM"
		Case "amdsata"
		Case "amdsbs"
		Case "AppID"
		Case "arc"
		Case "arcsas"
		Case "AsyncMac"
		Case "b06bdrv"
		Case "b57nd60a"
		Case "BrFiltLo"
		Case "BrFiltUp"
		Case "Brserid"
		Case "BrSerWdm"
		Case "BrUsbMdm"
		Case "BrUsbSer"
		Case "BTHMODEM"
		Case "circlass"
		Case "CmBatt"
		Case "cmdide"
		Case "Compbatt"
		Case "drmkaud"
		Case "ebdrv"
		Case "elxstor"
		Case "ErrDev"
		Case "exfat"
		Case "fdc"
		Case "Filetrace"
		Case "flpydisk"
		Case "FsDepends"
		Case "gagp30kx"
		Case "hcw85cir"
		Case "HidBatt"
		Case "HidBth"
		Case "HidIr"
		Case "HidUsb"
		Case "HpSAMD"
		Case "iaStorV"
		Case "iirsp"
		Case "IpFilterDriver"
		Case "IPMIDRV"
		Case "IPNAT"
		Case "IRENUM"
		Case "isapnp"
		Case "iScsiPrt"
		Case "kbdhid"
		Case "LSI_FC"
		Case "LSI_SAS"
		Case "LSI_SAS2"
		Case "LSI_SCSI"
		Case "megasas"
		Case "MegaSR"
		Case "Modem"
		Case "mouhid"
		Case "mpio"
		Case "MRxDAV"
		Case "msahci"
		Case "msdsm"
		Case "mshidkmdf"
		Case "MSKSSRV"
		Case "MSPCLOCK"
		Case "MSPQM"
		Case "MsRPC"
		Case "MSTEE"
		Case "MTConfig"
		Case "NativeWifiP"
		Case "NdisCap"
		Case "Ndisuio"
		Case "nfrd960"
		Case "nv_agp"
		Case "nvraid"
		Case "nvstor"
		Case "ohci1394"
		Case "pcmcia"
		Case "Processor"
		Case "ql2300"
		Case "ql40xx"
		Case "QWAVEdrv"
		Case "RasAcd"
		Case "rdpbus"
		Case "RDPWD"
		Case "sbp2port"
		Case "scfilter"
		Case "sermouse"
		Case "sffdisk"
		Case "sffp_mmc"
		Case "sffp_sd"
		Case "sfloppy"
		Case "SiSRaid2"
		Case "SiSRaid4"
		Case "Smb"
		Case "stexstor"
		Case "TCPIP6"
		Case "TDPIPE"
		Case "TDTCP"
		Case "tssecsrv"
		Case "uagp35"
		Case "uliagpkx"
		Case "UmPass"
		Case "usbcir"
		Case "usbohci"
		Case "usbprint"
		Case "USBSTOR"
		Case "vga"
		Case "vhdmp"
		Case "viaide"
		Case "vsmraid"
		Case "vwifibus"
		Case "WacomPen"
		Case "WANARP"
		Case "Wd"
		Case "WIMMount"
		Case "WmiAcpi"
		Case "WUDFRd"
		Case "cdfs"
		Case "crcdisk"
		Case "ws2ifsl"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_vista" Then
		$WHITELIST = True
		Switch $DNAME
		Case "ACPI"
		Case "atapi"
		Case "CLFS"
		Case "crcdisk"
		Case "disk"
		Case "Ecache"
		Case "FileInfo"
		Case "FltMgr"
		Case "intelide"
		Case "KSecDD"
		Case "MountMgr"
		Case "msisadrv"
		Case "Mup"
		Case "NDIS"
		Case "partmgr"
		Case "pci"
		Case "volmgr"
		Case "volmgrx"
		Case "volsnap"
		Case "Wdf01000"
		Case "AFD"
		Case "cdrom"
		Case "DfsC"
		Case "i8042prt"
		Case "kbdclass"
		Case "mouclass"
		Case "NetBIOS"
		Case "netbt"
		Case "nsiproxy"
		Case "PSched"
		Case "RasAcd"
		Case "rdbss"
		Case "RDPCDD"
		Case "RDPENCDD"
		Case "Serial"
		Case "Smb"
		Case "Tcpip"
		Case "tdx"
		Case "TermDD"
		Case "VgaSave"
		Case "Wanarpv6"
		Case "lltdio"
		Case "luafv"
		Case "Parvdm"
		Case "PEAUTH"
		Case "rspndr"
		Case "tcpipreg"
		Case "bowser"
		Case "dc21x4vm"
		Case "fdc"
		Case "flpydisk"
		Case "HTTP"
		Case "iScsiPrt"
		Case "monitor"
		Case "mpsdrv"
		Case "MRxDAV"
		Case "mrxsmb"
		Case "mrxsmb10"
		Case "mrxsmb20"
		Case "mssmbios"
		Case "NdisTapi"
		Case "NdisWan"
		Case "Parport"
		Case "PptpMiniport"
		Case "Rasl2tp"
		Case "RasPppoe"
		Case "Serenum"
		Case "srv"
		Case "srv2"
		Case "srvnet"
		Case "swenum"
		Case "tunnel"
		Case "umbus"
		Case "vga"
		Case "udfs"
		Case "agp440"
		Case "amdagp"
		Case "AsyncMac"
		Case "BrFiltLo"
		Case "BrFiltUp"
		Case "BrUsbSer"
		Case "DXGKrnl"
		Case "E1G60"
		Case "Filetrace"
		Case "gagp30kx"
		Case "IpFilterDriver"
		Case "IpInIp"
		Case "IPNAT"
		Case "IRENUM"
		Case "Modem"
		Case "NativeWifiP"
		Case "Ndisuio"
		Case "nv_agp"
		Case "NwlnkFlt"
		Case "NwlnkFwd"
		Case "QWAVEdrv"
		Case "sffp_mmc"
		Case "sffp_sd"
		Case "sisagp"
		Case "Tcpip6"
		Case "TDPIPE"
		Case "TDTCP"
		Case "tssecsrv"
		Case "uagp35"
		Case "uliagpkx"
		Case "viaagp"
		Case "Wanarp"
		Case "adp94xx"
		Case "adpahci"
		Case "adpu160m"
		Case "adpu320"
		Case "aic78xx"
		Case "aliide"
		Case "amdide"
		Case "AmdK7"
		Case "AmdK8"
		Case "arc"
		Case "arcsas"
		Case "blbdrive"
		Case "Brserid"
		Case "BrSerWdm"
		Case "BrUsbMdm"
		Case "BTHMODEM"
		Case "cdfs"
		Case "circlass"
		Case "cmdide"
		Case "Compbatt"
		Case "Crusoe"
		Case "elxstor"
		Case "HDAudBus"
		Case "HidBth"
		Case "HidIr"
		Case "HidUsb"
		Case "HpCISSs"
		Case "i2omp"
		Case "iaStorV"
		Case "iirsp"
		Case "intelppm"
		Case "IPMIDRV"
		Case "isapnp"
		Case "iteatapi"
		Case "iteraid"
		Case "kbdhid"
		Case "LSI_FC"
		Case "LSI_SAS"
		Case "LSI_SCSI"
		Case "megasas"
		Case "mouhid"
		Case "mpio"
		Case "Mraid35x"
		Case "msahci"
		Case "msdsm"
		Case "nfrd960"
		Case "ntrigdigi"
		Case "nvraid"
		Case "nvstor"
		Case "ohci1394"
		Case "pciide"
		Case "pcmcia"
		Case "Processor"
		Case "ql2300"
		Case "ql40xx"
		Case "rdpdr"
		Case "sbp2port"
		Case "sermouse"
		Case "sffdisk"
		Case "sfloppy"
		Case "SiSRaid2"
		Case "SiSRaid4"
		Case "Sym_hi"
		Case "Sym_u3"
		Case "Symc8xx"
		Case "uliahci"
		Case "UlSata"
		Case "ulsata2"
		Case "usbccgp"
		Case "usbcir"
		Case "usbehci"
		Case "usbhub"
		Case "usbohci"
		Case "usbprint"
		Case "USBSTOR"
		Case "usbuhci"
		Case "ViaC7"
		Case "viaide"
		Case "vsmraid"
		Case "WacomPen"
		Case "Wd"
		Case "RasSstp"
		Case "tunmp"
		Case "Beep"
		Case "Msfs"
		Case "Npfs"
		Case "Null"
		Case "secdrv"
		Case "NDProxy"
		Case "Ntfs"
		Case "exfat"
		Case "fastfat"
		Case "MsRPC"
		Case "RDPWD"
		Case "ws2ifsl"
		Case "spldr"
		Case "CSC"
		Case "CmBatt"
		Case "ksthunk"
		Case "WmiAcpi"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $DNAME
		Case "1-driver-vmsrvc"
		Case "Beep"
		Case "Cdrom"
		Case "Fips"
		Case "IPSec"
		Case "Kbdclass"
		Case "mnmdd"
		Case "Mouclass"
		Case "MRxSmb"
		Case "Msfs"
		Case "NetBIOS"
		Case "NetBT"
		Case "Npfs"
		Case "Null"
		Case "Processor"
		Case "RasAcd"
		Case "Rdbss"
		Case "RDPCDD"
		Case "Serial"
		Case "Tcpip"
		Case "TermDD"
		Case "VgaSave"
		Case "vpc-8042"
		Case "AFD"
		Case "MRxVPC"
		Case "ParVdm"
		Case "audstub"
		Case "ctlsb16"
		Case "DC21x4"
		Case "Fdc"
		Case "Flpydisk"
		Case "gameenum"
		Case "Gpc"
		Case "kmixer"
		Case "MRxDAV"
		Case "NdisTapi"
		Case "Ndisuio"
		Case "NdisWan"
		Case "NDProxy"
		Case "Parport"
		Case "PptpMiniport"
		Case "PSched"
		Case "Ptilink"
		Case "Rasl2tp"
		Case "RasPppoe"
		Case "Raspti"
		Case "rdpdr"
		Case "serenum"
		Case "Srv"
		Case "swenum"
		Case "sysaudio"
		Case "Update"
		Case "vpc-s3"
		Case "Wanarp"
		Case "wdmaud"
		Case "Cdfs"
		Case "Ntfs"
		Case "Cdaudio"
		Case "Changer"
		Case "i2omgmt"
		Case "Imapi"
		Case "lbrtfdc"
		Case "PCIDump"
		Case "redbook"
		Case "Sfloppy"
		Case "aec"
		Case "AsyncMac"
		Case "Atmarpc"
		Case "DMusic"
		Case "drmkaud"
		Case "IpFilterDriver"
		Case "IpInIp"
		Case "IpNat"
		Case "IRENUM"
		Case "Modem"
		Case "MSKSSRV"
		Case "MSPCLOCK"
		Case "MSPQM"
		Case "NwlnkFlt"
		Case "NwlnkFwd"
		Case "PDCOMP"
		Case "PDFRAME"
		Case "PDRELI"
		Case "PDRFRAME"
		Case "RDPWD"
		Case "s3legacy"
		Case "Secdrv"
		Case "splitter"
		Case "swmidi"
		Case "TDPIPE"
		Case "TDTCP"
		Case "WDICA"
		Case "Abiosdsk"
		Case "abp480n5"
		Case "ACPIEC"
		Case "adpu160m"
		Case "Aha154x"
		Case "aic78u2"
		Case "aic78xx"
		Case "AliIde"
		Case "amsint"
		Case "asc"
		Case "asc3350p"
		Case "asc3550"
		Case "Atdisk"
		Case "cbidf2k"
		Case "cd20xrnt"
		Case "CmdIde"
		Case "Cpqarray"
		Case "dac2w2k"
		Case "dac960nt"
		Case "dmboot"
		Case "dpti2o"
		Case "Fastfat"
		Case "hpn"
		Case "hpt3xx"
		Case "i2omp"
		Case "i8042prt"
		Case "ini910u"
		Case "mraid35x"
		Case "PCIIde"
		Case "Pcmcia"
		Case "perc2"
		Case "perc2hib"
		Case "ql1080"
		Case "Ql10wnt"
		Case "ql12160"
		Case "ql1240"
		Case "ql1280"
		Case "Simbad"
		Case "Sparrow"
		Case "sym_hi"
		Case "sym_u3"
		Case "symc810"
		Case "symc8xx"
		Case "TosIde"
		Case "Udfs"
		Case "msvmmouf"
		Case "HTTP"
		Case "mssmbios"
		Case "Ip6Fw"
		Case "dmio"
		Case "dmload"
		Case "ultra"
		Case "viaide"
		Case "ACPI"
		Case "atapi"
		Case "Compbatt"
		Case "Disk"
		Case "FltMgr"
		Case "Ftdisk"
		Case "IntelIde"
		Case "isapnp"
		Case "KSecDD"
		Case "MountMgr"
		Case "Mup"
		Case "NDIS"
		Case "PartMgr"
		Case "PCI"
		Case "sr"
		Case "VolSnap"
		Case "ac97intc"
		Case "CmBatt"
		Case "PCnet"
		Case "usbehci"
		Case "usbhub"
		Case "usbohci"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $DNAME
		Case "1-driver-vmsrvc"
		Case "Beep"
		Case "Cdrom"
		Case "Kbdclass"
		Case "mnmdd"
		Case "Mouclass"
		Case "MRxSmb"
		Case "Msfs"
		Case "NetBIOS"
		Case "NetBT"
		Case "Npfs"
		Case "Null"
		Case "Parport"
		Case "RasAcd"
		Case "Rdbss"
		Case "Serial"
		Case "Tcpip"
		Case "VgaSave"
		Case "vpc-8042"
		Case "AFD"
		Case "Fips"
		Case "MRxVPC"
		Case "ParVdm"
		Case "audstub"
		Case "ctlsb16"
		Case "DC21x4"
		Case "Fdc"
		Case "Flpydisk"
		Case "gameenum"
		Case "Gpc"
		Case "IPSEC"
		Case "NdisTapi"
		Case "NdisWan"
		Case "NDProxy"
		Case "Parallel"
		Case "PptpMiniport"
		Case "Ptilink"
		Case "Rasl2tp"
		Case "Raspti"
		Case "serenum"
		Case "Srv"
		Case "swenum"
		Case "sysaudio"
		Case "Update"
		Case "vpc-s3"
		Case "Wanarp"
		Case "wdmaud"
		Case "Cdfs"
		Case "EFS"
		Case "Fastfat"
		Case "Ntfs"
		Case "Cdaudio"
		Case "Changer"
		Case "lbrtfdc"
		Case "PCIDump"
		Case "redbook"
		Case "Sfloppy"
		Case "sglfb"
		Case "tga"
		Case "AsyncMac"
		Case "Atmarpc"
		Case "DMusic"
		Case "IpFilterDriver"
		Case "IpInIp"
		Case "IpNat"
		Case "IRENUM"
		Case "kmixer"
		Case "Modem"
		Case "MSKSSRV"
		Case "MSPCLOCK"
		Case "MSPQM"
		Case "Ndisuio"
		Case "NetDetect"
		Case "NwlnkFlt"
		Case "NwlnkFwd"
		Case "RCA"
		Case "s3legacy"
		Case "swmidi"
		Case "Abiosdsk"
		Case "abp480n5"
		Case "ACPIEC"
		Case "adpu160m"
		Case "Aha154x"
		Case "aic116x"
		Case "aic78u2"
		Case "aic78xx"
		Case "ami0nt"
		Case "amsint"
		Case "asc"
		Case "asc3350p"
		Case "asc3550"
		Case "Atdisk"
		Case "BusLogic"
		Case "cd20xrnt"
		Case "Cpqarray"
		Case "cpqarry2"
		Case "cpqfcalm"
		Case "cpqfws2e"
		Case "dac960nt"
		Case "deckzpsx"
		Case "dmboot"
		Case "Fd16_700"
		Case "fireport"
		Case "flashpnt"
		Case "i8042prt"
		Case "ini910u"
		Case "ipsraidn"
		Case "lp6nds35"
		Case "mraid35x"
		Case "Ncrc710"
		Case "PCIIde"
		Case "Pcmcia"
		Case "ql1080"
		Case "Ql10wnt"
		Case "ql1240"
		Case "ql2100"
		Case "Simbad"
		Case "Sparrow"
		Case "sym_hi"
		Case "symc810"
		Case "symc8xx"
		Case "Udfs"
		Case "ultra66"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _WINLOGONNOTIFYWHITELISTED ( $KEY )
	$WHITELIST = False
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $KEY
		Case "crypt32chain"
		Case "cryptnet"
		Case "cscdll"
		Case "ScCertProp"
		Case "Schedule"
		Case "sclgntfy"
		Case "SensLogn"
		Case "termsrv"
		Case "wlballoon"
		Case "dimsntfy"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $KEY
		Case "crypt32chain"
		Case "cryptnet"
		Case "cscdll"
		Case "sclgntfy"
		Case "SensLogn"
		Case "wzcnotif"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _SHELLSERVICEOBJECTDELAYLOADWHITELISTED ( $CLSID )
	$WHITELIST = False
	If @OSVersion = "WIN_7" Then
		Switch $CLSID
		Case "{E6FB5E20-DE35-11CF-9C87-00AA005127ED}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "WIN_VISTA" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{E6FB5E20-DE35-11CF-9C87-00AA005127ED}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{7849596a-48ea-486e-8937-a2a3009f31a9}"
		Case "{fbeb8a05-beee-4442-804e-409d6c4515e9}"
		Case "{E6FB5E20-DE35-11CF-9C87-00AA005127ED}"
		Case "{35CEC8A3-2BE6-11D2-8773-92E220524153}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "WIN_2000" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{7007ACCF-3202-11D1-AAD2-00805FC1270E}"
		Case "{E6FB5E20-DE35-11CF-9C87-00AA005127ED}"
		Case "{35CEC8A3-2BE6-11D2-8773-92E220524153}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _SHAREDTASKSCHEDULERWHITELISTED ( $CLSID )
	$WHITELIST = False
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{438755C2-A8BA-11D1-B96B-00A0C90312E1}"
		Case "{8C7461EF-2B13-11d2-BE35-3078302C2030}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "WIN_VISTA" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{8C7461EF-2B13-11d2-BE35-3078302C2030}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "WIN_2000" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{438755C2-A8BA-11D1-B96B-00A0C90312E1}"
		Case "{8C7461EF-2B13-11d2-BE35-3078302C2030}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _SHELLEXECUTEHOOKSWHITELISTED ( $CLSID )
	$WHITELIST = False
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{AEB6717E-7E19-11d0-97EE-00C04FD91972}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $CLSID
		Case "{AEB6717E-7E19-11d0-97EE-00C04FD91972}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _SECURITYPROVIDERSWHITELISTED ( $VALUE )
	$WHITELIST = False
	If @OSVersion = "win_vista" Then
		If $VALUE = "credssp.dll" Then
			$WHITELIST = True
		EndIf
	EndIf
	If @OSVersion = "win_xp" Then
		If $VALUE = "msapsspc.dll, schannel.dll, digest.dll, msnsspc.dll" Then
			$WHITELIST = True
		EndIf
	EndIf
	If @OSVersion = "win_2000" Then
		If $VALUE = "msapsspc.dll, schannel.dll, digest.dll, msnsspc.dll" Then
			$WHITELIST = True
		EndIf
	EndIf
	Return $WHITELIST
EndFunc
Func _SAFEBOOTMINIMALWHITELISTED ( $KEY )
	$WHITELIST = False
	If @OSVersion = "WIN_7" Then
		$WHITELIST = True
		Switch $KEY
		Case "AppInfo"
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "EFS"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "KeyIso"
		Case "Netlogon"
		Case "NTDS"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "Power"
		Case "Primary disk"
		Case "ProfSvc"
		Case "RpcEptMapper"
		Case "RpcSs"
		Case "sacsvr"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "SWPRV"
		Case "System Bus Extender"
		Case "TabletInputService"
		Case "TBS"
		Case "TrustedInstaller"
		Case "VDS"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "vmms"
		Case "volmgr.sys"
		Case "volmgrx.sys"
		Case "WinDefend"
		Case "WinMgmt"
		Case "WudfPf"
		Case "WudfRd"
		Case "WudfSvc"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{533C5B84-EC70-11D2-9505-00C04F79DEAF}"
		Case "{6BDD1FC1-810F-11D0-BEC7-08002BE2092F}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
		Case "{D48179BE-EC20-11D1-B6B8-00C04FA372A7}"
		Case "{D94EE5D8-D189-4994-83D2-F68D7D41B0E6}"
		Case "AFD"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_vista" Then
		$WHITELIST = True
		Switch $KEY
		Case "AppInfo"
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "KeyIso"
		Case "Netlogon"
		Case "NTDS"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "Primary disk"
		Case "ProfSvc"
		Case "RpcSs"
		Case "sacsvr"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "SWPRV"
		Case "System Bus Extender"
		Case "TabletInputService"
		Case "TBS"
		Case "TrustedInstaller"
		Case "VDS"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "volmgr.sys"
		Case "volmgrx.sys"
		Case "WinDefend"
		Case "WinMgmt"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{533C5B84-EC70-11D2-9505-00C04F79DEAF}"
		Case "{6BDD1FC1-810F-11D0-BEC7-08002BE2092F}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
		Case "{D48179BE-EC20-11D1-B6B8-00C04FA372A7}"
		Case "{D94EE5D8-D189-4994-83D2-F68D7D41B0E6}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $KEY
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "dmadmin"
		Case "dmboot.sys"
		Case "dmio.sys"
		Case "dmload.sys"
		Case "dmserver"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "Netlogon"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "Primary disk"
		Case "RpcSs"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "sr.sys"
		Case "SRService"
		Case "System Bus Extender"
		Case "vds"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "WinMgmt"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{533C5B84-EC70-11D2-9505-00C04F79DEAF}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $KEY
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "dmadmin"
		Case "dmboot.sys"
		Case "dmio.sys"
		Case "dmload.sys"
		Case "dmserver"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "Netlogon"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "Primary disk"
		Case "RpcSs"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "sglfb.sys"
		Case "System Bus Extender"
		Case "tga.sys"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "WinMgmt"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _SAFEBOOTNETWORKWHITELISTED ( $KEY )
	$WHITELIST = False
	If @OSVersion = "WIN_7" Then
		$WHITELIST = True
		Switch $KEY
		Case "AppInfo"
		Case "AppMgmt"
		Case "Base"
		Case "BFE"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "bowser"
		Case "Browser"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "dfsc"
		Case "Dhcp"
		Case "DnsCache"
		Case "Dot3Svc"
		Case "Eaphost"
		Case "EFS"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "IKEEXT"
		Case "ipnat.sys"
		Case "KeyIso"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "MPSDrv"
		Case "MPSSvc"
		Case "mrxsmb"
		Case "mrxsmb10"
		Case "mrxsmb20"
		Case "NativeWifiP"
		Case "NDIS"
		Case "NDIS Wrapper"
		Case "ndiscap"
		Case "Ndisuio"
		Case "NetBIOS"
		Case "NetBIOSGroup"
		Case "NetBT"
		Case "NetDDEGroup"
		Case "Netlogon"
		Case "NetMan"
		Case "netprofm"
		Case "Network"
		Case "NetworkProvider"
		Case "NlaSvc"
		Case "Nsi"
		Case "nsiproxy.sys"
		Case "NTDS"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "PNP_TDI"
		Case "PolicyAgent"
		Case "Power"
		Case "Primary disk"
		Case "ProfSvc"
		Case "rdbss"
		Case "rdpencdd.sys"
		Case "rdsessmgr"
		Case "RpcEptMapper"
		Case "RpcSs"
		Case "sacsvr"
		Case "SCardSvr"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "SharedAccess"
		Case "Streams Drivers"
		Case "SWPRV"
		Case "System Bus Extender"
		Case "TabletInputService"
		Case "TBS"
		Case "Tcpip"
		Case "TDI"
		Case "TrustedInstaller"
		Case "VaultSvc"
		Case "VDS"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "vmms"
		Case "volmgr.sys"
		Case "volmgrx.sys"
		Case "WinDefend"
		Case "WinMgmt"
		Case "Wlansvc"
		Case "WudfPf"
		Case "WudfRd"
		Case "WudfSvc"
		Case "WudfUsbccidDriver"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E972-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E973-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E974-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E975-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{50DD5230-BA8A-11D1-BF5D-0000F805F530}"
		Case "{533C5B84-EC70-11D2-9505-00C04F79DEAF}"
		Case "{6BDD1FC1-810F-11D0-BEC7-08002BE2092F}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
		Case "{D48179BE-EC20-11D1-B6B8-00C04FA372A7}"
		Case "{D94EE5D8-D189-4994-83D2-F68D7D41B0E6}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_vista" Then
		$WHITELIST = True
		Switch $KEY
		Case "AFD"
		Case "AppInfo"
		Case "AppMgmt"
		Case "Base"
		Case "BFE"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "bowser"
		Case "Browser"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "dfsc"
		Case "Dhcp"
		Case "DnsCache"
		Case "Dot3Svc"
		Case "Eaphost"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "IKEEXT"
		Case "ipnat.sys"
		Case "KeyIso"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "MPSDrv"
		Case "MPSSvc"
		Case "mrxsmb"
		Case "mrxsmb10"
		Case "mrxsmb20"
		Case "NativeWifiP"
		Case "NDIS"
		Case "NDIS Wrapper"
		Case "Ndisuio"
		Case "NetBIOS"
		Case "NetBIOSGroup"
		Case "NetBT"
		Case "NetDDEGroup"
		Case "Netlogon"
		Case "NetMan"
		Case "netprofm"
		Case "Network"
		Case "NetworkProvider"
		Case "NlaSvc"
		Case "Nsi"
		Case "nsiproxy.sys"
		Case "NTDS"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "PNP_TDI"
		Case "PolicyAgent"
		Case "Primary disk"
		Case "ProfSvc"
		Case "rdbss"
		Case "rdpencdd.sys"
		Case "rdsessmgr"
		Case "RpcSs"
		Case "sacsvr"
		Case "SCardSvr"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "SharedAccess"
		Case "Streams Drivers"
		Case "SWPRV"
		Case "System Bus Extender"
		Case "TabletInputService"
		Case "TBS"
		Case "Tcpip"
		Case "TDI"
		Case "TrustedInstaller"
		Case "VDS"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "volmgr.sys"
		Case "volmgrx.sys"
		Case "WinDefend"
		Case "WinMgmt"
		Case "Wlansvc"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E972-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E973-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E974-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E975-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{50DD5230-BA8A-11D1-BF5D-0000F805F530}"
		Case "{533C5B84-EC70-11D2-9505-00C04F79DEAF}"
		Case "{6BDD1FC1-810F-11D0-BEC7-08002BE2092F}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
		Case "{D48179BE-EC20-11D1-B6B8-00C04FA372A7}"
		Case "{D94EE5D8-D189-4994-83D2-F68D7D41B0E6}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_xp" Then
		$WHITELIST = True
		Switch $KEY
		Case "AFD"
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "Browser"
		Case "CryptSvc"
		Case "DcomLaunch"
		Case "Dhcp"
		Case "dmadmin"
		Case "dmboot.sys"
		Case "dmio.sys"
		Case "dmload.sys"
		Case "dmserver"
		Case "DnsCache"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "HelpSvc"
		Case "ip6fw.sys"
		Case "ipnat.sys"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "NDIS"
		Case "NDIS Wrapper"
		Case "Ndisuio"
		Case "NetBIOS"
		Case "NetBIOSGroup"
		Case "NetBT"
		Case "NetDDEGroup"
		Case "Netlogon"
		Case "NetMan"
		Case "Network"
		Case "NetworkProvider"
		Case "NtLmSsp"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "PNP_TDI"
		Case "Primary disk"
		Case "rdpcdd.sys"
		Case "rdpdd.sys"
		Case "rdpwd.sys"
		Case "rdsessmgr"
		Case "RpcSs"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "SharedAccess"
		Case "sr.sys"
		Case "SRService"
		Case "Streams Drivers"
		Case "System Bus Extender"
		Case "Tcpip"
		Case "TDI"
		Case "tdpipe.sys"
		Case "tdtcp.sys"
		Case "termservice"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "WinMgmt"
		Case "WZCSVC"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E972-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E973-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E974-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E975-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	If @OSVersion = "win_2000" Then
		$WHITELIST = True
		Switch $KEY
		Case "AFD"
		Case "AppMgmt"
		Case "Base"
		Case "Boot Bus Extender"
		Case "Boot file system"
		Case "Browser"
		Case "Dhcp"
		Case "dmadmin"
		Case "dmboot.sys"
		Case "dmio.sys"
		Case "dmload.sys"
		Case "dmserver"
		Case "DnsCache"
		Case "EventLog"
		Case "File system"
		Case "Filter"
		Case "LanmanServer"
		Case "LanmanWorkstation"
		Case "LmHosts"
		Case "Messenger"
		Case "NBF"
		Case "nbf.sys"
		Case "NDIS"
		Case "NDIS Wrapper"
		Case "Ndisuio"
		Case "NetBIOS"
		Case "NetBIOSGroup"
		Case "NetBT"
		Case "NetDDEGroup"
		Case "Netlogon"
		Case "NetMan"
		Case "Network"
		Case "NetworkProvider"
		Case "NtLmSsp"
		Case "PCI Configuration"
		Case "PlugPlay"
		Case "PNP Filter"
		Case "PNP_TDI"
		Case "Primary disk"
		Case "ProtectedStorage"
		Case "RpcSs"
		Case "SCSI Class"
		Case "sermouse.sys"
		Case "sglfb.sys"
		Case "Streams Drivers"
		Case "System Bus Extender"
		Case "Tcpip"
		Case "TDI"
		Case "tga.sys"
		Case "vga.sys"
		Case "vgasave.sys"
		Case "WinMgmt"
		Case "WZCSVC"
		Case "{36FC9E60-C465-11CF-8056-444553540000}"
		Case "{4D36E965-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E967-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E969-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96A-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E96F-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E972-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E973-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E974-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E975-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E977-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97B-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E97D-E325-11CE-BFC1-08002BE10318}"
		Case "{4D36E980-E325-11CE-BFC1-08002BE10318}"
		Case "{71A27CDD-812A-11D0-BEC7-08002BE2092F}"
		Case "{745A17A0-74D3-11D0-B6FE-00A0C90F57DA}"
	Case Else
			$WHITELIST = False
		EndSwitch
	EndIf
	Return $WHITELIST
EndFunc
Func _POLICYWHITELISTED ( $POLICY , $STATUS )
	$WHITELIST = False
	Switch $POLICY
	Case "nodrive"
		$WHITELIST = True
	Case "classicshell"
		$WHITELIST = True
	Case "nocontrolpanel"
		If $STATUS = 0 Then $WHITELIST = True
	Case "nonethood"
		$WHITELIST = True
	Case "nocomputersnearme"
		$WHITELIST = True
	Case "cdrautorun"
		$WHITELIST = True
	Case "NoCDBurning"
		$WHITELIST = True
	Case "displaylastuser"
		$WHITELIST = True
	Case "legalnotice"
		$WHITELIST = True
	Case "withoutlogon"
		$WHITELIST = True
	Case "NoInternetOpenWith"
		$WHITELIST = True
	Case "verbosestatus"
		$WHITELIST = True
	Case "ConsentPromptBehaviorAdmin"
		If $STATUS = 2 Then $WHITELIST = True
	Case "ConsentPromptBehaviorUser"
		If $STATUS = 1 Then $WHITELIST = True
	Case "EnableInstallerDetection"
		If $STATUS = 1 Then $WHITELIST = True
	Case "EnableLUA"
		If $STATUS = 1 Then $WHITELIST = True
	Case "EnableSecureUIAPaths"
		If $STATUS = 1 Then $WHITELIST = True
	Case "EnableVirtualization"
		If $STATUS = 1 Then $WHITELIST = True
	Case "PromptOnSecureDesktop"
		If $STATUS = 1 Then $WHITELIST = True
	Case "ValidateAdminCodeSignatures"
		If $STATUS = 0 Then $WHITELIST = True
	Case "scforceoption"
		If $STATUS = 0 Then $WHITELIST = True
	Case "FilterAdministratorToken"
		If $STATUS = 0 Then $WHITELIST = True
	Case "LinkResolveIgnoreLinkInfo"
		$WHITELIST = True
	Case "NoRemoteRecursiveEvents"
		$WHITELIST = True
	Case "ClearRecentDocsOnExit"
		$WHITELIST = True
	Case "NoLowDiskSpaceChecks"
		$WHITELIST = True
	Case "NoSaveSettings"
		$WHITELIST = True
	Case "NoStartBanner"
		$WHITELIST = True
	Case "NoInternetIcon"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoPropertiesRecycleBin"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoPropertiesMyComputer"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoPropertiesMyDocuments"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoDesktopCleanupWizard"
		If $STATUS = 0 Then $WHITELIST = True
	Case "DisablePersonalDirChange"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoChangeStartMenu"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoNetworkConnections"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSetTaskbar"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoStartMenuNetworkPlaces"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSMMyDocs"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSMHelp"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoManageMyComputerVerb"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSecConsole"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSharedDocuments"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSecurityTab"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoHardwareTab"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoFileMenu"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoNetConnectDisconnect"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoDispBackgroundPage"
		If $STATUS = 0 Then $WHITELIST = True
	Case "DisableGPO"
		If $STATUS = 0 Then $WHITELIST = True
	Case "ConfirmFileDelete"
		If $STATUS = 0 Then $WHITELIST = True
	Case "DriveConfiguration"
	Case "NotoolBarsOnTaskBar"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoShellSearchButton"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoTrayItemsDisplay"
		If $STATUS = 0 Then $WHITELIST = True
	Case "NoSharedDocuments"
		$WHITELIST = True
	Case "NoRecentDocsHistory"
		$WHITELIST = True
	Case "NoRecentDocsMenu"
		$WHITELIST = True
	Case "RunLogonScriptSync"
		If $STATUS = 1 Then $WHITELIST = True
	Case "RunStartupScriptSync"
		If $STATUS = 0 Then $WHITELIST = True
	Case "HideStartupScripts"
		If $STATUS = 0 Then $WHITELIST = True
	Case "DisableRegistryTools"
		If $STATUS = 0 Then $WHITELIST = True
	Case "HideLegacyLogonScripts"
		If $STATUS = 0 Then $WHITELIST = True
	Case "HideLogoffScripts"
		If $STATUS = 0 Then $WHITELIST = True
Case Else
		$WHITELIST = False
	EndSwitch
	Return $WHITELIST
EndFunc
Func _FILEPARSE ( $FPATH )
	If StringInStr ( $FPATH , "%" ) Then
		$START = StringInStr ( $FPATH , "%" )
		$END = StringInStr ( $FPATH , "%" , 0 , 2 )
		$ENVNAME = StringMid ( $FPATH , $START + 1 , $END - $START - 1 )
		$ENVPATH = EnvGet ( $ENVNAME )
		$FPATH = StringReplace ( $FPATH , "%" & $ENVNAME & "%" , $ENVPATH )
	EndIf
	$FPATH = StringReplace ( $FPATH , Chr ( 34 ) , "" )
	$FPATH = StringReplace ( $FPATH , @SystemDir & "\rundll32.exe " , "" )
	If StringMid ( $FPATH , 1 , 13 ) = "RUNDLL32.EXE " Then
		$FPATH = StringReplace ( $FPATH , "rundll32.exe " , "" )
	EndIf
	$LEN = StringLen ( $FPATH )
	$FOUND = False
	$PATHFOUND = False
	If StringInStr ( $FPATH , "\" ) Then
		For $I = 4 To $LEN
			If FileExists ( StringMid ( $FPATH , 1 , $I ) ) And FileGetSize ( StringMid ( $FPATH , 1 , $I ) ) > 0 Then
				If Not StringInStr ( FileGetAttrib ( StringMid ( $FPATH , 1 , $I ) ) , "D" ) Then
					$FOUND = True
					$FPATH = StringMid ( $FPATH , 1 , $I )
					ExitLoop
				EndIf
			EndIf
		Next
	EndIf
	If $FOUND = False And StringInStr ( $FPATH , ":" ) = False Then
		If $PATH [ 0 ] <> 0 Then
			For $I = 1 To $PATH [ 0 ]
				$TESTPATH = $PATH [ $I ] & "\" & $FPATH
				If FileExists ( $TESTPATH ) And StringInStr ( FileGetAttrib ( $TESTPATH ) , "D" ) = 0 Then
					$FPATH = $TESTPATH
					$FOUND = True
					ExitLoop
				EndIf
			Next
		EndIf
	EndIf
	If $FOUND = True Then
		$FPATH = _GETFILEDETAILS ( $FPATH )
	Else
		If $PATHFOUND Then
		Else
			$FPATH = $FPATH & " []"
		EndIf
	EndIf
	Return $FPATH
EndFunc
Func _GETFILEDETAILS ( $FPATH )
	$FSIZE = FileGetSize ( $FPATH )
	$FTIME = FileGetTime ( $FPATH )
	If @error = 0 Then
		$FPATH = $FPATH & " [" & $FTIME [ 0 ] & "-" & $FTIME [ 1 ] & "-" & $FTIME [ 2 ] & " " & $FSIZE & "]"
	EndIf
	Return $FPATH
EndFunc
Func _SERVICEFILEPARSE ( $SPATH , $KEYNAME )
	If StringMid ( $SPATH , 1 , 1 ) = "@" Then
		$SPATH = StringReplace ( $SPATH , "@" , "" )
	EndIf
	If StringMid ( $SPATH , 1 , 8 ) = "system32" Then
		$SPATH = @WindowsDir & "\" & $SPATH
	EndIf
	If StringMid ( $SPATH , 1 , 10 ) = "systemroot" Then
		$SPATH = StringReplace ( $SPATH , "systemroot" , @WindowsDir )
	EndIf
	If StringMid ( $SPATH , 1 , 11 ) = "\systemroot" Then
		$SPATH = StringReplace ( $SPATH , "\systemroot" , @WindowsDir )
	EndIf
	$SPATH = _FILEPARSE ( $SPATH )
	Return $SPATH
EndFunc
Func _SERVICEFILEPARSEX64 ( $SPATH , $KEYNAME )
	If StringMid ( $SPATH , 1 , 1 ) = "@" Then
		$SPATH = StringReplace ( $SPATH , "@" , "" )
	EndIf
	If StringMid ( $SPATH , 1 , 8 ) = "system32" Then
		$SPATH = @WindowsDir & "\" & $SPATH
	EndIf
	If StringMid ( $SPATH , 1 , 10 ) = "systemroot" Then
		$SPATH = StringReplace ( $SPATH , "systemroot" , @WindowsDir )
	EndIf
	If StringMid ( $SPATH , 1 , 11 ) = "\systemroot" Then
		$SPATH = StringReplace ( $SPATH , "\systemroot" , @WindowsDir )
	EndIf
	If RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & $KEYNAME , "WOW64" ) = 1 And StringInStr ( $SPATH , "\drivers\" , False ) = False Then
		$SPATH = StringReplace ( $SPATH , @SystemDir , @WindowsDir & "\syswow64" )
	EndIf
	$SPATH = _FILEPARSE ( $SPATH )
	Return $SPATH
EndFunc
Func _DOWNLOADRUNHJT ( )
	DirCreate ( @ProgramFilesDir & "\trend micro" )
	FileChangeDir ( @ProgramFilesDir & "\trend micro" )
	InetGet ( "http://go.trendmicro.com/free-tools/hijackthis/HiJackThis.exe" , @UserName & ".exe" )
	FileCopy ( @ProgramFilesDir & "\trend micro\" & @UserName & ".exe" , @ProgramFilesDir & "\trend micro\hijackthis.exe" , 1 )
	If FileGetSize ( @ProgramFilesDir & "\trend micro\" & @UserName & ".exe" ) >= 388608 Then
		ShellExecuteWait ( @ProgramFilesDir & "\trend micro\" & @UserName & ".exe" , "/silentautolog" )
		$HJTL = FileOpen ( @ProgramFilesDir & "\trend micro\" & "\hijackthis.log" , 0 )
		FileWrite ( $LOG , FileRead ( $HJTL ) )
		FileClose ( $HJTL )
	Else
		FileWriteLine ( $LOG , "HijackThis download failed" )
	EndIf
EndFunc
Func _PROCESSLISTPROPERTIES ( $PROCESS = "" , $SCOMPUTER = "." )
	Local $SUSERNAME , $SMSG , $SUSERDOMAIN , $AVPROCS , $DTMDATE
	Local $AVPROCS [ 1 ] [ 2 ] = [ [ 0 , "" ] ] , $N = 1
	If StringIsInt ( $PROCESS ) Then $PROCESS = Int ( $PROCESS )
	$OWMI = ObjGet ( "winmgmts:{impersonationLevel=impersonate,authenticationLevel=pktPrivacy, (Debug)}!\\" & $SCOMPUTER & "\root\cimv2" )
	If IsObj ( $OWMI ) Then
		If $PROCESS == "" Then
			$COLPROCS = $OWMI .ExecQuery ( "select * from win32_process" )
		ElseIf IsInt ( $PROCESS ) Then
			$COLPROCS = $OWMI .ExecQuery ( "select * from win32_process where ProcessId = " & $PROCESS )
		Else
			$COLPROCS = $OWMI .ExecQuery ( "select * from win32_process where Name = '" & $PROCESS & "'" )
		EndIf
		If IsObj ( $COLPROCS ) Then
			If $COLPROCS .count = 0 Then Return $AVPROCS
			ReDim $AVPROCS [ $COLPROCS .count + 1 ] [ 10 ]
			$AVPROCS [ 0 ] [ 0 ] = UBound ( $AVPROCS ) - 1
			For $OPROC In $COLPROCS
				$AVPROCS [ $N ] [ 0 ] = $OPROC .name
				$AVPROCS [ $N ] [ 1 ] = $OPROC .ProcessId
				$AVPROCS [ $N ] [ 2 ] = $OPROC .ParentProcessId
				If $OPROC .GetOwner ( $SUSERNAME , $SUSERDOMAIN ) = 0 Then $AVPROCS [ $N ] [ 3 ] = $SUSERDOMAIN & "\" & $SUSERNAME
				$AVPROCS [ $N ] [ 4 ] = $OPROC .Priority
				$AVPROCS [ $N ] [ 5 ] = $OPROC .ExecutablePath
				$DTMDATE = $OPROC .CreationDate
				If $DTMDATE <> "" Then
					Local $SREGEXPPATT = "\A(\d{4})(\d{2})(\d{2})(\d{2})(\d{2})(\d{2})(?:.*)"
					$DTMDATE = StringRegExpReplace ( $DTMDATE , $SREGEXPPATT , "$2/$3/$1 $4:$5:$6" )
				EndIf
				$AVPROCS [ $N ] [ 8 ] = $DTMDATE
				$AVPROCS [ $N ] [ 9 ] = $OPROC .CommandLine
				$N += 1
			Next
		Else
			SetError ( 2 )
		EndIf
		$COLPROCS = 0
		Local $OREFRESHER = ObjCreate ( "WbemScripting.SWbemRefresher" )
		$COLPROCS = $OREFRESHER .AddEnum ( $OWMI , "Win32_PerfFormattedData_PerfProc_Process" ) .objectSet
		$OREFRESHER .Refresh
		Local $ITIME = TimerInit ( )
		Do
			Sleep ( 20 )
		Until TimerDiff ( $ITIME ) >= 100
		$OREFRESHER .Refresh
		For $OPROC In $COLPROCS
			For $N = 1 To $AVPROCS [ 0 ] [ 0 ]
				If $AVPROCS [ $N ] [ 1 ] = $OPROC .IDProcess Then
					$AVPROCS [ $N ] [ 6 ] = $OPROC .PercentProcessorTime
					$AVPROCS [ $N ] [ 7 ] = $OPROC .WorkingSet
					ExitLoop
				EndIf
			Next
		Next
	Else
		SetError ( 1 )
	EndIf
	Return $AVPROCS
EndFunc
Func _EXTCHECK ( $FILENAME )
	Local $SHOWFILE
	$SHOWFILE = True
	Select
	Case StringRight ( $FILENAME , 5 ) = ".ini1"
	Case StringRight ( $FILENAME , 5 ) = ".bak1"
	Case StringRight ( $FILENAME , 5 ) = ".ini2"
	Case StringRight ( $FILENAME , 5 ) = ".bak2"
	Case StringRight ( $FILENAME , 4 ) = ".exe"
	Case StringRight ( $FILENAME , 4 ) = ".com"
	Case StringRight ( $FILENAME , 4 ) = ".bat"
	Case StringRight ( $FILENAME , 4 ) = ".cmd"
	Case StringRight ( $FILENAME , 4 ) = ".vbs"
	Case StringRight ( $FILENAME , 4 ) = ".JSE"
	Case StringRight ( $FILENAME , 4 ) = ".wsf"
	Case StringRight ( $FILENAME , 4 ) = ".wsh"
	Case StringRight ( $FILENAME , 4 ) = ".msc"
	Case StringRight ( $FILENAME , 4 ) = ".dll"
	Case StringRight ( $FILENAME , 4 ) = ".ini"
	Case StringRight ( $FILENAME , 4 ) = ".txt"
	Case StringRight ( $FILENAME , 4 ) = ".bak"
	Case StringRight ( $FILENAME , 4 ) = ".tmp"
	Case StringRight ( $FILENAME , 4 ) = ".sys"
	Case StringRight ( $FILENAME , 4 ) = ".pif"
	Case StringRight ( $FILENAME , 4 ) = ".ruy"
	Case StringRight ( $FILENAME , 4 ) = ".dat"
	Case StringRight ( $FILENAME , 4 ) = ".lnk"
	Case StringRight ( $FILENAME , 4 ) = ".src"
	Case StringRight ( $FILENAME , 4 ) = ".scr"
	Case StringRight ( $FILENAME , 4 ) = ".jar"
	Case StringRight ( $FILENAME , 4 ) = "._sy"
	Case StringRight ( $FILENAME , 3 ) = ".JS"
	Case StringRight ( $FILENAME , 3 ) = ".wt"
	Case StringRight ( $FILENAME , 3 ) = ".db" And $FILENAME <> "thumbs.db"
Case Else
		$SHOWFILE = False
	EndSelect
	Return $SHOWFILE
EndFunc
Func _SETLANGUAGE ( $LANGUAGE )
	If $LANGUAGE == "English" Then
		Global $TEXT_DISCLAIMER = "Disclaimer of warranty."
		Global $TEXT_CONTINUE = "Continue"
		Global $TEXT_EXIT = "Exit"
		Global $TEXT_DISCLAIMER1 = "This software is provided AS IS without warranty of any kind. " & @CRLF & "The author is not responsible for any damage" & @CRLF & "caused by the use of this tool."
		Global $TEXT_DISCLAIMER2 = "If this tool cannot locate HijackThis, then it will connect to the internet to attempt to download HijackThis. If your firewall gives you any prompts for RSIT.exe, please allow them, since if this tool is not allowed to connect to the internet, the download of HijackThis will fail."
		Global $TEXT_DISCLAIMER3 = "List files/folders" & @CRLF & "created or modified in the last:"
		Global $TEXT_FILEOPTION = "List files/folders" & @CRLF & "created or modified in the last:"
		Global $TEXT_1MONTH = "1 month"
		Global $TEXT_2MONTH = "2 months"
		Global $TEXT_3MONTH = "3 months"
		Global $TEXT_WRITINGHEADER = "Writing header information"
		Global $TEXT_HEADER = "Logfile of random's system information tool 1.09 (written by random/random) "
		Global $TEXT_RUNBY = "Run by"
		Global $TEXT_AT = "at"
		Global $TEXT_SYSTEMDRIVE = "System drive "
		Global $TEXT_HAS = " has "
		Global $TEXT_FREEOF = "free of "
		Global $TEXT_TOTALRAM = "Total RAM: "
		Global $TEXT_FREE = "free"
		Global $TEXT_RUNNINGHJT = "Running HijackThis"
		Global $TEXT_ENUMERATINGPROCESSES = "Enumerating Processes"
		Global $TEXT_LISTINGPROCESSES = "Enumerating Processes"
		Global $TEXT_ENUMERATINGTASKS = "Enumerating scheduled tasks"
		Global $TEXT_TASKS = "Scheduled tasks folder"
		Global $TEXT_STATUSREGDUMP = "Performing Registry Dump"
		Global $TEXT_REGDUMP = "Registry dump"
		Global $TEXT_GUIFILEASSOC = "Checking file associations"
		Global $TEXT_FILEASSOC = "File associations"
		Global $TEXT_GUIRECENTFILES = "Listing recently created files/folders"
		Global $TEXT_FILESCREATED = "List of files/folders created in the last "
		Global $TEXT_MONTHS = " months"
		Global $TEXT_MONTH = " month"
		Global $TEXT_FILESMODIFIED = "List of files/folders modified in the last "
		Global $TEXT_GUISERVICESDRIVERS = "List of services and drivers"
		Global $TEXT_LISTDRIVERS = "List of drivers (R=Running, S=Stopped, 0=Boot, 1=System, 2=Auto, 3=Demand, 4=Disabled)"
		Global $TEXT_DRIVERSWHITELISTED = "All drivers whitelisted"
		Global $TEXT_LISTSERVICES = "List of services (R=Running, S=Stopped, 0=Boot, 1=System, 2=Auto, 3=Demand, 4=Disabled)"
		Global $TEXT_SERVICESWHITELISTED = "All services whitelisted"
		Global $TEXT_INFOHEADER = "info.txt logfile of random's system information tool 1.09"
		Global $TEXT_UNINSTALLLIST = "Uninstall list"
		Global $TEXT_GUIUNINSTALLLIST = "Creating uninstall list"
		Global $TEXT_GUIHJTBACKUPS = "Listing HijackThis Backups"
		Global $TEXT_HJTBACKUPS = "HijackThis Backups"
		Global $TEXT_GUIHOSTS = "Checking Hosts file"
		Global $TEXT_HOSTSMISSING = "Hosts File Missing"
		Global $TEXT_HOSTS = "Hosts File"
		Global $TEXT_GUICHECKSECURITYCENTER = "Checking Security Center information"
		Global $TEXT_SECURITYCENTERWMIBROKEN = "Securitycenter WMI appears to be broken"
		Global $TEXT_DISABLED = " disabled"
		Global $TEXT_OUTDATED = " outdated"
		Global $TEXT_SECURITYCENTERINFO = "Security center information"
		Global $TEXT_GUIEVENTLOGS = "Listing event logs"
		Global $TEXT_SYSTEMEVENTLOG = "System event log" & Chr ( 34 )
		Global $TEXT_APPLICATIONEVENTLOG = "Application event log" & Chr ( 34 )
		Global $TEXT_SECURITYEVENTLOG = "Security event log" & Chr ( 34 )
		Global $TEXT_COMPUTERNAME = "Computer Name: "
		Global $TEXT_EVENTCODE = "Event Code: "
		Global $TEXT_EVENTLOGMESSAGE = "Message: "
		Global $TEXT_RECORDNUMBER = "Record Number: "
		Global $TEXT_SOURCENAME = "Source Name: "
		Global $TEXT_TIMEWRITTEN = "Time Written: "
		Global $TEXT_EVENTTYPE = "Event Type: "
		Global $TEXT_EVENTLOGUSER = "User: "
		Global $TEXT_LISTENVIRONMENTVARIABLES = "Listing environment variables"
		Global $TEXT_ENVIRONMENTVARIABLES = "Environment variables"
		Global $TEXT_TRANSLATION = "Russian translation and interface provided by a team safezone.cc"
	Else
		Global $TEXT_DISCLAIMER = "Пользовательское соглашение."
		Global $TEXT_CONTINUE = "Далее"
		Global $TEXT_EXIT = "Выход"
		Global $TEXT_DISCLAIMER1 = "Это свободное програмное обеспечение без каких либо гарантий." & @CRLF & "Автор не несет ответственности за любой ущерб, причиненный" & @CRLF & "в результате использования программы."
		Global $TEXT_DISCLAIMER2 = "Для работы программы необходима утилита HjaktThis. " & @CRLF & "Когда утилита не может определить местонахождение HijackThis, она пытается загрузить HijackThis из Интернета. Если появится запрос брандмауэра, разрешите утилите RSIT.exe доступ в Интернет" & @CRLF & "для загрузки HijackThis."
		Global $TEXT_DISCLAIMER3 = "Анализ файлов и папок," & @CRLF & "созданных/изменённых за период:"
		Global $TEXT_FILEOPTION = "Анализ файлов и папок," & @CRLF & "созданных/изменённых за период:"
		Global $TEXT_1MONTH = "1 месяц"
		Global $TEXT_2MONTH = "2 месяца"
		Global $TEXT_3MONTH = "3 месяца"
		Global $TEXT_WRITINGHEADER = "Запись заголовка"
		Global $TEXT_HEADER = "Лог утилиты random's system information tool 1.09 (автор: random/random)"
		Global $TEXT_RUNBY = "Run by"
		Global $TEXT_AT = "at"
		Global $TEXT_SYSTEMDRIVE = "Системный раздел "
		Global $TEXT_HAS = " размер "
		Global $TEXT_FREEOF = "Свободно "
		Global $TEXT_TOTALRAM = "Total RAM: "
		Global $TEXT_FREE = "free"
		Global $TEXT_RUNNINGHJT = "Запуск HijackThis"
		Global $TEXT_ENUMERATINGPROCESSES = "Список процессов"
		Global $TEXT_LISTINGPROCESSES = "Список процессов"
		Global $TEXT_ENUMERATINGTASKS = "Получение списка назначенных заданий"
		Global $TEXT_TASKS = "Папка назначеных зданий"
		Global $TEXT_STATUSREGDUMP = "Создание снимка реестра"
		Global $TEXT_REGDUMP = "Снимок реестра"
		Global $TEXT_GUIFILEASSOC = "Проверка ассоциаций файлов"
		Global $TEXT_FILEASSOC = "Ассоциации файлов"
		Global $TEXT_GUIRECENTFILES = "Создание списка недавно созданных файлов и папок"
		Global $TEXT_FILESCREATED = "Список файлов и папок, созданных за последние "
		Global $TEXT_MONTHS = " месяца"
		Global $TEXT_MONTH = " месяц"
		Global $TEXT_FILESMODIFIED = "Список файлов и папок, измененных за последние "
		Global $TEXT_GUISERVICESDRIVERS = "Список служб и драйверов"
		Global $TEXT_LISTDRIVERS = "Список драйверов (тип запуска: R=Запущен, S=остановлен, 0=Загрузочный, 1=Системный, 2=Автоматически, 3=Вручную, 4=Отключено)"
		Global $TEXT_DRIVERSWHITELISTED = "Все безопасные драйверы"
		Global $TEXT_LISTSERVICES = "Список служб (тип запуска: R=Запущена, S=остановлена, 0=Загрузочная, 1=Системная, 2=Автоматически, 3=Вручную, 4=Отключено)"
		Global $TEXT_SERVICESWHITELISTED = "Все безопасные службы"
		Global $TEXT_INFOHEADER = "info.txt - лог утилиты random's system information tool 1.09"
		Global $TEXT_UNINSTALLLIST = "Список установленных программ"
		Global $TEXT_GUIUNINSTALLLIST = "Создание списка установленных программ"
		Global $TEXT_GUIHJTBACKUPS = "Создание списка резервных копий HijackThis"
		Global $TEXT_HJTBACKUPS = "Резервные копии HijackThis"
		Global $TEXT_GUIHOSTS = "Проверка файл Hosts"
		Global $TEXT_HOSTSMISSING = "Файл Hosts не найден"
		Global $TEXT_HOSTS = "Файл Hosts"
		Global $TEXT_GUICHECKSECURITYCENTER = "Проверка информация центра безопасности"
		Global $TEXT_SECURITYCENTERWMIBROKEN = "Ошибка загрузки сообщений центра безопасности"
		Global $TEXT_DISABLED = " (отключено)"
		Global $TEXT_OUTDATED = " (устарело)"
		Global $TEXT_SECURITYCENTERINFO = "Информация центра безопасности"
		Global $TEXT_GUIEVENTLOGS = "Создание списка журналов событий"
		Global $TEXT_SYSTEMEVENTLOG = "Журнал событий " & Chr ( 34 ) & "Система" & Chr ( 34 )
		Global $TEXT_APPLICATIONEVENTLOG = "Журнал событий " & Chr ( 34 ) & "Приложения" & Chr ( 34 )
		Global $TEXT_SECURITYEVENTLOG = "Журнал событий " & Chr ( 34 ) & "Безопасность" & Chr ( 34 )
		Global $TEXT_COMPUTERNAME = "Имя компьютера: "
		Global $TEXT_EVENTCODE = "Код события: "
		Global $TEXT_EVENTLOGMESSAGE = "Сообщение: "
		Global $TEXT_RECORDNUMBER = "Номер записи: "
		Global $TEXT_SOURCENAME = "Источник: "
		Global $TEXT_TIMEWRITTEN = "Время записи: "
		Global $TEXT_EVENTTYPE = "Тип события: "
		Global $TEXT_EVENTLOGUSER = "Пользователь: "
		Global $TEXT_LISTENVIRONMENTVARIABLES = "Создание списка переменных среды"
		Global $TEXT_ENVIRONMENTVARIABLES = "переменные среды"
		Global $TEXT_TRANSLATION = "Русский перевод и интерфейс предоставлен командой safezone.cc"
	EndIf
EndFunc
Func _RUNKEYS ( $KEY , ByRef $LOG )
	$RUN = ""
	For $I = 1 To 100
		$VAR = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$VALUENAME = RegRead ( $KEY , $VAR )
		$RUN = $RUN & Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & _FILEPARSE ( $VALUENAME ) & @CRLF
	Next
	If $RUN <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $RUN )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _BHO ( $KEY , $CLSIDKEY , ByRef $LOG )
	For $I = 1 To 100
		$CLSID = RegEnumKey ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$FILE = RegRead ( $CLSIDKEY & "\" & $CLSID & "\InprocServer32" , "" )
		$NAME = RegRead ( $CLSIDKEY & "\" & $CLSID , "" )
		FileWriteLine ( $LOG , "[" & $KEY & "\" & $CLSID & "]" )
		If $NAME <> "" Then
			If $FILE <> "" Then
				FileWriteLine ( $LOG , $NAME & " - " & _FILEPARSE ( $FILE ) )
			Else
				FileWriteLine ( $LOG , $NAME )
			EndIf
		Else
			If $FILE <> "" Then
				FileWriteLine ( $LOG , _FILEPARSE ( $FILE ) )
			EndIf
		EndIf
		FileWrite ( $LOG , @CRLF )
	Next
EndFunc
Func _TOOLBAR ( $KEY , $CLSIDKEY , ByRef $LOG )
	$TOOLBAR = ""
	For $I = 1 To 100
		$CLSID = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		If StringInStr ( $CLSID , "-" , False ) Then
			$FILE = RegRead ( $CLSIDKEY & "\" & $CLSID & "\InprocServer32" , "" )
			$NAME = RegRead ( $CLSIDKEY & "\" & $CLSID , "" )
			If $NAME <> "" Then
				If $FILE <> "" Then
					$TOOLBAR = $TOOLBAR & $CLSID & " - " & $NAME & " - " & _FILEPARSE ( $FILE ) & @CRLF
				Else
					$TOOLBAR = $TOOLBAR & $CLSID & " - " & ( $FILE ) & @CRLF
				EndIf
			Else
				If $FILE <> "" Then
					$TOOLBAR = $TOOLBAR & $CLSID & " - " & _FILEPARSE ( $FILE ) & @CRLF
				Else
					$TOOLBAR = $TOOLBAR & $CLSID & @CRLF
				EndIf
			EndIf
		EndIf
	Next
	If $TOOLBAR <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWriteLine ( $LOG , $TOOLBAR )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _MSCONFIG ( $KEY , ByRef $LOG )
	For $I = 1 To 100
		$KEYNAME = RegEnumKey ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$FILE = RegRead ( $KEY & "\" & $KEYNAME , "command" )
		FileWriteLine ( $LOG , "[" & $KEY & "\" & $KEYNAME & "]" )
		FileWriteLine ( $LOG , _FILEPARSE ( $FILE ) )
		FileWrite ( $LOG , @CRLF )
	Next
EndFunc
Func _MSCONFIGSERVICES ( $KEY , ByRef $LOG )
	$MSCONFIGSERVICES = ""
	For $I = 1 To 100
		$SERVICENAME = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$STATUS = RegRead ( $KEY , $SERVICENAME )
		$MSCONFIGSERVICES = $MSCONFIGSERVICES & Chr ( 34 ) & $SERVICENAME & Chr ( 34 ) & "=" & $STATUS & @CRLF
	Next
	If $MSCONFIGSERVICES <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $MSCONFIGSERVICES )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _STARTUPFOLDER ( $FOLDER , ByRef $LOG )
	FileChangeDir ( $FOLDER )
	$SFF = FileFindFirstFile ( "*" )
	$STARTUP = ""
	While 1
		$FN = FileFindNextFile ( $SFF )
		If @error Then ExitLoop
		If StringInStr ( $FN , ".lnk" ) Then
			$FNS = FileGetShortcut ( $FOLDER & "\" & $FN )
			$STARTUP = $STARTUP & $FN & " - " & $FNS [ 0 ] & @CRLF
		Else
			If $FN <> "desktop.ini" Then
				$STARTUP = $STARTUP & $FN & @CRLF
			EndIf
		EndIf
	WEnd
	If $STARTUP <> "" Then
		FileWriteLine ( $LOG , $FOLDER )
		FileWrite ( $LOG , $STARTUP )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _APPINIT ( $KEY , $VALUE , ByRef $LOG )
	$APPINIT = RegRead ( $KEY , $VALUE )
	If $APPINIT <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWriteLine ( $LOG , Chr ( 34 ) & $VALUE & Chr ( 34 ) & "=" & Chr ( 34 ) & $APPINIT & Chr ( 34 ) )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _WINLOGON ( $KEY , ByRef $LOG )
	For $I = 1 To 100
		$NOTIFYKEY = RegEnumKey ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		If _WINLOGONNOTIFYWHITELISTED ( $NOTIFYKEY ) Then
		Else
			$FILE = RegRead ( $KEY & "\" & $NOTIFYKEY , "Dllname" )
			If $FILE <> "" Then
				FileWriteLine ( $LOG , "[" & $KEY & "\" & $NOTIFYKEY & "]" )
				FileWriteLine ( $LOG , _FILEPARSE ( $FILE ) )
			Else
				FileWriteLine ( $LOG , "[" & $KEY & "\" & $NOTIFYKEY & "]" )
			EndIf
			FileWrite ( $LOG , @CRLF )
		EndIf
	Next
EndFunc
Func _SSODL ( $KEY , $CLSIDKEY , ByRef $LOG )
	$SSODL = ""
	For $I = 1 To 100
		$NAME = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$CLSID = RegRead ( $KEY , $NAME )
		$FILE = RegRead ( $CLSIDKEY & "\" & $CLSID & "\InprocServer32" , "" )
		If _SHELLSERVICEOBJECTDELAYLOADWHITELISTED ( $CLSID ) Then
		Else
			If $NAME <> "" Then
				If $FILE <> "" Then
					$SSODL = $SSODL & $NAME & " - " & $CLSID & " - " & _FILEPARSE ( $FILE ) & @CRLF
				Else
					$SSODL = $SSODL & $NAME & " - " & $CLSID & @CRLF
				EndIf
			Else
				If $FILE <> "" Then
					$SSODL = $SSODL & $CLSID & " - " & _FILEPARSE ( $FILE ) & @CRLF
				EndIf
			EndIf
		EndIf
	Next
	If $SSODL <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $SSODL )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _STS ( $KEY , $CLSIDKEY , ByRef $LOG )
	$STS = ""
	For $I = 1 To 100
		$CLSID = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$NAME = RegRead ( $KEY , $CLSID )
		If _SHAREDTASKSCHEDULERWHITELISTED ( $CLSID ) Then
		Else
			$FILE = RegRead ( $CLSIDKEY & "\" & $CLSID & "\InprocServer32" , "" )
			If $NAME <> "" Then
				If $FILE <> "" Then
					$STS = $STS & $NAME & " - " & $CLSID & " - " & _FILEPARSE ( $FILE ) & @CRLF
				Else
					$STS = $STS & $NAME & " - " & $CLSID & @CRLF
				EndIf
			Else
				If $FILE <> "" Then
					$STS = $STS & $CLSID & " - " & _FILEPARSE ( $FILE ) & @CRLF
				EndIf
			EndIf
		EndIf
	Next
	If $STS <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $STS )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _SEH ( $KEY , $CLSIDKEY , ByRef $LOG )
	$SHELLEXECUTEHOOKS = ""
	For $I = 1 To 100
		$CLSID = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$FILE = RegRead ( $CLSIDKEY & "\" & $CLSID & "\inprocserver32" , "" )
		If _SHELLEXECUTEHOOKSWHITELISTED ( $CLSID ) Then
		Else
			$SHELLEXECUTEHOOKS = $SHELLEXECUTEHOOKS & Chr ( 34 ) & $CLSID & Chr ( 34 ) & "=" & _FILEPARSE ( $FILE ) & @CRLF
		EndIf
	Next
	If $SHELLEXECUTEHOOKS <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $SHELLEXECUTEHOOKS )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _SINGLEVALUECHECK ( $KEY , $VALUE , $WHITELIST , ByRef $LOG )
	$SYSTEMVALUE = RegRead ( $KEY , $VALUE )
	If $SYSTEMVALUE <> $WHITELIST Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWriteLine ( $LOG , Chr ( 34 ) & $VALUE & Chr ( 34 ) & "=" & _FILEPARSE ( $SYSTEMVALUE ) )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _POLICYCHECK ( $KEY , ByRef $LOG )
	$POLICIES = ""
	For $I = 1 To 100
		$POLICY = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$STATUS = RegRead ( $KEY , $POLICY )
		If Not _POLICYWHITELISTED ( $POLICY , $STATUS ) Then
			$POLICIES = $POLICIES & Chr ( 34 ) & $POLICY & Chr ( 34 ) & "=" & $STATUS & @CRLF
		EndIf
	Next
	If $POLICIES <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $POLICIES )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _DRIVERS32 ( $KEY , ByRef $LOG )
	Local $DRIVERS
	$DRIVERS = ""
	For $I = 1 To 100
		$VAR = RegEnumVal ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		$VALUENAME = RegRead ( $KEY , $VAR )
		$DRIVERS = $DRIVERS & Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & $VALUENAME & @CRLF
	Next
	If $DRIVERS <> "" Then
		FileWriteLine ( $LOG , "[" & $KEY & "]" )
		FileWrite ( $LOG , $DRIVERS )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _MOUNTPOINTS ( $KEY , ByRef $LOG )
	$I = 1
	$MOUNTPOINTS = ""
	While 1
		$KEY = RegEnumKey ( $KEY , $I )
		If @error <> 0 Then ExitLoop
		RegRead ( $KEY & "\" & $KEY & "\shell" , "" )
		If Not @error = 1 Then
			$K = 1
			$TEMP = ""
			While 1
				$SHELLKEY = RegEnumKey ( $KEY & "\" & $KEY & "\shell" , $K )
				If @error <> 0 Then ExitLoop
				$COMMAND = RegRead ( $KEY & "\" & $KEY & "\shell\" & $SHELLKEY & "\command" , "" )
				If $COMMAND <> "" Then
					$TEMP = $TEMP & "shell\" & $SHELLKEY & "\command - " & $COMMAND & @CRLF
				EndIf
				$K = $K + 1
			WEnd
			If $TEMP <> "" Then
				$TEMP = "[" & $KEY & "\" & $KEY & "]" & @CRLF & $TEMP
				$MOUNTPOINTS = $MOUNTPOINTS & $TEMP & @CRLF
			EndIf
		EndIf
		$I = $I + 1
	WEnd
	If $MOUNTPOINTS <> "" Then
		FileWrite ( $LOG , $MOUNTPOINTS )
		FileWrite ( $LOG , @CRLF )
	EndIf
EndFunc
Func _FILELIST ( $FOLDER )
	FileChangeDir ( $FOLDER )
	$FS = FileFindFirstFile ( "*" )
	While 1
		$FN = FileFindNextFile ( $FS )
		If @error Then ExitLoop
		$FRECENT = False
		$FTIME = FileGetTime ( $FOLDER & $FN , 1 , 0 )
		If @error Then
		Else
			$FDATE = $FTIME [ 0 ] * 10000 + $FTIME [ 1 ] * 100 + $FTIME [ 2 ]
			If $FDATE > $SDATE Then $FRECENT = True
			If $FRECENT = True Then
				$FATTRIB = FileGetAttrib ( $FOLDER & $FN )
				If StringInStr ( $FATTRIB , "D" ) Then
					$STRING = $FTIME [ 0 ] & "-" & $FTIME [ 1 ] & "-" & $FTIME [ 2 ] & " " & $FTIME [ 3 ] & ":" & $FTIME [ 4 ] & ":" & $FTIME [ 5 ] & " " & "----" & $FATTRIB & "----" & " " & $FOLDER & $FN
					_ARRAYADD ( $FARRAY , $STRING )
					$AP = $AP + 1
				Else
					If _EXTCHECK ( $FN ) Then
						$STRING = $FTIME [ 0 ] & "-" & $FTIME [ 1 ] & "-" & $FTIME [ 2 ] & " " & $FTIME [ 3 ] & ":" & $FTIME [ 4 ] & ":" & $FTIME [ 5 ] & " ----" & $FATTRIB & "---- " & $FOLDER & $FN
						_ARRAYADD ( $FARRAY , $STRING )
						$AP = $AP + 1
					EndIf
				EndIf
			Else
				$FRECENTM = False
				$FTIMEM = FileGetTime ( $FOLDER & $FN , 0 , 0 )
				$FDATEM = $FTIMEM [ 0 ] * 10000 + $FTIMEM [ 1 ] * 100 + $FTIMEM [ 2 ]
				If $FDATEM > $SDATE Then $FRECENTM = True
				If $FRECENTM = True Then
					$FATTRIB = FileGetAttrib ( $FOLDER & $FN )
					If StringInStr ( $FATTRIB , "D" ) Then
						$STRING = $FTIMEM [ 0 ] & "-" & $FTIMEM [ 1 ] & "-" & $FTIMEM [ 2 ] & " " & $FTIMEM [ 3 ] & ":" & $FTIMEM [ 4 ] & ":" & $FTIMEM [ 5 ] & " " & "----" & $FATTRIB & "----" & " " & $FOLDER & $FN
						_ARRAYADD ( $FARRAYM , $STRING )
						$APM = $APM + 1
					Else
						If StringInStr ( $FN , ".exe" ) Or StringInStr ( $FN , ".com" ) Or StringInStr ( $FN , ".bat" ) Or StringInStr ( $FN , ".cmd" ) Or StringInStr ( $FN , ".vbs" ) Or StringInStr ( $FN , ".JS" ) Or StringInStr ( $FN , ".JSE" ) Or StringInStr ( $FN , ".wsf" ) Or StringInStr ( $FN , ".wsh" ) Or StringInStr ( $FN , ".msc" ) Or StringInStr ( $FN , ".dll" ) Or StringInStr ( $FN , ".ini" ) Or StringInStr ( $FN , ".txt" ) Or StringInStr ( $FN , ".bak" ) Or StringInStr ( $FN , ".tmp" ) Then
							$STRING = $FTIMEM [ 0 ] & "-" & $FTIMEM [ 1 ] & "-" & $FTIMEM [ 2 ] & " " & $FTIMEM [ 3 ] & ":" & $FTIMEM [ 4 ] & ":" & $FTIMEM [ 5 ] & " ----" & $FATTRIB & "---- " & $FOLDER & $FN
							_ARRAYADD ( $FARRAYM , $STRING )
							$APM = $APM + 1
						EndIf
					EndIf
				EndIf
			EndIf
		EndIf
	WEnd
EndFunc
Func _FIREFOX ( ByRef $LOG , $PLATFORM )
	Local $PROFILEPATH
	Local $I
	Local $TOPDATE
	Local $CDATE
	Local $FS
	Local $FIREFOXPATH
	Local $FIREFOXINFO
	$FIREFOXINFO = ""
	$FIREFOXPATH = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\firefox.exe" , "path" )
	If FileExists ( $FIREFOXPATH & "\firefox.exe" ) Then
		$TOPDATE = 0
		$PROFILEPATH = ""
		FileChangeDir ( @AppDataDir & "\Mozilla\Firefox\Profiles" )
		$FS = FileFindFirstFile ( "*" )
		If @error = 0 Then
			For $I = 1 To 100
				$FN = FileFindNextFile ( $FS )
				If @error <> 0 Then ExitLoop
				If FileExists ( @AppDataDir & "\Mozilla\Firefox\Profiles\" & $FN & "\prefs.js" ) Then
					$CDATE = FileGetTime ( @AppDataDir & "\Mozilla\Firefox\Profiles\" & $FN & "\prefs.js" )
					If $CDATE [ 0 ] * 10000 + $CDATE [ 1 ] * 100 + $CDATE [ 2 ] > $TOPDATE Then
						$PROFILEPATH = @AppDataDir & "\Mozilla\Firefox\Profiles\" & $FN
						$TOPDATE = $CDATE [ 0 ] * 10000 + $CDATE [ 1 ] * 100 + $CDATE [ 2 ]
					EndIf
				EndIf
			Next
			If $PROFILEPATH <> "" And $FIREFOXPATH <> "" Then
				$FIREFOXINFO = @CRLF & "ProfilePath - " & $PROFILEPATH & @CRLF
				_FIREFOXPREFS ( $FIREFOXINFO , $PROFILEPATH )
				_FIREFOXEXTENSIONS ( $FIREFOXINFO , $FIREFOXPATH , $PLATFORM , $PROFILEPATH )
			EndIf
		EndIf
	EndIf
	If $FIREFOXINFO <> "" Then
		FileWrite ( $LOG , "=========Mozilla firefox=========" & @CRLF & $FIREFOXINFO & @CRLF )
	EndIf
EndFunc
Func _FIREFOXPREFS ( ByRef $FIREFOXINFO , $PROFILEPATH )
	Local $PREFS
	Local $PREFSPLIT
	Local $I
	Local $PREFSLOG
	Local $PREFLINESPLIT
	Local $LISTLINE
	Local $PREFSLOG
	Local $J
	$PREFS = FileRead ( $PROFILEPATH & "\prefs.js" )
	$PREFSPLIT = StringSplit ( $PREFS , "user_pref" , 1 )
	$I = 1
	While $I <= $PREFSPLIT [ 0 ]
		If StringLeft ( $PREFSPLIT [ $I ] , 1 ) = "(" Then
			$ENDPOS = StringInStr ( $PREFSPLIT [ $I ] , ");" )
			$PREFLINE = StringLeft ( $PREFSPLIT [ $I ] , $ENDPOS - 1 )
			$PREFLINE = StringRight ( $PREFLINE , $ENDPOS - 2 )
			$PREFLINESPLIT = StringSplit ( $PREFLINE , "," )
			$LISTLINE = 1
			Switch $PREFLINESPLIT [ 1 ]
			Case Chr ( 34 ) & "browser.startup.homepage" & Chr ( 34 )
			Case Chr ( 34 ) & "browser.search.suggest.enabled" & Chr ( 34 )
			Case Chr ( 34 ) & "browser.search.useDBForOrder" & Chr ( 34 )
			Case Chr ( 34 ) & "extensions.enabledItems" & Chr ( 34 )
			Case Chr ( 34 ) & "keyword.URL" & Chr ( 34 )
			Case Chr ( 34 ) & "keyword.enabled" & Chr ( 34 )
		Case Else
				$LISTLINE = 0
			EndSwitch
			If $LISTLINE = 1 Then
				$PREFSLOG = $PREFSLOG & "prefs.js - " & $PREFLINESPLIT [ 1 ] & " - "
				$J = 2
				While $J <= $PREFLINESPLIT [ 0 ]
					If $J > 2 Then
						$PREFSLOG = $PREFSLOG & ", "
					EndIf
					$PREFSLOG = $PREFSLOG & $PREFLINESPLIT [ $J ]
					$J = $J + 1
				WEnd
				$PREFSLOG = $PREFSLOG & @CRLF
			EndIf
		EndIf
		$I = $I + 1
	WEnd
	If $PREFSLOG <> "" Then
		$FIREFOXINFO = $FIREFOXINFO & @CRLF & $PREFSLOG
	EndIf
EndFunc
Func _FIREFOXEXTENSIONS ( ByRef $FIREFOXINFO , $FIREFOXPATH , $PLATFORM , $PROFILEPATH )
	Local $PATH
	Local $DESCRIPTION
	$REGEXT = ""
	For $I = 1 To 100
		$VAR = RegEnumVal ( "HKEY_LOCAL_MACHINE\SOFTWARE\Mozilla\Firefox\extensions" , $I )
		If @error <> 0 Then ExitLoop
		$VALUENAME = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Mozilla\Firefox\extensions" , $VAR )
		$REGEXT = $REGEXT & Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & $VALUENAME & @CRLF
	Next
	If $REGEXT <> "" Then
		$FIREFOXINFO = $FIREFOXINFO & @CRLF & $REGEXT & @CRLF
	EndIf
	If $PLATFORM = "x64" Then
		$REGEXT = ""
		For $I = 1 To 100
			$VAR = RegEnumKey ( "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins" , $I )
			If @error <> 0 Then ExitLoop
			$PATH = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\" & $VAR , "path" )
			$DESCRIPTION = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\" & $VAR , "Description" )
			$REGEXT = $REGEXT & "[HKEY_LOCAL_MACHINE\SOFTWARE\Wow6432Node\MozillaPlugins\" & $VAR & "]" & @CRLF & Chr ( 34 ) & "Description" & Chr ( 34 ) & "=" & $DESCRIPTION & @CRLF & Chr ( 34 ) & "Path" & Chr ( 34 ) & "=" & $PATH & @CRLF & @CRLF
		Next
		If $REGEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $REGEXT
		EndIf
	EndIf
	$REGEXT = ""
	For $I = 1 To 100
		$VAR = RegEnumKey ( "HKEY_LOCAL_MACHINE\SOFTWARE\MozillaPlugins" , $I )
		If @error <> 0 Then ExitLoop
		$PATH = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\MozillaPlugins\" & $VAR , "path" )
		$DESCRIPTION = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\MozillaPlugins\" & $VAR , "Description" )
		$REGEXT = $REGEXT & "[HKEY_LOCAL_MACHINE\SOFTWARE\MozillaPlugins\" & $VAR & "]" & @CRLF & Chr ( 34 ) & "Description" & Chr ( 34 ) & "=" & $DESCRIPTION & @CRLF & Chr ( 34 ) & "Path" & Chr ( 34 ) & "=" & $PATH & @CRLF & @CRLF
	Next
	If $REGEXT <> "" Then
		$FIREFOXINFO = $FIREFOXINFO & @CRLF & $REGEXT
	EndIf
	$REGEXT = ""
	$FILEEXT = ""
	$FOLDEREXISTS = FileChangeDir ( $FIREFOXPATH & "\extensions\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $FIREFOXPATH & "\extensions\" & $FN )
				If StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & $FIREFOXPATH & "\extensions\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $FIREFOXPATH & "\components\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $FIREFOXPATH & "\components\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $FIREFOXPATH & "\components\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $FIREFOXPATH & "\plugins\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $FIREFOXPATH & "\plugins\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $FIREFOXPATH & "\plugins\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $FIREFOXPATH & "\searchplugins\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $FIREFOXPATH & "\searchplugins\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $FIREFOXPATH & "\searchplugins\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $PROFILEPATH & "\extensions\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $PROFILEPATH & "\extensions\" & $FN )
				If StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $PROFILEPATH & "\extensions\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $PROFILEPATH & "\components\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $PROFILEPATH & "\components\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $PROFILEPATH & "\components\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $PROFILEPATH & "\plugins\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $PROFILEPATH & "\plugins\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $PROFILEPATH & "\plugins\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
	$FOLDEREXISTS = FileChangeDir ( $PROFILEPATH & "\searchplugins\" )
	If $FOLDEREXISTS = 1 Then
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error Then ExitLoop
			If @error Then
			Else
				$FATTRIB = FileGetAttrib ( $PROFILEPATH & "\searchplugins\" & $FN )
				If Not StringInStr ( $FATTRIB , "D" ) Then
					$FILEEXT = $FILEEXT & @CRLF & $FN
				EndIf
			EndIf
		WEnd
		If $FILEEXT <> "" Then
			$FIREFOXINFO = $FIREFOXINFO & @CRLF & $PROFILEPATH & "\searchplugins\" & $FILEEXT & @CRLF
		EndIf
		$FILEEXT = ""
	EndIf
EndFunc
Global Const $CB_ERR = - 1
Global Const $CB_ERRATTRIBUTE = - 3
Global Const $CB_ERRREQUIRED = - 4
Global Const $CB_ERRSPACE = - 2
Global Const $CB_OKAY = 0
Global Const $STATE_SYSTEM_INVISIBLE = 32768
Global Const $STATE_SYSTEM_PRESSED = 8
Global Const $CBS_AUTOHSCROLL = 64
Global Const $CBS_DISABLENOSCROLL = 2048
Global Const $CBS_DROPDOWN = 2
Global Const $CBS_DROPDOWNLIST = 3
Global Const $CBS_HASSTRINGS = 512
Global Const $CBS_LOWERCASE = 16384
Global Const $CBS_NOINTEGRALHEIGHT = 1024
Global Const $CBS_OEMCONVERT = 128
Global Const $CBS_OWNERDRAWFIXED = 16
Global Const $CBS_OWNERDRAWVARIABLE = 32
Global Const $CBS_SIMPLE = 1
Global Const $CBS_SORT = 256
Global Const $CBS_UPPERCASE = 8192
Global Const $CBM_FIRST = 5888
Global Const $CB_ADDSTRING = 323
Global Const $CB_DELETESTRING = 324
Global Const $CB_DIR = 325
Global Const $CB_FINDSTRING = 332
Global Const $CB_FINDSTRINGEXACT = 344
Global Const $CB_GETCOMBOBOXINFO = 356
Global Const $CB_GETCOUNT = 326
Global Const $CB_GETCUEBANNER = ( $CBM_FIRST + 4 )
Global Const $CB_GETCURSEL = 327
Global Const $CB_GETDROPPEDCONTROLRECT = 338
Global Const $CB_GETDROPPEDSTATE = 343
Global Const $CB_GETDROPPEDWIDTH = 351
Global Const $CB_GETEDITSEL = 320
Global Const $CB_GETEXTENDEDUI = 342
Global Const $CB_GETHORIZONTALEXTENT = 349
Global Const $CB_GETITEMDATA = 336
Global Const $CB_GETITEMHEIGHT = 340
Global Const $CB_GETLBTEXT = 328
Global Const $CB_GETLBTEXTLEN = 329
Global Const $CB_GETLOCALE = 346
Global Const $CB_GETMINVISIBLE = 5890
Global Const $CB_GETTOPINDEX = 347
Global Const $CB_INITSTORAGE = 353
Global Const $CB_LIMITTEXT = 321
Global Const $CB_RESETCONTENT = 331
Global Const $CB_INSERTSTRING = 330
Global Const $CB_SELECTSTRING = 333
Global Const $CB_SETCUEBANNER = ( $CBM_FIRST + 3 )
Global Const $CB_SETCURSEL = 334
Global Const $CB_SETDROPPEDWIDTH = 352
Global Const $CB_SETEDITSEL = 322
Global Const $CB_SETEXTENDEDUI = 341
Global Const $CB_SETHORIZONTALEXTENT = 350
Global Const $CB_SETITEMDATA = 337
Global Const $CB_SETITEMHEIGHT = 339
Global Const $CB_SETLOCALE = 345
Global Const $CB_SETMINVISIBLE = 5889
Global Const $CB_SETTOPINDEX = 348
Global Const $CB_SHOWDROPDOWN = 335
Global Const $CBN_CLOSEUP = 8
Global Const $CBN_DBLCLK = 2
Global Const $CBN_DROPDOWN = 7
Global Const $CBN_EDITCHANGE = 5
Global Const $CBN_EDITUPDATE = 6
Global Const $CBN_ERRSPACE = ( - 1 )
Global Const $CBN_KILLFOCUS = 4
Global Const $CBN_SELCHANGE = 1
Global Const $CBN_SELENDCANCEL = 10
Global Const $CBN_SELENDOK = 9
Global Const $CBN_SETFOCUS = 3
Global Const $CBES_EX_CASESENSITIVE = 16
Global Const $CBES_EX_NOEDITIMAGE = 1
Global Const $CBES_EX_NOEDITIMAGEINDENT = 2
Global Const $CBES_EX_NOSIZELIMIT = 8
Global Const $CBES_EX_PATHWORDBREAKPROC = 4
Global Const $__COMBOBOXCONSTANT_WM_USER = 1024
Global Const $CBEM_DELETEITEM = $CB_DELETESTRING
Global Const $CBEM_GETCOMBOCONTROL = ( $__COMBOBOXCONSTANT_WM_USER + 6 )
Global Const $CBEM_GETEDITCONTROL = ( $__COMBOBOXCONSTANT_WM_USER + 7 )
Global Const $CBEM_GETEXSTYLE = ( $__COMBOBOXCONSTANT_WM_USER + 9 )
Global Const $CBEM_GETEXTENDEDSTYLE = ( $__COMBOBOXCONSTANT_WM_USER + 9 )
Global Const $CBEM_GETIMAGELIST = ( $__COMBOBOXCONSTANT_WM_USER + 3 )
Global Const $CBEM_GETITEMA = ( $__COMBOBOXCONSTANT_WM_USER + 4 )
Global Const $CBEM_GETITEMW = ( $__COMBOBOXCONSTANT_WM_USER + 13 )
Global Const $CBEM_GETUNICODEFORMAT = 8192 + 6
Global Const $CBEM_HASEDITCHANGED = ( $__COMBOBOXCONSTANT_WM_USER + 10 )
Global Const $CBEM_INSERTITEMA = ( $__COMBOBOXCONSTANT_WM_USER + 1 )
Global Const $CBEM_INSERTITEMW = ( $__COMBOBOXCONSTANT_WM_USER + 11 )
Global Const $CBEM_SETEXSTYLE = ( $__COMBOBOXCONSTANT_WM_USER + 8 )
Global Const $CBEM_SETEXTENDEDSTYLE = ( $__COMBOBOXCONSTANT_WM_USER + 14 )
Global Const $CBEM_SETIMAGELIST = ( $__COMBOBOXCONSTANT_WM_USER + 2 )
Global Const $CBEM_SETITEMA = ( $__COMBOBOXCONSTANT_WM_USER + 5 )
Global Const $CBEM_SETITEMW = ( $__COMBOBOXCONSTANT_WM_USER + 12 )
Global Const $CBEM_SETUNICODEFORMAT = 8192 + 5
Global Const $CBEM_SETWINDOWTHEME = 8192 + 11
Global Const $CBEN_FIRST = ( - 800 )
Global Const $CBEN_LAST = ( - 830 )
Global Const $CBEN_BEGINEDIT = ( $CBEN_FIRST - 4 )
Global Const $CBEN_DELETEITEM = ( $CBEN_FIRST - 2 )
Global Const $CBEN_DRAGBEGINA = ( $CBEN_FIRST - 8 )
Global Const $CBEN_DRAGBEGINW = ( $CBEN_FIRST - 9 )
Global Const $CBEN_ENDEDITA = ( $CBEN_FIRST - 5 )
Global Const $CBEN_ENDEDITW = ( $CBEN_FIRST - 6 )
Global Const $CBEN_GETDISPINFO = ( $CBEN_FIRST - 0 )
Global Const $CBEN_GETDISPINFOA = ( $CBEN_FIRST - 0 )
Global Const $CBEN_GETDISPINFOW = ( $CBEN_FIRST - 7 )
Global Const $CBEN_INSERTITEM = ( $CBEN_FIRST - 1 )
Global Const $CBEIF_DI_SETITEM = 268435456
Global Const $CBEIF_IMAGE = 2
Global Const $CBEIF_INDENT = 16
Global Const $CBEIF_LPARAM = 32
Global Const $CBEIF_OVERLAY = 8
Global Const $CBEIF_SELECTEDIMAGE = 4
Global Const $CBEIF_TEXT = 1
Global Const $__COMBOBOXCONSTANT_WS_VSCROLL = 2097152
Global Const $GUI_SS_DEFAULT_COMBO = BitOR ( $CBS_DROPDOWN , $CBS_AUTOHSCROLL , $__COMBOBOXCONSTANT_WS_VSCROLL )
AutoItSetOption ( "TrayIconHide" , 1 )
Switch @OSLang
Case "0419"
	If @OSLang <> "0419" Then
		_SETLANGUAGE ( "English" )
		$DEFAULTLANGUAGE_COMBO = "English"
	Else
		_SETLANGUAGE ( "Russian" )
		$DEFAULTLANGUAGE_COMBO = "russian"
	EndIf
	$INFOLOG = True
	$NMONTHS = 1
	$COMBOTEXT = ""
	#Region ### START GUI section ###
	Global $FONTSIZE = 11
	Global $FONTWEIGHT = 800
	Global $FONTSIZE_LANGUAGE_COMBO = 7.5
	If @OSVersion = "WIN_7" Then
		$SREGPARAM = RegRead ( "HKEY_CURRENT_USER\Control Panel\Desktop" , "LogPixels" )
		Select
		Case $SREGPARAM == 96
			$FONTSIZE = 11
			$FONTWEIGHT = 800
			$FONTSIZE_LANGUAGE_COMBO = 7
		Case $SREGPARAM == 120
			$FONTSIZE = 8
			$FONTWEIGHT = 800
			$FONTSIZE_LANGUAGE_COMBO = 6
	Case Else
			$FONTSIZE = 7
			$FONTWEIGHT = 800
			$FONTSIZE_LANGUAGE_COMBO = 5
		EndSelect
	EndIf
	$FORM1 = GUICreate ( "Random's system information tool - © random/random" , 537 , 404 )
	GUISetBkColor ( 16777215 )
	$PIC1 = GUICtrlCreatePic ( "" , 43 , 25 , 450 , 49 , 0 )
	_RESOURCESETIMAGETOCTRL ( $PIC1 , "logo_JPG" )
	$FORM1LABELDISCLAIMER = GUICtrlCreateLabel ( "" , 2 , 83 , 533 , 28 , $SS_CENTER )
	GUICtrlSetFont ( - 1 , $FONTSIZE + 3 , 800 , 0 )
	$FORM1LABELDISCLAIMER1 = GUICtrlCreateLabel ( "" , 22 , 112 , 496 , 52 , $SS_LEFT )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	GUICtrlCreateGraphic ( 17 , 172 , 505 , 1 )
	GUICtrlSetGraphic ( - 1 , $GUI_GR_LINE )
	GUICtrlSetColor ( - 1 , 0 )
	$FORM1LABELDISCLAIMER2 = GUICtrlCreateLabel ( "" , 22 , 182 , 498 , 78 , $SS_LEFT )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	$FORM1LABELFILEOPTION = GUICtrlCreateLabel ( "" , 80 , 270 , 250 , 48 , $SS_RIGHT )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	GUICtrlSetColor ( - 1 , 14750511 )
	$COMBO1 = GUICtrlCreateCombo ( "" , 344 , 274 , 115 , 25 , BitOR ( $GUI_SS_DEFAULT_COMBO , $CBS_DROPDOWNLIST ) )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	$BUTTON1 = GUICtrlCreateButton ( "" , 76 , 328 , 187 , 41 , 0 )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	GUICtrlSetState ( - 1 , $GUI_DEFBUTTON )
	$BUTTON2 = GUICtrlCreateButton ( "" , 275 , 328 , 187 , 41 , 0 )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	$LABEL_TRANSLATIONNNOTE = GUICtrlCreateLabel ( "" , 2 , 376 , 533 , 19 , $SS_CENTER )
	GUICtrlSetFont ( - 1 , $FONTSIZE , $FONTWEIGHT , 0 )
	GUICtrlSetColor ( - 1 , 255 )
	$LANGUAGE_COMBO = GUICtrlCreateCombo ( "" , 458 , 1 , 78 , 10 , BitOR ( $GUI_SS_DEFAULT_COMBO , $CBS_DROPDOWNLIST ) )
	GUICtrlSetFont ( - 1 , $FONTSIZE_LANGUAGE_COMBO , 400 , 0 )
	GUICtrlSetData ( $LANGUAGE_COMBO , "Russian|English" , $DEFAULTLANGUAGE_COMBO )
	GUICtrlSetData ( $FORM1LABELDISCLAIMER , $TEXT_DISCLAIMER )
	GUICtrlSetData ( $FORM1LABELDISCLAIMER1 , $TEXT_DISCLAIMER1 )
	GUICtrlSetData ( $FORM1LABELDISCLAIMER2 , $TEXT_DISCLAIMER2 )
	GUICtrlSetData ( $FORM1LABELFILEOPTION , $TEXT_FILEOPTION )
	GUICtrlSetData ( $BUTTON1 , $TEXT_CONTINUE )
	GUICtrlSetData ( $BUTTON2 , $TEXT_EXIT )
	GUICtrlSetData ( $LABEL_TRANSLATIONNNOTE , $TEXT_TRANSLATION )
	GUICtrlSetData ( $COMBO1 , $TEXT_1MONTH & "|" & $TEXT_2MONTH & "|" & $TEXT_3MONTH , $TEXT_1MONTH )
	GUISetState ( @SW_SHOW )
	#EndRegion ### END GUI section ###
	While 1
		$NMSG = GUIGetMsg ( )
		Switch $NMSG
		Case $GUI_EVENT_CLOSE , $BUTTON2
			Exit
		Case $BUTTON1
			$COMBOTEXT = GUICtrlRead ( $COMBO1 )
			GUISetState ( @SW_HIDE , $FORM1 )
			ExitLoop
		Case $LANGUAGE_COMBO
			If GUICtrlRead ( $LANGUAGE_COMBO ) = "English" Then
				_SETLANGUAGE ( "English" )
			Else
				_SETLANGUAGE ( "Russian" )
			EndIf
			GUICtrlSetData ( $FORM1LABELDISCLAIMER , $TEXT_DISCLAIMER )
			GUICtrlSetData ( $FORM1LABELDISCLAIMER1 , $TEXT_DISCLAIMER1 )
			GUICtrlSetData ( $FORM1LABELDISCLAIMER2 , $TEXT_DISCLAIMER2 )
			GUICtrlSetData ( $FORM1LABELFILEOPTION , $TEXT_FILEOPTION )
			GUICtrlSetData ( $BUTTON1 , $TEXT_CONTINUE )
			GUICtrlSetData ( $BUTTON2 , $TEXT_EXIT )
			GUICtrlSetData ( $LABEL_TRANSLATIONNNOTE , $TEXT_TRANSLATION )
			GUICtrlSetData ( $COMBO1 , "" )
			GUICtrlSetData ( $COMBO1 , $TEXT_1MONTH & "|" & $TEXT_2MONTH & "|" & $TEXT_3MONTH , $TEXT_1MONTH )
		EndSwitch
	WEnd
	Switch $COMBOTEXT
	Case $TEXT_1MONTH
		$NMONTHS = 1
	Case $TEXT_2MONTH
		$NMONTHS = 2
	Case $TEXT_3MONTH
		$NMONTHS = 3
Case Else
		$NMONTHS = 1
	EndSwitch
	#Region ### START Koda GUI section ### Form=
	$FORM2 = GUICreate ( "random's system information tool - © random/random" , 427 , 70 , 219 , 171 )
	GUISetBkColor ( 16777215 )
	$STATUSLABEL = GUICtrlCreateLabel ( "Label1" , 8 , 8 , 412 , 24 )
	GUICtrlSetFont ( - 1 , $FONTSIZE + 3 , 400 , 0 , "MS Sans Serif" )
	$PROGRESS = GUICtrlCreateProgress ( 8 , 40 , 409 , 17 )
	GUISetState ( @SW_SHOW )
	For $I = 1 To 100
		GUICtrlSetData ( $STATUSLABEL , $I & "%" )
		GUICtrlSetData ( $PROGRESS , $I )
	Next
	Sleep ( 500 )
	#EndRegion ### END Koda GUI section ###
Case Else
	$TEXT_DISCLAIMER = "Disclaimer of warranty"
	$TEXT_CONTINUE = "Continue"
	$TEXT_EXIT = "Exit"
	$TEXT_DISCLAIMER1 = "This software is provided AS IS without warranty of any kind."
	$TEXT_DISCLAIMER2 = "The author is not responsible for any damage caused by the use of this tool."
	$TEXT_DISCLAIMER3 = "If this tool cannot locate HijackThis, then it will connect to the internet to attempt to download HijackThis. If your firewall gives you any prompts for RSIT.exe, please allow them, since if this tool is not allowed to connect to the internet, the download of HijackThis will fail."
	$TEXT_DISCLAIMER4 = "If HijackThis is downloaded, you will need to agree to its licence agreement"
	$TEXT_FILEOPTION = "List files/folders created or modified in the last:"
	$TEXT_1MONTH = "1 month"
	$TEXT_2MONTH = "2 months"
	$TEXT_3MONTH = "3 months"
	$TEXT_WRITINGHEADER = "Writing header information"
	$TEXT_HEADER = "Logfile of random's system information tool 1.09 (written by random/random)"
	$TEXT_RUNBY = "Run by"
	$TEXT_AT = "at"
	$TEXT_SYSTEMDRIVE = "System drive "
	$TEXT_HAS = " has "
	$TEXT_FREEOF = "free of "
	$TEXT_TOTALRAM = "Total RAM: "
	$TEXT_FREE = "free"
	$TEXT_RUNNINGHJT = "Running HijackThis"
	$TEXT_ENUMERATINGPROCESSES = "Enumerating Processes"
	$TEXT_LISTINGPROCESSES = "Listing Processes"
	$TEXT_ENUMERATINGTASKS = "Enumerating scheduled tasks"
	$TEXT_TASKS = "Scheduled tasks folder"
	$TEXT_STATUSREGDUMP = "Performing Registry Dump"
	$TEXT_REGDUMP = "Registry dump"
	$TEXT_GUIFILEASSOC = "Checking file associations"
	$TEXT_FILEASSOC = "File associations"
	$TEXT_GUIRECENTFILES = "Listing recently created files/folders"
	$TEXT_FILESCREATED = "List of files/folders created in the last "
	$TEXT_MONTHS = " months"
	$TEXT_MONTH = " month"
	$TEXT_FILESMODIFIED = "List of files/folders modified in the last "
	$TEXT_GUISERVICESDRIVERS = "Listing services and drivers"
	$TEXT_LISTDRIVERS = "List of drivers (R=Running, S=Stopped, 0=Boot, 1=System, 2=Auto, 3=Demand, 4=Disabled)"
	$TEXT_DRIVERSWHITELISTED = "All drivers whitelisted"
	$TEXT_LISTSERVICES = "List of services (R=Running, S=Stopped, 0=Boot, 1=System, 2=Auto, 3=Demand, 4=Disabled)"
	$TEXT_SERVICESWHITELISTED = "All services whitelisted"
	$TEXT_INFOHEADER = "info.txt logfile of random's system information tool 1.09"
	$TEXT_UNINSTALLLIST = "Uninstall list"
	$TEXT_GUIUNINSTALLLIST = "Creating uninstall list"
	$TEXT_GUIHJTBACKUPS = "Listing HijackThis Backups"
	$TEXT_HJTBACKUPS = "HijackThis Backups"
	$TEXT_GUIHOSTS = "Checking Hosts file"
	$TEXT_HOSTSMISSING = "Hosts File Missing"
	$TEXT_HOSTS = "Hosts File"
	$TEXT_GUICHECKSECURITYCENTER = "Checking Security Center information"
	$TEXT_SECURITYCENTERWMIBROKEN = "Securitycenter WMI appears to be broken"
	$TEXT_DISABLED = " (disabled)"
	$TEXT_OUTDATED = " (outdated)"
	$TEXT_SECURITYCENTERINFO = "Security center information"
	$TEXT_GUIEVENTLOGS = "Listing event logs"
	$TEXT_SYSTEMEVENTLOG = "System event log"
	$TEXT_APPLICATIONEVENTLOG = "Application event log"
	$TEXT_SECURITYEVENTLOG = "Security event log"
	$TEXT_COMPUTERNAME = "Computer Name: "
	$TEXT_EVENTCODE = "Event Code: "
	$TEXT_EVENTLOGMESSAGE = "Message: "
	$TEXT_RECORDNUMBER = "Record Number: "
	$TEXT_SOURCENAME = "Source Name: "
	$TEXT_TIMEWRITTEN = "Time Written: "
	$TEXT_EVENTTYPE = "Event Type: "
	$TEXT_EVENTLOGUSER = "User: "
	$TEXT_LISTENVIRONMENTVARIABLES = "Listing environment variables"
	$TEXT_ENVIRONMENTVARIABLES = "Environment variables"
	$TEXT_TRANSLATION = ""
	$INFOLOG = True
	$NMONTHS = 1
	$COMBOTEXT = ""
	#Region ### START Koda GUI section ### Form=C:\Downloads\Software\koda_1.7.0.1\Forms\Form1.kxf
	$FORM1 = GUICreate ( "random's system information tool - © random/random" , 539 , 401 , 193 , 125 )
	GUISetFont ( 18 , 800 , 0 , "MS Sans Serif" )
	$LABEL1 = GUICtrlCreateLabel ( $TEXT_DISCLAIMER , 128 , 0 , 262 , 33 )
	$BUTTON1 = GUICtrlCreateButton ( $TEXT_CONTINUE , 8 , 296 , 257 , 57 , 0 )
	$BUTTON2 = GUICtrlCreateButton ( $TEXT_EXIT , 272 , 296 , 257 , 57 , 0 )
	$LABEL2 = GUICtrlCreateLabel ( $TEXT_DISCLAIMER1 , 40 , 40 , 438 , 24 )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	$LABEL3 = GUICtrlCreateLabel ( $TEXT_DISCLAIMER2 & @CRLF & $TEXT_DISCLAIMER3 & @CRLF & $TEXT_DISCLAIMER4 , 0 , 72 , 532 , 120 , $SS_CENTER )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	$LABEL4 = GUICtrlCreateLabel ( $TEXT_FILEOPTION , 60 , 250 , 340 )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	$COMBO1 = GUICtrlCreateCombo ( "" , 385 , 250 , 90 )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	GUICtrlSetData ( $COMBO1 , $TEXT_1MONTH & "|" & $TEXT_2MONTH & "|" & $TEXT_3MONTH , $TEXT_1MONTH )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	GUISetState ( @SW_SHOW )
	#EndRegion ### END Koda GUI section ###
	While 1
		$NMSG = GUIGetMsg ( )
		Switch $NMSG
		Case $GUI_EVENT_CLOSE
			Exit
		Case $BUTTON2
			Exit
		Case $BUTTON1
			$COMBOTEXT = GUICtrlRead ( $COMBO1 )
			GUISetState ( @SW_HIDE , $FORM1 )
			ExitLoop
		Case $LABEL1
		EndSwitch
	WEnd
	Switch $COMBOTEXT
	Case $TEXT_1MONTH
		$NMONTHS = 1
	Case $TEXT_2MONTH
		$NMONTHS = 2
	Case $TEXT_3MONTH
		$NMONTHS = 3
Case Else
		$NMONTHS = 1
	EndSwitch
	#Region ### START Koda GUI section ### Form=
	$FORM2 = GUICreate ( "random's system information tool - © random/random" , 427 , 70 , 219 , 171 )
	$STATUSLABEL = GUICtrlCreateLabel ( "Label1" , 8 , 8 , 412 , 24 )
	GUICtrlSetFont ( - 1 , 12 , 400 , 0 , "MS Sans Serif" )
	$PROGRESS = GUICtrlCreateProgress ( 8 , 40 , 409 , 17 )
	GUISetState ( @SW_SHOW )
	#EndRegion ### END Koda GUI section ###
EndSwitch
Dim $FARRAY [ 2 ]
Dim $DRIVER [ 2 ]
Dim $SERVICE [ 2 ]
Dim $FARRAYM [ 2 ]
Global $PATH
$PATHENV = EnvGet ( "path" )
$PATH = StringSplit ( $PATHENV , ";" )
$SYSTEMDRIVE = EnvGet ( "systemdrive" )
DirCreate ( $SYSTEMDRIVE & "\rsit" )
Global $LOG
$LOG = FileOpen ( $SYSTEMDRIVE & "\rsit\log.txt" , 2 + 128 )
If FileExists ( $SYSTEMDRIVE & "\rsit\info.txt" ) Then
	$INFOLOG = False
EndIf
If $CMDLINE [ 0 ] > 0 Then
	If $CMDLINE [ 1 ] = "/info" Then
		$INFOLOG = True
	EndIf
EndIf
If $INFOLOG = False Then
	$PERCENTSCALE = 1.25
Else
	$PERCENTSCALE = 1
EndIf
GUICtrlSetData ( $STATUSLABEL , $TEXT_WRITINGHEADER )
FileWriteLine ( $LOG , $TEXT_HEADER )
FileWriteLine ( $LOG , $TEXT_RUNBY & " " & @UserName & " " & $TEXT_AT & " " & @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC )
$OBJWMISERVICE = ObjGet ( "winmgmts:\\localhost\root\CIMV2" )
If @error <> 0 Then
	FileWriteLine ( $LOG , @OSVersion & " " & @OSServicePack )
Else
	$CCOLLECTION = $OBJWMISERVICE .ExecQuery ( "Select * from Win32_OperatingSystem" )
	For $OS In $CCOLLECTION
		$OSNAME = $OS .caption
	Next
	FileWriteLine ( $LOG , $OSNAME & " " & @OSServicePack )
EndIf
$SYSTEMDRIVESIZE = DriveSpaceTotal ( $SYSTEMDRIVE )
$SYSTEMDRIVEFREE = DriveSpaceFree ( $SYSTEMDRIVE )
$SYSTEMDRIVEFREEPERCENT = Round ( $SYSTEMDRIVEFREE / $SYSTEMDRIVESIZE * 100 )
If $SYSTEMDRIVEFREE > 1000 Then
	$SYSTEMDRIVEFREE = Round ( $SYSTEMDRIVEFREE / 1000 )
	$SYSTEMDRIVEFREE = $SYSTEMDRIVEFREE & " GB"
Else
	$SYSTEMDRIVEFREE = Round ( $SYSTEMDRIVEFREE )
	$SYSTEMDRIVEFREE = $SYSTEMDRIVEFREE & " MB"
EndIf
If $SYSTEMDRIVESIZE > 1000 Then
	$SYSTEMDRIVESIZE = Round ( $SYSTEMDRIVESIZE / 1000 )
	$SYSTEMDRIVESIZE = $SYSTEMDRIVESIZE & " GB"
Else
	$SYSTEMDRIVESIZE = Round ( $SYSTEMDRIVESIZE )
	$SYSTEMDRIVESIZE = $SYSTEMDRIVESIZE & " MB"
EndIf
FileWriteLine ( $LOG , $TEXT_SYSTEMDRIVE & $SYSTEMDRIVE & $TEXT_HAS & $SYSTEMDRIVEFREE & " (" & $SYSTEMDRIVEFREEPERCENT & "%) " & $TEXT_FREEOF & $SYSTEMDRIVESIZE )
$MEMINFO = MemGetStats ( )
$TOTALRAM = Round ( $MEMINFO [ 1 ] / 1024 )
$RAMFREE = Round ( $MEMINFO [ 2 ] / $MEMINFO [ 1 ] * 100 )
FileWriteLine ( $LOG , $TEXT_TOTALRAM & $TOTALRAM & " MB" & " (" & $RAMFREE & "% " & $TEXT_FREE & ")" )
FileWrite ( $LOG , @CRLF )
GUICtrlSetData ( $PROGRESS , 5 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_RUNNINGHJT )
$HJTF = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hijackthis.exe" , "" )
If $HJTF <> "" Then
	$HJTP = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hijackthis.exe" , "path" )
	If Not FileExists ( $HJTF ) Then
		FileChangeDir ( $HJTP )
		$HJTS = FileFindFirstFile ( "*" )
		While 1
			$HJTFT = FileFindNextFile ( $HJTS )
			If @error Then ExitLoop
			If FileGetSize ( $HJTFT ) = 396288 Then
				$HJTF = $HJTP & "\" & $HJTFT
			EndIf
		WEnd
	EndIf
	If FileExists ( $HJTF ) And FileGetVersion ( $HJTF ) = "2.0.0.4" Then
		FileCopy ( $HJTF , $HJTP & "\" & @UserName & ".exe" , 1 )
		ShellExecuteWait ( $HJTP & "\" & @UserName & ".exe" , "/silentautolog" )
		$HJTL = FileOpen ( $HJTP & "\hijackthis.log" , 0 )
		FileWrite ( $LOG , FileRead ( $HJTL ) )
		FileClose ( $HJTL )
	Else
		_DOWNLOADRUNHJT ( )
	EndIf
Else
	_DOWNLOADRUNHJT ( )
EndIf
FileWrite ( $LOG , @CRLF )
GUICtrlSetData ( $PROGRESS , 10 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_ENUMERATINGTASKS )
$SCHEDULEDTASKS = ""
FileChangeDir ( @WindowsDir & "\tasks" )
$JFS = FileFindFirstFile ( "*" )
While 1
	$JFN = FileFindNextFile ( $JFS )
	If @error <> 0 Then ExitLoop
	If StringInStr ( FileGetAttrib ( @WindowsDir & "\tasks\" & $JFN ) , "D" ) Then
	Else
		If StringInStr ( $JFN , ".job" ) Then
			$SCHEDULEDTASKS = $SCHEDULEDTASKS & @WindowsDir & "\tasks\" & $JFN & @CRLF
		EndIf
	EndIf
WEnd
If $SCHEDULEDTASKS <> "" Then
	FileWriteLine ( $LOG , "======" & $TEXT_TASKS & "======" )
	FileWrite ( $LOG , @CRLF )
	FileWrite ( $LOG , $SCHEDULEDTASKS )
	FileWrite ( $LOG , @CRLF )
EndIf
_FIREFOX ( $LOG , "x86" )
GUICtrlSetData ( $PROGRESS , 15 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_STATUSREGDUMP )
FileWriteLine ( $LOG , "======" & $TEXT_REGDUMP & "======" )
FileWrite ( $LOG , @CRLF )
_BHO ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Browser Helper Objects" , "HKEY_CLASSES_ROOT\CLSID" , $LOG )
_TOOLBAR ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Internet Explorer\Toolbar" , "HKEY_CLASSES_ROOT\CLSID" , $LOG )
_RUNKEYS ( "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Run" , $LOG )
_RUNKEYS ( "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\RunOnce" , $LOG )
_RUNKEYS ( "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run" , $LOG )
_RUNKEYS ( "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Run" , $LOG )
_RUNKEYS ( "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\RunOnce" , $LOG )
_RUNKEYS ( "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\Explorer\Run" , $LOG )
_MSCONFIG ( "HKEY_LOCAL_MACHINE\software\microsoft\shared tools\msconfig\startupreg" , $LOG )
_MSCONFIG ( "HKEY_LOCAL_MACHINE\software\microsoft\shared tools\msconfig\startupfolder" , $LOG )
_MSCONFIGSERVICES ( "HKEY_LOCAL_MACHINE\software\microsoft\shared tools\msconfig\services" , $LOG )
_STARTUPFOLDER ( @StartupCommonDir , $LOG )
_STARTUPFOLDER ( @StartupDir , $LOG )
_APPINIT ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Windows" , "AppInit_DLLs" , $LOG )
_WINLOGON ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon\Notify" , $LOG )
_SSODL ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\ShellServiceObjectDelayLoad" , "HKEY_CLASSES_ROOT\CLSID" , $LOG )
_STS ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\explorer\SharedTaskScheduler" , "HKEY_CLASSES_ROOT\CLSID" , $LOG )
_SEH ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\ShellExecuteHooks" , "HKEY_CLASSES_ROOT\CLSID" , $LOG )
_SINGLEVALUECHECK ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Winlogon" , "system" , "" , $LOG )
$LSA = ""
$AUTHPACKAGES = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" , "authentication packages" )
If $AUTHPACKAGES <> "msv1_0" Then
	$LSA = $LSA & Chr ( 34 ) & "authentication packages" & Chr ( 34 ) & "=" & $AUTHPACKAGES & @CRLF
EndIf
$NOTIFICATIONPACKAGES = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa" , "notification packages" )
If $NOTIFICATIONPACKAGES <> "scecli" Then
	$LSA = $LSA & Chr ( 34 ) & "notification packages" & Chr ( 34 ) & "=" & $NOTIFICATIONPACKAGES & @CRLF
EndIf
If $LSA <> "" Then
	FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Lsa]" )
	FileWrite ( $LOG , $LSA )
	FileWrite ( $LOG , @CRLF )
EndIf
$SECURITYPROVIDERS = RegRead ( "HKEY_LOCAL_MACHINE\system\currentcontrolset\control\securityproviders" , "SecurityProviders" )
If Not _SECURITYPROVIDERSWHITELISTED ( $SECURITYPROVIDERS ) Then
	FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\system\currentcontrolset\control\securityproviders]" )
	FileWriteLine ( $LOG , Chr ( 34 ) & "SecurityProviders" & Chr ( 34 ) & "=" & $SECURITYPROVIDERS )
	FileWrite ( $LOG , @CRLF )
EndIf
For $I = 1 To 200
	$SBOOTMKEY = RegEnumKey ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal" , $I )
	If @error <> 0 Then ExitLoop
	If Not _SAFEBOOTMINIMALWHITELISTED ( $SBOOTMKEY ) Then
		FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\Minimal\" & $SBOOTMKEY & "]" )
		FileWrite ( $LOG , @CRLF )
	EndIf
Next
For $I = 1 To 200
	$SBOOTNKEY = RegEnumKey ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\network" , $I )
	If @error <> 0 Then ExitLoop
	If Not _SAFEBOOTNETWORKWHITELISTED ( $SBOOTNKEY ) Then
		FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\SafeBoot\network\" & $SBOOTNKEY & "]" )
		FileWrite ( $LOG , @CRLF )
	EndIf
Next
_POLICYCHECK ( "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\System" , $LOG )
_POLICYCHECK ( "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\System" , $LOG )
_POLICYCHECK ( "HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Policies\explorer" , $LOG )
_POLICYCHECK ( "HKEY_LOCAL_MACHINE\Software\Microsoft\Windows\CurrentVersion\Policies\explorer" , $LOG )
FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\standardprofile\authorizedapplications\list]" )
For $I = 1 To 100
	$VAR = RegEnumVal ( "HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\standardprofile\authorizedapplications\list" , $I )
	$VALUENAME = RegRead ( "HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\standardprofile\authorizedapplications\list" , $VAR )
	If @error <> 0 Then ExitLoop
	FileWriteLine ( $LOG , Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & Chr ( 34 ) & $VALUENAME & Chr ( 34 ) )
Next
FileWrite ( $LOG , @CRLF )
FileWriteLine ( $LOG , "[HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\domainprofile\authorizedapplications\list]" )
For $I = 1 To 100
	$VAR = RegEnumVal ( "HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\domainprofile\authorizedapplications\list" , $I )
	$VALUENAME = RegRead ( "HKEY_LOCAL_MACHINE\system\currentcontrolset\services\sharedaccess\parameters\firewallpolicy\domainprofile\authorizedapplications\list" , $VAR )
	If @error <> 0 Then ExitLoop
	FileWriteLine ( $LOG , Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & Chr ( 34 ) & $VALUENAME & Chr ( 34 ) )
Next
FileWrite ( $LOG , @CRLF )
_MOUNTPOINTS ( "HKEY_CURRENT_USER\software\microsoft\windows\currentversion\explorer\mountpoints2" , $LOG )
Dim $EXE
Dim $DEBUGGER
Dim $IEFO
$IEFO = ""
For $I = 1 To 1000
	$EXE = RegEnumKey ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options" , $I )
	If @error = 0 Then
		$DEBUGGER = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\" & $EXE , "Debugger" )
		If @error = 0 And $DEBUGGER <> "ntsd -d" Then
			$IEFO = $IEFO & @CRLF & "[HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Image File Execution Options\" & $EXE & "]" & @CRLF & Chr ( 34 ) & "Debugger=" & Chr ( 34 ) & $DEBUGGER
		EndIf
	EndIf
Next
If $IEFO <> "" Then
	FileWrite ( $LOG , $IEFO )
	FileWrite ( $LOG , @CRLF & @CRLF )
EndIf
_DRIVERS32 ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows NT\CurrentVersion\Drivers32" , $LOG )
GUICtrlSetData ( $PROGRESS , 40 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIFILEASSOC )
$FASSOC = ""
$EXEFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.exe" , "" )
$EXEFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $EXEFILEKEY & "\shell\open\command" , "" )
If $EXEFILEOPEN <> Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".exe - open - " & $EXEFILEOPEN & @CRLF
EndIf
$BATFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.bat" , "" )
$BATFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $BATFILEKEY & "\shell\open\command" , "" )
If $BATFILEOPEN <> Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".bat - open - " & $BATFILEOPEN & @CRLF
EndIf
$BATFILEEDIT = RegRead ( "HKEY_CLASSES_ROOT\" & $BATFILEKEY & "\shell\edit\command" , "" )
If $BATFILEEDIT <> "%SystemRoot%\System32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".bat - edit - " & $BATFILEEDIT & @CRLF
EndIf
$CMDFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.cmd" , "" )
$CMDFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $CMDFILEKEY & "\shell\open\command" , "" )
If $CMDFILEOPEN <> Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".cmd - open - " & $CMDFILEOPEN & @CRLF
EndIf
$CMDFILEEDIT = RegRead ( "HKEY_CLASSES_ROOT\" & $CMDFILEKEY & "\shell\edit\command" , "" )
If $CMDFILEEDIT <> "%SystemRoot%\System32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".cmd - edit - " & $CMDFILEEDIT & @CRLF
EndIf
$INFFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.inf" , "" )
$INFFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $INFFILEKEY & "\shell\open\command" , "" )
If $INFFILEOPEN <> "%SystemRoot%\system32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".inf - open - " & $INFFILEOPEN & @CRLF
EndIf
$INFFILEINSTALL = RegRead ( "HKEY_CLASSES_ROOT\" & $INFFILEKEY & "\shell\install\command" , "" )
If $INFFILEINSTALL <> "%SystemRoot%\System32\InfDefaultInstall.exe " & Chr ( 34 ) & "%1" & Chr ( 34 ) And $INFFILEINSTALL <> "%SystemRoot%\System32\rundll32.exe setupapi,InstallHinfSection DefaultInstall 132 %1" Then
	$FASSOC = $FASSOC & ".inf - install - " & $INFFILEINSTALL & @CRLF
EndIf
$INIFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.ini" , "" )
$INIFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $INIFILEKEY & "\shell\open\command" , "" )
If $INIFILEOPEN <> "%SystemRoot%\system32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".ini - open - " & $INIFILEOPEN & @CRLF
EndIf
$JSFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.js" , "" )
$JSFILEEDIT = RegRead ( "HKEY_CLASSES_ROOT\" & $JSFILEKEY & "\shell\edit\command" , "" )
If $JSFILEEDIT <> "%SystemRoot%\System32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".js - edit - " & $JSFILEEDIT & @CRLF
EndIf
$JSFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $JSFILEKEY & "\shell\open\command" , "" )
If $JSFILEOPEN <> "%SystemRoot%\System32\WScript.exe " & Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".js - open - " & $JSFILEOPEN & @CRLF
EndIf
$COMFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.com" , "" )
$COMFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $COMFILEKEY & "\shell\open\command" , "" )
If $COMFILEOPEN <> Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".com - open - " & $COMFILEOPEN & @CRLF
EndIf
$REGFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.reg" , "" )
$REGFILEEDIT = RegRead ( "HKEY_CLASSES_ROOT\" & $REGFILEKEY & "\shell\edit\command" , "" )
If $REGFILEEDIT <> "%SystemRoot%\System32\NOTEPAD.EXE " & Chr ( 34 ) & "%1" & Chr ( 34 ) And $REGFILEEDIT <> "%SystemRoot%\system32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".reg - edit - " & $REGFILEEDIT & @CRLF
EndIf
$REGFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $REGFILEKEY & "\shell\open\command" , "" )
If $REGFILEOPEN <> "regedit.EXE " & Chr ( 34 ) & "%1" & Chr ( 34 ) Then
	$FASSOC = $FASSOC & ".reg - open - " & $REGFILEOPEN & @CRLF
EndIf
$SCRFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.scr" , "" )
$SCRFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $SCRFILEKEY & "\shell\open\command" , "" )
If $SCRFILEOPEN <> Chr ( 34 ) & "%1" & Chr ( 34 ) & " /S" Then
	$FASSOC = $FASSOC & ".scr - open - " & $SCRFILEOPEN & @CRLF
EndIf
$SCRFILEINSTALL = RegRead ( "HKEY_CLASSES_ROOT\" & $SCRFILEKEY & "\shell\install\command" , "" )
If $SCRFILEINSTALL <> "rundll32.exe desk.cpl,InstallScreenSaver %l" Then
	$FASSOC = $FASSOC & ".scr - install - " & $SCRFILEINSTALL & @CRLF
EndIf
$SCRFILECONFIG = RegRead ( "HKEY_CLASSES_ROOT\" & $SCRFILEKEY & "\shell\config\command" , "" )
If $SCRFILECONFIG <> Chr ( 34 ) & "%1" & Chr ( 34 ) And $SCRFILECONFIG <> "%1" Then
	$FASSOC = $FASSOC & ".scr - config - " & $SCRFILECONFIG & @CRLF
EndIf
$TXTFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.txt" , "" )
$TXTFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $TXTFILEKEY & "\shell\open\command" , "" )
If $TXTFILEOPEN <> "%SystemRoot%\system32\NOTEPAD.EXE %1" Then
	$FASSOC = $FASSOC & ".txt - open - " & $TXTFILEOPEN & @CRLF
EndIf
$VBSFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.vbs" , "" )
$VBSFILEEDIT = RegRead ( "HKEY_CLASSES_ROOT\" & $VBSFILEKEY & "\shell\edit\command" , "" )
If $VBSFILEEDIT <> Chr ( 34 ) & "%SystemRoot%\System32\NOTEPAD.EXE" & Chr ( 34 ) & " %1" And $VBSFILEEDIT <> "%SystemRoot%\System32\Notepad.exe %1" Then
	$FASSOC = $FASSOC & ".vbs - edit - " & $VBSFILEEDIT & @CRLF
EndIf
$VBSFILEOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $VBSFILEKEY & "\shell\open\command" , "" )
If $VBSFILEOPEN <> Chr ( 34 ) & "%SystemRoot%\System32\WScript.exe" & Chr ( 34 ) & " " & Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" And $VBSFILEOPEN <> "%SystemRoot%\System32\WScript.exe " & Chr ( 34 ) & "%1" & Chr ( 34 ) & " %*" Then
	$FASSOC = $FASSOC & ".vbs - open - " & $VBSFILEOPEN & @CRLF
EndIf
$CPLFILEKEY = RegRead ( "HKEY_CLASSES_ROOT\.cpl" , "" )
$CPLFILECPLOPEN = RegRead ( "HKEY_CLASSES_ROOT\" & $CPLFILEKEY & "\shell\cplopen\command" , "" )
If $CPLFILECPLOPEN <> "%SystemRoot%\System32\control.exe " & Chr ( 34 ) & "%1" & Chr ( 34 ) & ",%*" And $CPLFILECPLOPEN <> "rundll32.exe shell32.dll,Control_RunDLL " & Chr ( 34 ) & "%1" & Chr ( 34 ) & ",%*" And $CPLFILECPLOPEN <> "rundll32.exe shell32.dll,Control_RunDLL %1,%*" Then
	$FASSOC = $FASSOC & ".cpl - cplopen - " & $CPLFILECPLOPEN & @CRLF
EndIf
If $FASSOC <> "" Then
	FileWriteLine ( $LOG , "======" & $TEXT_FILEASSOC & "======" )
	FileWrite ( $LOG , @CRLF )
	FileWrite ( $LOG , $FASSOC )
	FileWrite ( $LOG , @CRLF )
EndIf
GUICtrlSetData ( $PROGRESS , 45 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIRECENTFILES )
Global $SYEAR
Global $SMON
Global $DAY
Global $FARRAY [ 1 ]
Global $FARRAYM [ 1 ]
If @MON > $NMONTHS Then
	$SYEAR = @YEAR
	$SMON = @MON - $NMONTHS
	$SDAY = @MDAY
Else
	$SYEAR = @YEAR - 1
	$SMON = 12 - $NMONTHS + @MON
	$SDAY = @MDAY
EndIf
$SDATE = $SYEAR * 10000 + $SMON * 100 + $SDAY
$AP = 1
$APM = 1
Dim $FOLDERS [ 7 ]
_FILELIST ( @ProgramFilesDir & "\" )
_FILELIST ( @WindowsDir & "\" )
_FILELIST ( @SystemDir & "\" )
_FILELIST ( @CommonFilesDir & "\" )
_FILELIST ( $SYSTEMDRIVE & "\" )
_FILELIST ( @AppDataDir & "\" )
_FILELIST ( @AppDataCommonDir & "\" )
_FILELIST ( @WindowsDir & "\fonts\" )
_FILELIST ( @SystemDir & "\drivers\" )
If $NMONTHS = 1 Then
	FileWriteLine ( $LOG , "======" & $TEXT_FILESCREATED & $NMONTHS & $TEXT_MONTH & "======" )
Else
	FileWriteLine ( $LOG , "======" & $TEXT_FILESCREATED & $NMONTHS & $TEXT_MONTHS & "======" )
EndIf
FileWrite ( $LOG , @CRLF )
_ARRAYSORT ( $FARRAY , 1 )
For $I = 0 To $AP - 1
	FileWriteLine ( $LOG , $FARRAY [ $I ] )
Next
If $NMONTHS = 1 Then
	FileWriteLine ( $LOG , "======" & $TEXT_FILESMODIFIED & $NMONTHS & $TEXT_MONTH & "======" )
Else
	FileWriteLine ( $LOG , "======" & $TEXT_FILESMODIFIED & $NMONTHS & $TEXT_MONTHS & "======" )
EndIf
FileWrite ( $LOG , @CRLF )
_ARRAYSORT ( $FARRAYM , 1 )
For $I = 0 To $APM - 1
	FileWriteLine ( $LOG , $FARRAYM [ $I ] )
Next
GUICtrlSetData ( $PROGRESS , 75 * $PERCENTSCALE )
GUICtrlSetData ( $STATUSLABEL , $TEXT_GUISERVICESDRIVERS )
$SAP = 0
$DAP = 0
For $I = 1 To 500
	$KEYNAME = RegEnumKey ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services" , $I )
	If @error <> 0 Then ExitLoop
	$FILE = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & $KEYNAME , "imagepath" )
	$STATUS = _SERVICERUNNING ( "" , $KEYNAME )
	If $STATUS Then
		$RUNNING = "R"
	Else
		$RUNNING = "S"
	EndIf
	$TYPE = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & $KEYNAME , "type" )
	If @error = 0 Then
		$STYPE = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & $KEYNAME , "start" )
		If @error = 0 Then
			$DISPLAYNAME = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\" & $KEYNAME , "displayname" )
			If $DISPLAYNAME = "" Then $DISPLAYNAME = $KEYNAME
			If $TYPE = 1 Or $TYPE = 2 Then
				If $FILE = "" Then
					$FILE = @SystemDir & "\drivers\" & $KEYNAME & ".sys"
				EndIf
				If _DRIVERWHITELISTED ( $KEYNAME ) Then
				Else
					$STRING = $RUNNING & $STYPE & " " & $KEYNAME & ";" & $DISPLAYNAME & ";" & " " & _SERVICEFILEPARSE ( $FILE , $KEYNAME )
					_ARRAYADD ( $DRIVER , $STRING )
					$DAP = $DAP + 1
				EndIf
			Else
				If $FILE <> "" Then
					If _SERVICEWHITELISTED ( $KEYNAME ) Then
					Else
						$STRING = $RUNNING & $STYPE & " " & $KEYNAME & ";" & $DISPLAYNAME & ";" & " " & _SERVICEFILEPARSE ( $FILE , $KEYNAME )
						_ARRAYADD ( $SERVICE , $STRING )
						$SAP = $SAP + 1
					EndIf
				EndIf
			EndIf
		EndIf
	EndIf
Next
FileWriteLine ( $LOG , "======" & $TEXT_LISTDRIVERS & "======" )
_ARRAYSORT ( $DRIVER )
If $DAP <> 0 Then
	For $I = 1 To $DAP + 1
		FileWriteLine ( $LOG , $DRIVER [ $I ] )
	Next
Else
	FileWrite ( $LOG , @CRLF )
	FileWriteLine ( $LOG , $TEXT_DRIVERSWHITELISTED )
EndIf
FileWrite ( $LOG , @CRLF )
FileWriteLine ( $LOG , "======" & $TEXT_LISTSERVICES & "======" )
_ARRAYSORT ( $SERVICE )
If $SAP <> 0 Then
	For $I = 1 To $SAP + 1
		FileWriteLine ( $LOG , $SERVICE [ $I ] )
	Next
Else
	FileWrite ( $LOG , @CRLF )
	FileWriteLine ( $LOG , $TEXT_SERVICESWHITELISTED )
EndIf
FileWrite ( $LOG , @CRLF )
FileWriteLine ( $LOG , "-----------------EOF-----------------" )
FileClose ( $LOG )
If $INFOLOG = True Then
	$INFO = FileOpen ( $SYSTEMDRIVE & "\rsit\info.txt" , 2 + 128 )
	FileWriteLine ( $INFO , $TEXT_INFOHEADER & " " & @YEAR & "-" & @MON & "-" & @MDAY & " " & @HOUR & ":" & @MIN & ":" & @SEC )
	FileWrite ( $INFO , @CRLF )
	FileWriteLine ( $INFO , "======" & $TEXT_UNINSTALLLIST & "======" )
	FileWrite ( $INFO , @CRLF )
	$I = 1
	GUICtrlSetData ( $PROGRESS , 80 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIUNINSTALLLIST )
	Dim $UARRAY [ 2 ]
	For $J = 1 To 500
		$UINSTALLITEM = RegEnumKey ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall" , $J )
		If @error <> 0 Then ExitLoop
		$FILE = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $UINSTALLITEM , "UninstallString" )
		$UNINSTALLNAME = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\" & $UINSTALLITEM , "displayname" )
		If $FILE <> "" Then
			_ARRAYADD ( $UARRAY , $UNINSTALLNAME & "-->" & $FILE )
			$I = $I + 1
		EndIf
	Next
	_ARRAYSORT ( $UARRAY )
	For $J = 2 To $I
		FileWriteLine ( $INFO , $UARRAY [ $J ] )
	Next
	FileWrite ( $INFO , @CRLF )
	GUICtrlSetData ( $PROGRESS , 83 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIHJTBACKUPS )
	$HJTP = RegRead ( "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\App Paths\hijackthis.exe" , "path" )
	$HJTBP = $HJTP & "\backups\"
	$TEST = FileChangeDir ( $HJTBP )
	If $TEST <> 0 Then
		$HJTB = ""
		$FS = FileFindFirstFile ( "*" )
		While 1
			$FN = FileFindNextFile ( $FS )
			If @error <> 0 Then ExitLoop
			If Not StringInStr ( $FN , "." ) Then
				$LINE = FileReadLine ( $FN )
				$FTIME = FileGetTime ( $FN )
				If @error <> 0 Then
				Else
					$HJTB = $HJTB & $LINE & " [" & $FTIME [ 0 ] & "-" & $FTIME [ 1 ] & "-" & $FTIME [ 2 ] & "]" & @CRLF
				EndIf
			EndIf
		WEnd
		If $HJTB <> "" Then
			FileWriteLine ( $INFO , "=====" & $TEXT_HJTBACKUPS & "=====" )
			FileWrite ( $INFO , @CRLF & $HJTB & @CRLF )
		EndIf
	EndIf
	GUICtrlSetData ( $PROGRESS , 85 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIHOSTS )
	$HOSTPATH = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" , "databasepath" )
	If StringInStr ( $HOSTPATH , "%" ) Then
		$START = StringInStr ( $HOSTPATH , "%" )
		$END = StringInStr ( $HOSTPATH , "%" , 0 , 2 )
		$ENVNAME = StringMid ( $HOSTPATH , $START + 1 , $END - $START - 1 )
		$ENVPATH = EnvGet ( $ENVNAME )
		$HOSTPATH = StringReplace ( $HOSTPATH , "%" & $ENVNAME & "%" , $ENVPATH )
	EndIf
	$HOSTSFILE = ""
	If FileExists ( $HOSTPATH & "\" & "hosts" ) Then
		$HOSTS = FileOpen ( $HOSTPATH & "\" & "hosts" , 0 )
		$HOST = FileRead ( $HOSTS )
		$HOSTENTRIES = StringSplit ( $HOST , @CRLF , 1 )
		$J = 0
		$K = 0
		For $I = 1 To $HOSTENTRIES [ 0 ]
			If StringMid ( $HOSTENTRIES [ $I ] , 1 , 1 ) = "#" Or $HOSTENTRIES [ $I ] = "127.0.0.1       localhost" Or $HOSTENTRIES [ $I ] = "::1             localhost" Or $HOSTENTRIES [ $I ] = "" Then
				$J = $J + 1
			Else
				If $K > 9 Then ExitLoop
				$HOSTSFILE = $HOSTSFILE & $HOSTENTRIES [ $I ] & @CRLF
				$K = $K + 1
			EndIf
		Next
	Else
		FileWriteLine ( $INFO , $TEXT_HOSTSMISSING )
	EndIf
	If $HOSTSFILE <> "" Then
		FileWriteLine ( $INFO , "======" & $TEXT_HOSTS & "======" )
		FileWrite ( $INFO , @CRLF )
		FileWrite ( $INFO , $HOSTSFILE )
		FileWrite ( $INFO , @CRLF )
	EndIf
	GUICtrlSetData ( $PROGRESS , 90 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_GUICHECKSECURITYCENTER )
	If ( @OSVersion = "win_xp" And @OSServicePack >= "Service Pack 2" ) Or ( @OSVersion = "win_vista" ) Then
		$SC_OBJWMISERVICE = ObjGet ( "winmgmts:\\localhost\root\securitycenter" )
		If @error <> 0 Then
			FileWriteLine ( $INFO , $TEXT_SECURITYCENTERWMIBROKEN )
			FileWrite ( $INFO , @CRLF )
		Else
			$AVCOLLECTION = $SC_OBJWMISERVICE .ExecQuery ( "Select * from Antivirusproduct" )
			$SC = ""
			For $AV In $AVCOLLECTION
				$AVNAME = "AV: " & $AV .displayname
				If Not Abs ( $AV .onAccessScanningEnabled ) Then
					$AVNAME = $AVNAME & $TEXT_DISABLED
				EndIf
				If Not Abs ( $AV .productuptodate ) Then
					$AVNAME = $AVNAME & $TEXT_OUTDATED
				EndIf
				$SC = $SC & $AVNAME & @CRLF
			Next
			$FWCOLLECTION = $SC_OBJWMISERVICE .execquery ( "select * from firewallproduct" )
			For $FW In $FWCOLLECTION
				$FWNAME = "FW: " & $FW .displayname
				If Not Abs ( $FW .enabled ) Then
					$FWNAME = $FWNAME & $TEXT_DISABLED
				EndIf
				$SC = $SC & $FWNAME & @CRLF
			Next
			$ASCOLLECTION = $SC_OBJWMISERVICE .execquery ( "select * from antispywareproduct" )
			For $AS In $ASCOLLECTION
				$ASNAME = "AS: " & $AS .displayname
				If Not Abs ( $AS .productEnabled ) Then
					$ASNAME = $ASNAME & $TEXT_DISABLED
				EndIf
				If Not Abs ( $AS .productuptodate ) Then
					$ASNAME = $ASNAME & $TEXT_OUTDATED
				EndIf
				$SC = $SC & $ASNAME & @CRLF
			Next
			If $SC <> "" Then
				FileWriteLine ( $INFO , "======" & $TEXT_SECURITYCENTERINFO & "======" )
				FileWrite ( $INFO , @CRLF & $SC )
				FileWrite ( $INFO , @CRLF )
			EndIf
		EndIf
	EndIf
	GUICtrlSetData ( $PROGRESS , 93 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_GUIEVENTLOGS )
	$EVT_OBJWMISERVICE = ObjGet ( "winmgmts:\\localhost\root\CIMV2" )
	If @error = 0 Then
		$SYSCOLLECTION = $EVT_OBJWMISERVICE .ExecQuery ( "Select * from Win32_NTLogEvent Where Logfile = 'System'" )
		If @error = 0 Then
			Dim $SYSEVENTLOG [ 5 ]
			For $OS In $SYSCOLLECTION
				If $OS .Type <> "Information" Then
					_ARRAYPUSH ( $SYSEVENTLOG , $TEXT_COMPUTERNAME & $OS .ComputerName & @CRLF & $TEXT_EVENTCODE & $OS .EventCode & @CRLF & $TEXT_EVENTLOGMESSAGE & $OS .Message & @CRLF & $TEXT_RECORDNUMBER & $OS .RecordNumber & @CRLF & $TEXT_SOURCENAME & $OS .SourceName & @CRLF & $TEXT_TIMEWRITTEN & $OS .TimeWritten & @CRLF & $TEXT_EVENTTYPE & $OS .Type & @CRLF & $TEXT_EVENTLOGUSER & $OS .User & @CRLF )
				EndIf
			Next
			If $SYSEVENTLOG [ 0 ] <> "" Then
				FileWriteLine ( $INFO , "======" & $TEXT_SYSTEMEVENTLOG & "======" )
				FileWrite ( $INFO , @CRLF )
				For $I = 0 To 4
					If $SYSEVENTLOG <> "" Then
						FileWrite ( $INFO , $SYSEVENTLOG [ $I ] & @CRLF )
					EndIf
				Next
			EndIf
		EndIf
		$APPCOLLECTION = $EVT_OBJWMISERVICE .ExecQuery ( "Select * from Win32_NTLogEvent Where Logfile = 'Application'" )
		If @error = 0 Then
			Dim $APPEVENTLOG [ 5 ]
			For $OS In $APPCOLLECTION
				If $OS .Type <> "Information" Then
					_ARRAYPUSH ( $APPEVENTLOG , $TEXT_COMPUTERNAME & $OS .ComputerName & @CRLF & $TEXT_EVENTCODE & $OS .EventCode & @CRLF & $TEXT_EVENTLOGMESSAGE & $OS .Message & @CRLF & $TEXT_RECORDNUMBER & $OS .RecordNumber & @CRLF & $TEXT_SOURCENAME & $OS .SourceName & @CRLF & $TEXT_TIMEWRITTEN & $OS .TimeWritten & @CRLF & $TEXT_EVENTTYPE & $OS .Type & @CRLF & $TEXT_EVENTLOGUSER & $OS .User & @CRLF )
				EndIf
			Next
			If $APPEVENTLOG [ 0 ] <> "" Then
				FileWriteLine ( $INFO , "=====" & $TEXT_APPLICATIONEVENTLOG & "=====" )
				FileWrite ( $INFO , @CRLF )
				For $I = 0 To 4
					If $APPEVENTLOG <> "" Then
						FileWrite ( $INFO , $APPEVENTLOG [ $I ] & @CRLF )
					EndIf
				Next
			EndIf
		EndIf
		$SECCOLLECTION = $EVT_OBJWMISERVICE .ExecQuery ( "Select * from Win32_NTLogEvent Where Logfile = 'Security'" )
		If @error = 0 Then
			Dim $SECEVENTLOG [ 5 ]
			For $OS In $SECCOLLECTION
				_ARRAYPUSH ( $SECEVENTLOG , $TEXT_COMPUTERNAME & $OS .ComputerName & @CRLF & $TEXT_EVENTCODE & $OS .EventCode & @CRLF & $TEXT_EVENTLOGMESSAGE & $OS .Message & @CRLF & $TEXT_RECORDNUMBER & $OS .RecordNumber & @CRLF & $TEXT_SOURCENAME & $OS .SourceName & @CRLF & $TEXT_TIMEWRITTEN & $OS .TimeWritten & @CRLF & $TEXT_EVENTTYPE & $OS .Type & @CRLF & $TEXT_EVENTLOGUSER & $OS .User & @CRLF )
			Next
			If $SECEVENTLOG [ 0 ] <> "" Then
				FileWriteLine ( $INFO , "=====" & $TEXT_SECURITYEVENTLOG & "=====" )
				FileWrite ( $INFO , @CRLF )
				For $I = 0 To 4
					If $SECEVENTLOG <> "" Then
						FileWrite ( $INFO , $SECEVENTLOG [ $I ] & @CRLF )
					EndIf
				Next
			EndIf
		EndIf
	EndIf
	GUICtrlSetData ( $PROGRESS , 95 )
	GUICtrlSetData ( $STATUSLABEL , $TEXT_LISTENVIRONMENTVARIABLES )
	$ENVVARS = ""
	For $I = 1 To 100
		$VAR = RegEnumVal ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" , $I )
		$VALUENAME = RegRead ( "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" , $VAR )
		If @error <> 0 Then ExitLoop
		$ENVVARS = $ENVVARS & Chr ( 34 ) & $VAR & Chr ( 34 ) & "=" & $VALUENAME & @CRLF
	Next
	If $ENVVARS <> "" Then
		FileWriteLine ( $INFO , "======" & $TEXT_ENVIRONMENTVARIABLES & "======" )
		FileWrite ( $INFO , @CRLF )
		FileWrite ( $INFO , $ENVVARS )
		FileWrite ( $INFO , @CRLF )
	EndIf
	FileWriteLine ( $INFO , "-----------------EOF-----------------" )
	FileClose ( $INFO )
	ShellExecute ( $SYSTEMDRIVE & "\rsit\info.txt" , "" , "" , "open" , @SW_MINIMIZE )
EndIf
GUICtrlSetData ( $PROGRESS , 80 * $PERCENTSCALE )
ShellExecute ( $SYSTEMDRIVE & "\rsit\log.txt" , "" , "" , "open" , @SW_MAXIMIZE )

