unit main;

{ DHL20 Main.pas by �̴Ͼ<gnuhacker@gmail.com> }

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  ComObj, // IE����� ����
  HTTPApp, //  HTTPEncode ,HTTPDecode
  INIFiles, // INI ����� ����
  ActiveX, //  TCLSID ���
  ShellApi, //Trayicon ADD
  WinInet, //Cookie ������ ����
  //ExceptionHandler ��� activex ������Ʈ��
  Dialogs, pngimage, ExtCtrls,  StdCtrls, Buttons, Menus, ComCtrls,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdHTTP;



type
  TFrm_main = class(TForm)
    UI_BG: TImage;
    UIB_home: TImage;
    UIB_close: TImage;
    lbl_log: TLabel;
    UIB_config: TImage;
    UIB_1: TImage;
    UIL_config: TLabel;
    UI_notice: TImage;
    UIB_OK: TLabel;
    UIB_cancel: TLabel;
    UIL_notice: TLabel;
    UI_config: TImage;
    UI_search: TImage;
    edt_search: TEdit;
    cmb_type: TComboBox;
    UIB_2: TImage;
    UIB_3: TImage;
    UIB_4: TImage;
    UIB_5: TImage;
    UIB_6: TImage;
    UIB_util: TImage;
    UIB_bug: TImage;
    UIL_bug: TLabel;
    UIL_Mirr: TLabel;
    UIB_mirr: TImage;
    UIL_util: TLabel;
    UIB_7: TImage;
    UIB_8: TImage;
    UIB_9: TImage;
    UIL_1: TLabel;
    UIL_2: TLabel;
    UIL_3: TLabel;
    UIL_4: TLabel;
    UIL_5: TLabel;
    UIL_6: TLabel;
    UIL_7: TLabel;
    UIL_8: TLabel;
    UIL_9: TLabel;
    chk_save: TCheckBox;
    chk_safe: TCheckBox;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    N101: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    N13: TMenuItem;
    N14: TMenuItem;
    N15: TMenuItem;
    N16: TMenuItem;
    N17: TMenuItem;
    N102: TMenuItem;
    N10: TMenuItem;
    N103: TMenuItem;
    N6: TMenuItem;
    N104: TMenuItem;
    BugReport1: TMenuItem;
    N2: TMenuItem;
    N105: TMenuItem;
    GP1: TPanel;
    cmb_server1: TComboBox;
    edt_hint1: TEdit;
    edt_id1: TEdit;
    edt_pw1: TEdit;
    edt_safepw1: TEdit;
    lbl_pw: TLabel;
    Label16: TLabel;
    lbl_id: TLabel;
    lbl_safe1: TLabel;
    cmb_site: TComboBox;
    GP2: TPanel;
    lbl_pw2: TLabel;
    lbl_hint2: TLabel;
    lbl_id2: TLabel;
    lbl_safe2: TLabel;
    cmb_server2: TComboBox;
    edt_hint2: TEdit;
    edt_id2: TEdit;
    edt_pw2: TEdit;
    edt_safepw2: TEdit;
    GP3: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    lbl_safe3: TLabel;
    cmb_server3: TComboBox;
    edt_hint3: TEdit;
    edt_id3: TEdit;
    edt_pw3: TEdit;
    edt_safepw3: TEdit;
    GP4: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    lbl_safe4: TLabel;
    cmb_server4: TComboBox;
    edt_hint4: TEdit;
    edt_id4: TEdit;
    edt_pw4: TEdit;
    edt_safepw4: TEdit;
    GP5: TPanel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    lbl_safe5: TLabel;
    cmb_server5: TComboBox;
    edt_hint5: TEdit;
    edt_id5: TEdit;
    edt_pw5: TEdit;
    edt_safepw5: TEdit;
    GP6: TPanel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    lbl_safe6: TLabel;
    cmb_server6: TComboBox;
    edt_hint6: TEdit;
    edt_id6: TEdit;
    edt_pw6: TEdit;
    edt_safepw6: TEdit;
    GP7: TPanel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    lbl_safe7: TLabel;
    cmb_server7: TComboBox;
    edt_hint7: TEdit;
    edt_id7: TEdit;
    edt_pw7: TEdit;
    edt_safepw7: TEdit;
    GP8: TPanel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    lbl_safe8: TLabel;
    cmb_server8: TComboBox;
    edt_hint8: TEdit;
    edt_id8: TEdit;
    edt_pw8: TEdit;
    edt_safepw8: TEdit;
    GP9: TPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lbl_safe9: TLabel;
    cmb_server9: TComboBox;
    edt_hint9: TEdit;
    edt_id9: TEdit;
    edt_pw9: TEdit;
    edt_safepw9: TEdit;
    GP10: TPanel;
    Label30: TLabel;
    Label32: TLabel;
    edt_id10: TEdit;
    edt_pw10: TEdit;
    N18: TMenuItem;
    N19: TMenuItem;
    GPN: TPanel;
    lbl_navi: TLabel;
    btn_filesearch: TButton;
    btn_navi: TButton;
    procedure UI_BGMouseMove(Sender: TObject; Shift: TShiftState; X,Y: Integer);
    procedure UIB_homeClick(Sender: TObject);
    procedure UIB_closeClick(Sender: TObject);
    procedure UIB_cancelClick(Sender: TObject);
    procedure UIB_OKClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormDestroy(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UIB_configClick(Sender: TObject);
    procedure edt_hint1KeyPress(Sender: TObject; var Key: Char);
    procedure UIB_mirrClick(Sender: TObject);
    procedure WndProc ( var Message : TMessage ); override;
    procedure N1Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure UIB_bugClick(Sender: TObject);
    procedure edt_searchKeyPress(Sender: TObject; var Key: Char);
    procedure btn_naviClick(Sender: TObject);
    procedure btn_filesearchClick(Sender: TObject);
    procedure UIB_utilClick(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure UIB_1Click(Sender: TObject);
    procedure UIB_2Click(Sender: TObject);
    procedure UIB_3Click(Sender: TObject);
    procedure UIB_4Click(Sender: TObject);
    procedure UIB_5Click(Sender: TObject);
    procedure UIB_6Click(Sender: TObject);
    procedure UIB_7Click(Sender: TObject);
    procedure UIB_8Click(Sender: TObject);
    procedure UIB_9Click(Sender: TObject);
    procedure UIL_noticeClick(Sender: TObject);
    procedure edt_hint1Exit(Sender: TObject);
    procedure cmb_saveCheck(Sender: TObject);
    procedure cmb_siteChange(Sender: TObject);


  private
    function ExtractURLs(const AInputString: string): string;
    //procedure N7Click(Sender: TObject);
    procedure AutoWebLogin(site,id,pw,safepw:string;opt:boolean);
    procedure dhoguide_Login(id, pw, url: string);
    procedure dhoguide_Logout;
    procedure OpenInternetExplorer(sURL: string);
    function Get_filetime(filename: string): string;
    procedure config_close;
    procedure config_open;
    procedure hint_change(Sender: TObject);
    procedure hintre_write;
    procedure Trayicon(Sender: TObject);
    procedure ViewPopUp(var AMsg: TWMRButtonDown);
    procedure noticewindow(sender: TObject);
    procedure Game_check(sender: TObject);
    function IsInstalledActiveX(AProgID: WideString): Boolean;
    procedure edt_hintExit(Sender: TObject);


    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_main: TFrm_main;
  IconData : TNotifyIconData; // ������ ��������
  FIni : TINIFile;            // INI ������
  IE : Variant;               // IE�Ѱ��� ����
  IE_handle : THandle;        // IE �ڵ�
  IE2 : Variant;              // IE�Ѱ��� ����
  IE2_handle : THandle;       // IE2 �ڵ�
  login_check :boolean;       // �α��εǾ�����
  g_game_exec :boolean;       // ���� ����������
  is_notice:boolean;          // �������� üũ 1�̸� üũ
  notice_stats:integer;       // ��Ȳ��ȣ
  NAV_handle: THandle;        // �׺��ڵ�
const
  csOLEObjName = 'InternetExplorer.Application';

implementation

uses
  RegExpr,UEncrypt, version,env;

{$R *.dfm}

// �� �̵�
procedure TFrm_main.UI_BGMouseMove(Sender: TObject; Shift: TShiftState; X,
  Y: Integer);
begin
  ReleaseCapture;
  Frm_main.Perform( WM_SYSCOMMAND, $F012, 0 );
end;

// ���� OK
procedure TFrm_main.UIB_OKClick(Sender: TObject);
begin
// showmessagE('ok');
  UI_notice.Visible := false;
  UIL_notice.Visible := false;
  UIB_ok.Visible := false;
  UIB_cancel.Visible := false;

  // ���� ���� notice_stats
  if notice_stats = 1111 then begin
    is_notice := true;
  // server check
  end else if notice_stats = 100 then  begin //no activex
    OpenInternetExplorer('http://dho.netmarble.net/main.asp');
  end else if notice_stats = 101 then  begin //no activex
    OpenInternetExplorer('http://dho.daum.net/main.asp');

  end else if notice_stats = 110 then  begin // no id
    config_open;cmb_site.ItemIndex := 0;cmb_siteChange(cmb_site);cmb_server1.SetFocus;
  end else if notice_stats = 120 then  begin // no id
    config_open;cmb_site.ItemIndex := 1;cmb_siteChange(cmb_site);cmb_server2.SetFocus;
  end else if notice_stats = 130 then  begin // no id
    config_open;cmb_site.ItemIndex := 2;cmb_siteChange(cmb_site);cmb_server3.SetFocus;
  end else if notice_stats = 140 then  begin // no id
    config_open;cmb_site.ItemIndex := 3;cmb_siteChange(cmb_site);cmb_server4.SetFocus;
  end else if notice_stats = 150 then  begin // no id
    config_open;cmb_site.ItemIndex := 4;cmb_siteChange(cmb_site);cmb_server5.SetFocus;
  end else if notice_stats = 160 then  begin // no id
    config_open;cmb_site.ItemIndex := 5;cmb_siteChange(cmb_site);cmb_server6.SetFocus;
  end else if notice_stats = 170 then  begin // no id
    config_open;cmb_site.ItemIndex := 6;cmb_siteChange(cmb_site);cmb_server7.SetFocus;
  end else if notice_stats = 180 then  begin // no id
    config_open;cmb_site.ItemIndex := 7;cmb_siteChange(cmb_site);cmb_server8.SetFocus;
  end else if notice_stats = 190 then  begin // no id
    config_open;cmb_site.ItemIndex := 8;cmb_siteChange(cmb_site);cmb_server9.SetFocus;
  // id check
  end else if notice_stats = 111 then  begin // no id
    config_open;cmb_site.ItemIndex := 0;cmb_siteChange(cmb_site);edt_id1.SetFocus;
  end else if notice_stats = 121 then  begin // no id
    config_open;cmb_site.ItemIndex := 1;cmb_siteChange(cmb_site);edt_id2.SetFocus;
  end else if notice_stats = 131 then  begin // no id
    config_open;cmb_site.ItemIndex := 2;cmb_siteChange(cmb_site);edt_id3.SetFocus;
  end else if notice_stats = 141 then  begin // no id
    config_open;cmb_site.ItemIndex := 3;cmb_siteChange(cmb_site);edt_id4.SetFocus;
  end else if notice_stats = 151 then  begin // no id
    config_open;cmb_site.ItemIndex := 4;cmb_siteChange(cmb_site);edt_id5.SetFocus;
  end else if notice_stats = 161 then  begin // no id
    config_open;cmb_site.ItemIndex := 5;cmb_siteChange(cmb_site);edt_id6.SetFocus;
  end else if notice_stats = 171 then  begin // no id
    config_open;cmb_site.ItemIndex := 6;cmb_siteChange(cmb_site);edt_id7.SetFocus;
  end else if notice_stats = 181 then  begin // no id
    config_open;cmb_site.ItemIndex := 7;cmb_siteChange(cmb_site);edt_id8.SetFocus;
  end else if notice_stats = 191 then  begin // no id
    config_open;cmb_site.ItemIndex := 8;cmb_siteChange(cmb_site);edt_id9.SetFocus;
  end else if notice_stats = 991 then  begin //mirr id ����
    config_open;cmb_site.ItemIndex := 9;cmb_siteChange(cmb_site);edt_id10.SetFocus;
  // pw check
  end else if notice_stats = 112 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 0;cmb_siteChange(cmb_site);edt_pw1.SetFocus;
  end else if notice_stats = 122 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 1;cmb_siteChange(cmb_site);edt_pw2.SetFocus;
  end else if notice_stats = 132 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 2;cmb_siteChange(cmb_site);edt_pw3.SetFocus;
  end else if notice_stats = 142 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 3;cmb_siteChange(cmb_site);edt_pw4.SetFocus;
  end else if notice_stats = 152 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 4;cmb_siteChange(cmb_site);edt_pw5.SetFocus;
  end else if notice_stats = 162 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 5;cmb_siteChange(cmb_site);edt_pw6.SetFocus;
  end else if notice_stats = 172 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 6;cmb_siteChange(cmb_site);edt_pw7.SetFocus;
  end else if notice_stats = 182 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 7;cmb_siteChange(cmb_site);edt_pw8.SetFocus;
  end else if notice_stats = 192 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 8;cmb_siteChange(cmb_site);edt_pw9.SetFocus;
  end else if notice_stats = 992 then  begin // pw ����
    config_open;cmb_site.ItemIndex := 9;cmb_siteChange(cmb_site);edt_pw10.SetFocus;
  // safepw check
  end else if notice_stats = 113 then  begin //safe pw ����
    config_open;cmb_site.ItemIndex := 0;cmb_siteChange(cmb_site);edt_safepw1.SetFocus;
  end else if notice_stats = 123 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 1;cmb_siteChange(cmb_site);edt_safepw2.SetFocus;
  end else if notice_stats = 133 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 2;cmb_siteChange(cmb_site);edt_safepw3.SetFocus;
  end else if notice_stats = 143 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 3;cmb_siteChange(cmb_site);edt_safepw4.SetFocus;
  end else if notice_stats = 153 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 4;cmb_siteChange(cmb_site);edt_safepw5.SetFocus;
  end else if notice_stats = 163 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 5;cmb_siteChange(cmb_site);edt_safepw6.SetFocus;
  end else if notice_stats = 173 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 6;cmb_siteChange(cmb_site);edt_safepw7.SetFocus;
  end else if notice_stats = 183 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 7;cmb_siteChange(cmb_site);edt_safepw8.SetFocus;
  end else if notice_stats = 193 then  begin // safe pw ����
    config_open;cmb_site.ItemIndex := 8;cmb_siteChange(cmb_site);edt_safepw9.SetFocus;
  end else if notice_stats = 200 then  begin // �׺� ����
    config_open; btn_filesearchClick(sender);

  end else if notice_stats = 1000 then  begin // ��ƿ �۾���
  end;

  notice_stats := 0; // ���⼭ ���������� �ʱ�ȭ �ؾߵ�.
  exit;
end;

// ��ƿ Ŭ��
procedure TFrm_main.UIB_utilClick(Sender: TObject);
begin
  noticewindow(sender);exit;
end;

procedure TFrm_main.UIL_noticeClick(Sender: TObject);
begin

end;


// ��Ʈ���� �� ��Ŀ�� ����� ����
procedure TFrm_main.edt_hint1Exit(Sender: TObject);
begin
  hint_change(Sender);
end;

procedure TFrm_main.edt_hint1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then begin   // ��Ʈ ����
    hint_change(Sender);
  end;
end;


procedure TFrm_main.edt_hintExit(Sender: TObject);
begin

end;

procedure TFrm_main.edt_searchKeyPress(Sender: TObject; var Key: Char);
var
  search_url:string;
begin
  if Key = #13 then begin // �˻��� ����
    search_url:=''; // �ʱ�ȭ
    case cmb_type.ItemIndex of
    //��ü
    0: search_url:='http://dhoguide.com/?mid=home&act=info_search&is_keyword='+HTTPEncode(UTF8Encode(edt_search.Text));
    //����
    1: search_url:='http://dhoguide.com/?mid=dho_tips&category=&search_target=title_content&search_keyword='+HTTPEncode(UTF8Encode(edt_search.Text));
    //����
    2: search_url:='http://dhoguide.com/?mid=dho_qna&category=&search_target=title_content&search_keyword='+HTTPEncode(UTF8Encode(edt_search.Text));
    // ��� // POST�ε� �Ѥ�;
    3: search_url:='http://dho.gameguide.me/searchResult.php?server=Pol&city=All&searchKey='+HTTPEncode(UTF8Encode(edt_search.Text));
    end;
    // �����̸� �˻����� �ʴ´�.
    if trim(edt_search.Text) <> '' then   OpenInternetExplorer(search_url);
  end;

end;

// �� ������
procedure TFrm_main.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if( VarIsEmpty( IE ) )then
  begin

  end else begin
   if (login_check) then dhoguide_Logout();
    SendMessage(IE_handle, WM_CLOSE, 0, 0); //����
    //IE.Visible    := True;
    IE            := Unassigned;
  end;

end;

// �� ������
procedure TFrm_main.FormCreate(Sender: TObject);
begin

  // ���� ����
  lbl_log.Caption := 'DHL'+ GetVersion();
  Frm_main.Caption := lbl_log.Caption + ' by �̴Ͼ';
  Application.Title :=Frm_main.Caption;

  is_notice := false;//�ʱ�ȭ

  // ���̺� �ε�
  FIni := TIniFile.Create(GetCurrentDir()+'\save.ini');
  LoadEnv(Get_filetime(Fini.FileName));

  //if is_notice = true then  showmessage('ok')
  //else                      showmessage('no');

  // ��Ʈ ����
  hintre_write;

  //���̺� �� ���� ������
  if is_notice = false then begin
    noticewindow(sender);
  end else begin //������ ���ֹ���
    UIB_cancelClick(nil);
  end;

end;

// ������ �ı���Ŵ
procedure TFrm_main.FormDestroy(Sender: TObject);
var
 _filename:string;
begin
  _filename := GetCurrentDir()+'\save.ini';

  {if FileExists(_filename) then begin //���� ������
      // ������ �������� �����ؾߵ� (����� �׳� ������)
  end else begin // ������
      // ������ �⺻ �����ؾߵ�
  end;}
  try
    FIni := TIniFile.Create(_filename);

    if(chk_save.Checked) then  // ���� ����
      SaveEnv(chk_save.Checked,Get_filetime(_filename))
    else
      defaultEnv(chk_save.Checked);
  finally
    FIni.Free;
  end;
end;

//ȭ�� ������
procedure TFrm_main.FormShow(Sender: TObject);
begin
  config_close;
end;

//����
procedure TFrm_main.UIB_bugClick(Sender: TObject);
begin
  if ((trim(edt_id10.Text) <> '' ) AND (trim(edt_pw10.Text) <> '')) then
    dhoguide_Login(edt_id10.Text,edt_pw10.Text,'http://dhoguide.com/?mid=dho_recomm&document_srl=2340657&sort_index=voted_count&order_type=desc&category=483351')
  else
  begin
    OpenInternetExplorer('http://dhoguide.com/?mid=dho_recomm&document_srl=2340657&sort_index=voted_count&order_type=desc&category=483351');
  end;
end;

// ���� ���
procedure TFrm_main.UIB_cancelClick(Sender: TObject);
begin
  UI_notice.Visible := false;
  UIL_notice.Visible := false;
  UIB_ok.Visible := false;
  UIB_cancel.Visible := false;
  if UIL_notice.Tag = 999 then  begin //mirr �������� ����
    exit;
  end;
end;

// Ȩ��ư // ȯ�漳�� �Ǵ� ��ƿ�ΰ�� Ȩ����.. Ȩ�϶� �ּ�ȭ��
procedure TFrm_main.UIB_homeClick(Sender: TObject);
begin
  if UI_config.Visible = true then begin
    config_close;
  end else begin //�ּ�ȭ
    hintre_write;
    ShowWindow(Application.Handle, SW_MINIMIZE);
    ShowWindow(Application.Handle, SW_HIDE);
    Trayicon(Frm_main);
  end;
end;

// �̸���������
procedure TFrm_main.UIB_mirrClick(Sender: TObject);
begin
  //�����ϱ��� IP/PWȮ���Ѵ�.
  if edt_id10.Text = '' then begin//���ٸ�?
    notice_stats := 991;noticewindow(sender);exit;
  end;
  if edt_pw10.Text = '' then begin//���ٸ�?
    notice_stats := 992;noticewindow(sender);exit;
  end;
  //�α�������
  dhoguide_Login(edt_id10.Text,edt_pw10.Text,'http://dhoguide.com/info/world')
end;

// �ݱ�
procedure TFrm_main.UIB_closeClick(Sender: TObject);
begin
  close;
end;

// ȯ�漳������
procedure TFrm_main.UIB_configClick(Sender: TObject);
begin
  config_open;
end;

// ��Ű����
// InternetSetOption(IntPtr.Zero, INTERNET_OPTION_END_BROWSER_SESSION, IntPtr.Zero, 0);
{
1. ����â�� IE(IWebbrowser2)�� ��´�
2. IE�� navigate2 �޼ҵ带 ȣ���Ѵ�.
3. ȣ��� �ݵ�� flag=1 �� �����Ǿ�� �մϴ�.
}

// �α��� �ֿ����
procedure TFrm_main.AutoWebLogin(site,id,pw,safepw:string;opt:boolean);
var
  login,game_exec,safe_url,safe_game,logout,szPostData,szPostData2 : String;
  niDataSize,niDataSize2, niCount,niCount2: Integer;
  c,c2, vHeaders,vHeaders2: OleVariant;
	//  result:OleVariant;
  result,keys:string;
begin
  szPostData := ''; // �ʱ�ȭ
  szPostData2 := ''; // �ʱ�ȭ

  if(site = 'netmarble') then begin
    szPostData  := 'l_id='+ HTTPEncode(utf8encode(id)); //�ѱ� ���̵� ����  //2009�⺻������ string�� utf8�̴�
    szPostData  := szPostData +'&l_pwd='+pw;
    szPostData  := szPostData +'&l_domain=dho.netmarble.net';
    szPostData  := szPostData +'&l_sname=sd'+ intTostr(random(20));
    szPostData  := szPostData +'&l_dirurl=0';
    szPostData  := szPostData +'&l_url=http%3A%2F%2Fdho%2Enetmarble%2Enet%2Findex%2Easp';
    szPostData  := szPostData +'&l_which=0';
    szPostData  := szPostData +'&l_type=1';
    szPostData  := szPostData +'&l_hompy=0';
    szPostData  := szPostData +'&l_irclogin=1';
    szPostData  := szPostData +'&l_etc=';
    if(safepw <> '') then begin
      szPostData2 := 'safepwd='+safepw;
      vHeaders2 := 'Content-Type: text/xml; charset=UTF-8'+#13+#10+#0;
      safe_url    := 'http://login.netmarble.net/SecCenter/SafeKey/LoginExec.asp';
    end;

    vHeaders    := 'Content-Type:application/x-www-form-urlencoded'+#13+#10+#0;
    login       := 'http://sso.netmarble.net/Logon/Logon.aspx';
    game_exec   := 'http://dho.netmarble.net/GameChannel/channel.asp?game=dho';
    logout      := 'http://sso.netmarble.net/Logon/Logoff.aspx?r_url=http%3A%2F%2Flogin%2Enetmarble%2Enet%2Flogin%2Flogoutresult%2Easp%3Fl%5Ftype%3D0%26l%5Fid%3Dlinux%26channelUrl%3D0';
  end else if(site = 'daum') then begin   //�����α��� �ٲ�

  //������ ��Ű�� �޾Ƽ� �����ѵ� �α����ؾߵȴ�.
  //http://login.daum.net/accounts/loginform.do
    szPostData  := 'id='+ HTTPEncode(utf8encode(id)); //�ѱ� ���̵� ����
    szPostData  := szPostData +'&pw='+pw;
    szPostData  := szPostData +'&url=http%3A%2F%2Fdho.game.daum.net2Fmain.asp';
    szPostData  := szPostData +'&finaldest=&reloginSeq=0&relative=&securityLevel=2';
    vHeaders    := 'Content-Type:application/x-www-form-urlencoded'+#13+#10+#0;
    login       := 'http://login.daum.net/accounts/login.do?slogin=2&srpinittime=-1'; //������Ÿ���� ��Ű����
    game_exec   := 'http://dho.daum.net/GameChannel/channel.asp?game=dho';
    logout      := 'https://logins.daum.net/accounts/logout.do';
  end;

  niDataSize:= Length(szPostData);
  c:= VarArrayCreate([0,niDataSize], varByte);
  for niCount:= 0 to niDataSize - 1 do begin
    c[niCount]:= Ord(szPostData[niCount+1]);
  end;
  c[niDataSize]:= 0;

  if (safepw <> '') then begin
    niDataSize2:= Length(szPostData2);
    c2:= VarArrayCreate([0,niDataSize2], varByte);
    for niCount2:= 0 to niDataSize2 - 1 do begin
      c2[niCount2]:= Ord(szPostData2[niCount2+1]);
    end;
    c2[niDataSize2]:= 0;
  end;

  if( VarIsEmpty( IE ) )then IE := CreateOleObject( csOLEObjName );

  IE_handle := IE.HWND;

  IE.Visible := opt;
  IE.Navigate(login ,null,null,c,vHeaders); //login
  lbl_log.caption := '�α���';    //lbl_log ��Ȳ ����
  //if IE.ReadyState <> READYSTATE_COMPLETE then Application.ProcessMessages;
  //IE.OnDocumentComplete
  while IE.busy do begin application.ProcessMessages;sleep(100); end;

  //sleep(1000); application.ProcessMessages; //1�� ���
  //sleep(1000); application.ProcessMessages; //1�� ���

  IE.Navigate(game_exec);
  lbl_log.caption := '���ӽ���';    //lbl_log ��Ȳ ����
  while IE.busy do begin application.ProcessMessages;sleep(10); end;
  //sleep(1000); application.ProcessMessages; //1�� ���
  //sleep(1000); application.ProcessMessages; //1�� ���

  if (safepw <> '') then begin //����Ű ����

    IE.Navigate(safe_url ,null,null,c2,vHeaders);// �Ѿ�°��� GET���� ����
    //sleep(1000); application.ProcessMessages; //1�� ���
    while IE.busy do begin application.ProcessMessages;sleep(100); end;
    result := IE.Document.Body.innerText;//innerHTML//innerText
    keys := ExtractURLs(result);    //���뿡�� Ű�� ����
    delete(keys, 1, 5);  // <Err> ����
    safe_game   := 'http://dho.netmarble.net/GameChannel/channeljoin.asp?game=dho&SafeCode='+keys;
    IE.Navigate(safe_game);
    lbl_log.caption := '����Ű ����';    //lbl_log ��Ȳ ����
    while IE.busy do begin application.ProcessMessages;sleep(100); end;
  end;
  //sleep(1000);application.ProcessMessages; //1�� ���
  //sleep(1000);application.ProcessMessages; //1�� ���
  IE.Navigate(logout);
  lbl_log.caption := '�α��� �ƿ�';    //lbl_log ��Ȳ ����
  sleep(1000);application.ProcessMessages; //1�� ���
  IE.Navigate('about:blank');
end;

// GET���� Ȩ������ ����
procedure TFrm_main.OpenInternetExplorer( sURL : string );
begin
  if( VarIsEmpty( IE2 ) )then IE2 := CreateOleObject( csOLEObjName );
  IE2.Visible := true;
  IE2.Navigate( sURL );
  IE2 := Unassigned;
end;

// DHOguide �α��� xml�̿��� ����
procedure TFrm_main.dhoguide_Login(id,pw,url:string);
var
	szPostData : String;
	niDataSize, niCount: Integer;
	c, vHeaders: OleVariant;
begin
  szPostData := '<?xml version="1.0" encoding="utf-8" ?>';
  szPostData := szPostData + '<methodCall>';
  szPostData := szPostData + '<params>';
  szPostData := szPostData + '<user_id><![CDATA['+id+']]></user_id>';
  szPostData := szPostData + '<password><![CDATA['+pw+']]></password>';
  szPostData := szPostData + '<keep_signed><![CDATA[]]></keep_signed>';
  szPostData := szPostData + '<module><![CDATA[member]]></module>';
  szPostData := szPostData + '<act><![CDATA[procMemberLogin]]></act>';
  szPostData := szPostData + '</params>';
  szPostData := szPostData + '</methodCall>';

  niDataSize:= Length(szPostData);
  c:= VarArrayCreate([0,niDataSize], varByte);
  for niCount:= 0 to niDataSize - 1 do begin
    c[niCount]:= Ord(szPostData[niCount+1]);
  end;
  c[niDataSize]:= 0;

  vHeaders := 'Content-Type: text/xml; charset=UTF-8'+#13+#10+#0;

  if( VarIsEmpty( IE2 ) )then IE2 := CreateOleObject( csOLEObjName );

  IE2_handle := IE2.HWND;
  IE2.FullScreen := False;
  IE2.Visible    := False;
  IE2.Navigate('http://dhoguide.com/',null,null,c,vHeaders);
  lbl_log.caption := 'dhoguide �α���';    //lbl_log ��Ȳ ����
  while IE.busy do begin application.ProcessMessages;sleep(100); end;
//  sleep(1000);application.ProcessMessages; //1�� ���
//  sleep(1000);application.ProcessMessages; //1�� ���

  IE2.Navigate(url);
  while IE.busy do begin application.ProcessMessages;sleep(100); end;
  IE2.Visible    := TRUE;
  lbl_log.caption := 'DHL'+ GetVersion();    //lbl_log ��Ȳ ����

  //sleep(1000);application.ProcessMessages; //1�� ���
  IE2 := Unassigned;
  login_check := true;

end;

//dhoguide logout
procedure TFrm_main.dhoguide_Logout();
var
	szPostData : String;
	niDataSize, niCount: Integer;
	c, vHeaders: OleVariant;
begin
  szPostData := '<?xml version="1.0" encoding="utf-8" ?>';
  szPostData := szPostData + '<methodCall>';
  szPostData := szPostData + '<params>';
  szPostData := szPostData + '<keep_signed><![CDATA[]]></keep_signed>';
  szPostData := szPostData + '<module><![CDATA[member]]></module>';
  szPostData := szPostData + '<act><![CDATA[dispMemberLogout]]></act>';
  szPostData := szPostData + '</params>';
  szPostData := szPostData + '</methodCall>';

  niDataSize:= Length(szPostData);

  c:= VarArrayCreate([0,niDataSize], varByte);
  for niCount:= 0 to niDataSize - 1 do begin
    c[niCount]:= Ord(szPostData[niCount+1]);
  end;

  c[niDataSize]:= 0;

  vHeaders := 'Content-Type: text/xml; charset=UTF-8'+#13+#10+#0;
  if( VarIsEmpty( IE2 ) )then IE2 := CreateOleObject( csOLEObjName );

  IE2.FullScreen := False;
  //IE2.Visible    := True;

  IE2.Navigate('http://dhoguide.com/?act=dispMemberLogout');
  sleep(1000);application.ProcessMessages; //1�� ���
  IE.Navigate('about:blank');
//  sleep(1000);application.ProcessMessages; //1�� ���
  SendMessage(IE2_handle, WM_CLOSE, 0, 0);

  lbl_log.caption := 'dhoguide �α׾ƿ�';    //lbl_log ��Ȳ ����
  sleep(1000);application.ProcessMessages; //1�� ���

  IE2 := Unassigned;

  lbl_log.caption := 'DHL'+ GetVersion();    //lbl_log ��Ȳ ����

end;

{//�κ� �ٷΰ���
procedure TFrm_main.N7Click(Sender: TObject);
begin
 OpenInternetExplorer('http://dho.inven.co.kr/');
end;
}

//���̺� ���� �����б�
function TFrm_main.Get_filetime(filename:string):string;
var
  FindData: TWin32FindData;
  FindHandle :THandle;
  mtm:   TSystemTime;
  at:    TFileTime;
  data : string;
begin
  data :='';
  FindHandle := Windows.FindFirstFile(PChar(filename), FindData);
  try
    filetimetolocalfiletime(FindData.ftLastWriteTime,at);
    filetimetosystemtime(at,mtm);
    data := intTostr(mtm.wDay)+ intTostr(mtm.wHour)+ intTostr(0);
    finally
    begin
      result := data;
      Windows.FindClose(FindHandle);
    end;
  end;
end;


// ����Ű ����
function TFrm_main.ExtractURLs (const AInputString : string) : string;
const
  URLRE = '<Err>[^0].([0-9a-z]+)';
var
  r : TRegExpr;
begin
  Result := '';

  r := TRegExpr.Create;

  try // ensure memory clean-up
     r.Expression := URLRE;

     if r.Exec (AInputString) then
      REPEAT
       Result := Result + r.Match[0];//+ #13;
      UNTIL not r.ExecNext;
    finally r.Free;
   end;
end;

// Ŭ���̾�Ʈ ����
procedure TFrm_main.btn_filesearchClick(Sender: TObject);
var
  od : TOpenDialog;           // �׺� ����
begin
  od := Topendialog.Create(nil); // �׺�����ϱ����� ���
  od.Filter:='��������|*.exe';
  od.DefaultExt :='exe';

  if od.Execute then  lbl_navi.Caption := od.filename;
  od.free; // �׺��� ������.
end;

procedure TFrm_main.btn_naviClick(Sender: TObject);
var
  od : TOpenDialog;           // �׺� ����
begin

  od := Topendialog.Create(nil); // �׺�����ϱ����� ���
  od.filename :=lbl_navi.Caption;
  od.Files.Text :=lbl_navi.Caption;
  od.free; // �׺��� ������.



  // edt_navi.text�� �־�� �Ǹ�, �ش� ������ ��ġ�ϴ��� Ȯ���ϰ�, �ִٸ� ������.
  if (lbl_navi.Caption <> '') AND (FileExists(lbl_navi.Caption)) then begin

    ShellExecute(Handle,'OPEN',Pchar(lbl_navi.Caption),NIL,NIL,SW_NORMAL);//�׺����
  end else begin
    notice_stats := 200;noticewindow(sender);exit;
  end;
end;

// 2.2�߰�
//������ ����Ű ����
procedure TFrm_main.cmb_saveCheck(Sender: TObject);
var
  i:integer;
begin
  //
  // �������� ����
  for i := 1 to 9 do begin  //9�� ������
     if ( TComboBox(FindComponent('cmb_server'+IntToStr(i))).ItemIndex > 1 ) then
     begin
       TLabel(FindComponent('lbl_safe'+IntToStr(i))).Visible := false;
       TEdit(FindComponent('edt_safepw'+IntToStr(i))).Visible := false;
     end
     else begin
       TLabel(FindComponent('lbl_safe'+IntToStr(i))).Visible := true;
       TEdit(FindComponent('edt_safepw'+IntToStr(i))).Visible := true;
     end;
  end;

end;

procedure TFrm_main.cmb_siteChange(Sender: TObject);
var
  i:integer;
begin
  //�ϴ� �׷� �ٳ���
  for i := 0 to 9 do
    if (cmb_site.ItemIndex = i) then
      Tpanel(FindComponent('GP'+IntToStr(i+1))).Visible := true
    else
      Tpanel(FindComponent('GP'+IntToStr(i+1))).Visible := false;
  cmb_site.BringToFront; //Ŭ���̾�Ʈ ���� �׻� ������
end;

// ȯ�漳�� �ݱ�
procedure TFrm_main.config_close;
var
  i:integer;
begin
  UIB_home.Hint := '�ּ�ȭ';

  //�������� ȭ��
  for I := 1 to 10 do
  begin
    Tpanel(FindComponent('GP'+IntToStr(i))).Visible := false;

    // ����� ID�� ���ٸ� UI ���� �������� ����.
    if ((Tedit(FindComponent('edt_id'+IntToStr(i))).Text = '') AND (i < 10)) then
    begin
      TLabel(FindComponent('UIL_'+IntToStr(i))).Visible := false;
      TImage(FindComponent('UIB_'+IntToStr(i))).Visible := false;
    end else if ((Tedit(FindComponent('edt_id'+IntToStr(i))).Text <> '') AND (i < 10))  then
    begin
      TLabel(FindComponent('UIL_'+IntToStr(i))).Visible := true;
      TImage(FindComponent('UIB_'+IntToStr(i))).Visible := true;
    end;

  end;
  //GPN ����
  GPN.Visible := false;
  //üũ �ڽ� 2�� ����
  chk_save.Visible := false;
  chk_safe.Visible := false;
  // Ŭ���̾�Ʈ �ʱ�ȭ
  cmb_site.ItemIndex :=0;
  // Ŭ���̾�Ʈ ���� ����
  cmb_site.Visible := false;
  // ���������� config UI ����
  UI_config.Visible := false;
  //�˻� Ȱ��ȭ
  edt_search.Visible := true;
  cmb_type.Visible := true;

end;

// ȯ�漳�� ����
procedure TFrm_main.config_open;
begin
  UIB_home.Hint       := '����ȭ��';

  // �˻�â ����
  edt_search.Visible  := false;
  cmb_type.Visible    := false;
  // BG���� �ø���
  UI_config.Visible := true;
  UI_config.BringToFront;
  // Ŭ��1���� ������ ������
  GP1.Visible         := true;
  // Ŭ���̾�Ʈ ���� ǥ��
  cmb_site.Visible    := true;
  cmb_site.BringToFront; //�׻� ������
  //GPN ����
  GPN.Visible := true;

  //üũ �ڽ� 2�� ������
  chk_save.Visible    := true;
  chk_safe.Visible    := true;
end;

// ��Ʈ ����
procedure TFrm_main.hint_change(Sender: TObject);
var
  i: integer;
begin
  i:=(Sender as TEdit).Tag; //0���� ������
  cmb_site.Items.Strings[i] := (Sender as TEdit).Text;
  cmb_site.ItemIndex := i; // �����ϱ�����

  //UIL�� �����Ѵ�.
  inc(i); //Ŭ��0�� ���� 1����. ���� +1 ������.
  TLabel(FindComponent('UIL_'+IntToStr(i))).Caption := (Sender as TEdit).Text;
end;


//Ʈ���̹� ����
procedure TFrm_main.N1Click(Sender: TObject);
begin
  Shell_NotifyIcon ( NIM_DELETE, @IconData );
  ShowWindow(Application.Handle, SW_SHOW);
  Show;
end;
//Ʈ���̹� �ݱ�
procedure TFrm_main.N2Click(Sender: TObject);
begin
    Shell_NotifyIcon ( NIM_DELETE, @IconData );
    Close;
end;

// dhoguide ����
procedure TFrm_main.N6Click(Sender: TObject);
begin
  if ((trim(edt_id10.Text) <> '' ) AND (trim(edt_pw10.Text) <> '')) then
    dhoguide_Login(edt_id8.Text,edt_pw8.Text,'http://dhoguide.com/')
  else
  begin
    OpenInternetExplorer('http://dhoguide.com/');
  end;
end;

// ��Ʈ �ϰ� ����
procedure TFrm_main.hintre_write();
var
  i,x:integer;
begin
  x := 0;
  for I := 1 to 9 do begin

    //UIL �ʱ�ȭ
    TLabel(FindComponent('UIL_'+IntToStr(i))).Caption := Tedit(FindComponent('edt_hint'+IntToStr(i))).Text;
    // �˾� �ʱ�ȭ
    TMenuItem(FindComponent('N1'+IntToStr(i))).Caption := Tedit(FindComponent('edt_hint'+IntToStr(i))).Text + ' ����';

    // cmb_site �ʱ�ȭ ��Ʈ�� index ������ Ʋ���ٸ�     //0���� �����ؼ� -1 ������
    if cmb_site.Items.Strings[x] <> Tedit(FindComponent('edt_hint'+IntToStr(i))).Text then
      cmb_site.Items.Strings[x] := Tedit(FindComponent('edt_hint'+IntToStr(i))).Text;
    inc(x); // 0+1;

    // ����� ID�� ���ٸ� UI ���� �������� ����.
    if Tedit(FindComponent('edt_id'+IntToStr(i))).Text = '' then  begin // ���ٸ�
      TLabel(FindComponent('UIL_'+IntToStr(i))).Visible := false;
      TImage(FindComponent('UIB_'+IntToStr(i))).Visible := false;
    end else begin // ������ ������
      TLabel(FindComponent('UIL_'+IntToStr(i))).Visible := true;
      TImage(FindComponent('UIB_'+IntToStr(i))).Visible := true;
    end;

  end;
end;

// �޽��� ����ä��
procedure TFrm_main.WndProc;
begin
  // �ּ�ȭ��
  if Message.WParam = SC_MINIMIZE then begin
    hintre_write;
    ShowWindow(Application.Handle, SW_MINIMIZE);
    ShowWindow(Application.Handle, SW_HIDE);
    Trayicon(Frm_main);
  end;
  case Message.Msg of
    WM_USER+1:
    case Message.lParam of
      WM_LBUTTONDOWN: exit;      //���� ��ư
      WM_RBUTTONDOWN:ViewPopUp(TWMRButtonDown(Message));//������ ��ư
      WM_LBUTTONDBLCLK:N1.Click;
    end;
  end;
  inherited;
end;

////////////////////////////////////////////////////////////////////////////////
// Ʈ����
////////////////////////////////////////////////////////////////////////////////
//Ʈ���� �����ܿ��� ���콺 ������ ��ư�� ������ �˾��޴�����
procedure TFrm_main.ViewPopUp(var AMsg : TWMRButtonDown );
var PtMouse : TPoint;
begin
    //������ ���콺 �����͸� ��´�
    GetCursorPos(PtMouse);
    //�˾� �޴��� ����.
    PopUpMenu1.PopUp(PtMouse.X, PtMouse.Y);
end;

//Ʈ���� �����ܿ��� ���콺 ������ ��ư�� ������ �˾��޴�����
procedure TFrm_main.Trayicon(Sender: TObject);
var
 TrayIcon : TIcon;
begin

 TrayIcon := TIcon.Create; // Tray Icon �׸��� Load�Ѵ�.
 TrayIcon.Assign(application.Icon); // �������� �����Ѵ�.
 with IconData do
 begin
     cbSize           := SizeOf( IconData );
     Wnd              := Handle; // �����̿����� Wnd�� �ٲ����
     uID              := 100;
     uFlags           := NIF_MESSAGE + NIF_ICON + NIF_TIP;
     uCallbackMessage := WM_USER +1;
     hIcon            := TrayIcon.Handle;
     szTip            := 'DHL2.1 by �̴Ͼ';
 end;
 Frm_main.Hide; //���� �����.
 Shell_NotifyIcon ( NIM_ADD, @IconData );//Ʈ���� ������ ����
 TrayIcon.Free; //�ʿ�����Ƿ� ����
end;

// ����â �����丮
procedure TFrm_main.noticewindow(sender:TObject);
var
  tmp:string;
begin
  UIL_notice.Caption := ''; //�ʱ�ȭ

  //showmessage((sender).ClassName);
  tmp:= (sender).ClassName;
  if ( tmp = 'TImage') then begin
    tmp:= (Sender as Timage).Name;
    //showmessage((Sender as Timage).Name);
    if notice_stats = 100 then begin// no install activex
      UIL_notice.Caption := 'ActiveX�� ��ġ���� �ʾҽ��ϴ�.'+ #10  + '�ݸ��� ActiveX�� ��ġ�ϼ���.';
    end else if notice_stats = 101 then begin//pw
      UIL_notice.Caption := 'ActiveX�� ��ġ���� �ʾҽ��ϴ�.'+ #10  + '���� ActiveX�� ��ġ�ϼ���.';
    end else if ((tmp = 'UIB_1') and (notice_stats = 110))then begin//pw
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_1') and (notice_stats = 111))then begin//pw
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_1') and (notice_stats = 112))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_2') and (notice_stats = 120))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_2') and (notice_stats = 121))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_2') and (notice_stats = 122))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_3') and (notice_stats = 130))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_3') and (notice_stats = 131))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_3') and (notice_stats = 132))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_4') and (notice_stats = 140))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_4') and (notice_stats = 141))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_4') and (notice_stats = 142))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_5') and (notice_stats = 150))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_5') and (notice_stats = 151))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_5') and (notice_stats = 152))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_6') and (notice_stats = 160))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_6') and (notice_stats = 161))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_6') and (notice_stats = 162))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_7') and (notice_stats = 170))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_7') and (notice_stats = 171))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_7') and (notice_stats = 172))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_8') and (notice_stats = 180))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_8') and (notice_stats = 181))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_8') and (notice_stats = 182))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_9') and (notice_stats = 190))then begin// id
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((tmp = 'UIB_9') and (notice_stats = 191))then begin// id
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_9') and (notice_stats = 192))then begin//pw
      UIL_notice.Caption := 'pw�� �����ϴ�';

    end else if ((tmp = 'UIB_mirr') and (notice_stats = 991))then begin//����  id
      UIL_notice.Caption := '�̸�������' + #10 + '�α��� ������ �ʿ��մϴ�.' + #10 + 'id�� �����ϴ�';
    end else if ((tmp = 'UIB_mirr') and (notice_stats = 992))then begin//���� pw
      UIL_notice.Caption := '�̸�������' + #10 + '�α��� ������ �ʿ��մϴ�.' + #10 + 'pw�� �����ϴ�';

    end else if tmp = 'UIB_util' then begin   //��ƿ
      UIL_notice.Caption := '���������� �߰��� �����Դϴ�.'+#10+'by �̴Ͼ';
      notice_stats := 1000; //��������ߵ�.
    end;
  end else if tmp = 'TButton' then begin
    tmp:= (Sender as TButton).Name;
    if ((tmp = 'btn_navi') and (notice_stats = 200))then begin
      UIL_notice.Caption := '�׺� ���� ������' + #10 + '�ٽ� ������ �ּ���.';
      config_close;// �������� Ŭ���� ���� ����.
    end;
  end else begin
     if ((notice_stats = 110) or (notice_stats = 120) or (notice_stats = 130)
      or (notice_stats = 140) or (notice_stats = 150) or (notice_stats = 160)
      or (notice_stats = 170) or (notice_stats = 180) or (notice_stats = 190)) then begin
      UIL_notice.Caption := '������ �������� �ʾҽ��ϴ�.';
    end else if ((notice_stats = 111) or (notice_stats = 121) or (notice_stats = 131)
          or (notice_stats = 141) or (notice_stats = 151) or (notice_stats = 161)
          or (notice_stats = 171) or (notice_stats = 181) or (notice_stats = 191)) then begin
      UIL_notice.Caption := 'id�� �����ϴ�';
    end else if ((notice_stats = 112) or (notice_stats = 122) or (notice_stats = 132)
          or (notice_stats = 142) or (notice_stats = 152) or (notice_stats = 162)
          or (notice_stats = 172) or (notice_stats = 182) or (notice_stats = 192)) then begin
      UIL_notice.Caption := 'pw�� �����ϴ�';
    end else begin

      //�������� ����ߵ�.
      UIL_notice.Caption := 'DHL'+ GetVersion() +' ��������!' + #10 +
                            '���� �Ǵ� ��ɰ��Ǵ� ' +#10+
                            '���׸���Ʈ�� ���ּ���.'   + #10#10 +
                            'IP ���� ������ ���� Ŭ����' + #10 +
                            '5�� �� �Ͻ����� �˴ϴ�.'+ #10#10 +
                            '�α������� üũ�� ����ɶ�'+ #10 +
                             GetCurrentDir() + '\save.ini' + #10 +
                             '������ ����ϴ�.';
      notice_stats := 1111;
    end;
  end;

  //Ʈ���̿��� ������ ��������
  Shell_NotifyIcon ( NIM_DELETE, @IconData );
  ShowWindow(Application.Handle, SW_SHOW);
  Show;

  //�������� �Ǿ�����
  UI_notice.Visible:= true;
  UIB_ok.Visible:= true;
  UIB_cancel.Visible:= true;
  UIL_notice.Visible:= true;
  UI_notice.BringToFront;
  UIB_ok.BringToFront;
  UIB_cancel.BringToFront;
  UIL_notice.BringToFront;
end;

//�α��� activex ���� //if not IsInstalledActiveX('ShockwaveFlash.ShockwaveFlash') then
function TFrm_main.IsInstalledActiveX(AProgID:WideString): Boolean;
var
  ClassID : TCLSID;
begin
  Result := False;
  if CLSIDFromProgID(PWideChar(AProgID), ClassID) = S_OK then Result := True;
end;






procedure TFrm_main.Game_check(sender:TObject);
const
  NGUID1: TGUID= '{92E82FBB-DA00-41E0-ABFE-95482E21A4F6}';
  NGUID2: TGUID= '{00001026-A15C-11D4-97A4-0050BF0FBE67}';
  NGUID3: TGUID= '{DB962ED5-C4A1-4B50-8CEB-D6F9CD70A6F8}';
  DGUID1: TGUID= '{00001025-B831-448B-9ABD-3D3DF187F359}';
//  DGUID2: TGUID= '{00001025-B831-448B-9ABD-3D3DF187F359}';
//  DGUID3: TGUID= '{00001025-B831-448B-9ABD-3D3DF187F359}';
var
  tmp_name,tmp_sender:string;
  i:integer;
  ProgId1,ProgId2,ProgId3: PWideChar;//ActiveX pidüũ
//  ActiveX: Variant;  //����
begin

  //lbl_log ��Ȳ ����
  lbl_log.caption := '�α��� ����';

  // ��ɷ� ������ ��� �α��� ��� �ߺ�Ŭ�� ����
  for I := 1 to 9 do begin
    TImage(FindComponent('UIB_'+IntToStr(i))).Enabled := false;
    TMenuItem(FindComponent('N1'+IntToStr(i))).Enabled := false;
  end;

    //Ŭ���ѳ��� �̸��� �˾ƾߵ�.
    tmp_sender := (sender).ClassName; //TMenuItem // TImage
    if tmp_sender = 'TImage' then
      tmp_name := (sender as TImage).Name //UIB_1
    else if tmp_sender = 'TMenuItem' then
      tmp_name := (sender as TMenuItem).Name; //N11
    //showmessage(tmp_name[length(tmp_name)]);exit;//1

    if (TComboBox(FindComponent('cmb_server'+tmp_name[length(tmp_name)])).ItemIndex = 1) then begin  // �ݸ���
      //���࿡ �ռ� �α���actvieX ��ġ ���θ� Ȯ��
      ProgIDFromCLSID(NGUID1, ProgId1);
      ProgIDFromCLSID(NGUID2, ProgId2);
      ProgIDFromCLSID(NGUID3, ProgId3);
      if (IsInstalledActiveX(pchar(ProgId1))
      AND IsInstalledActiveX(pchar(ProgId2))
      AND IsInstalledActiveX(pchar(ProgId3))) then begin
        if (edt_safepw1.Text = '') then // ����Ű �̻��
          AutoWebLogin('netmarble'
          ,Tedit(FindComponent('edt_id'+tmp_name[length(tmp_name)])).Text
          ,Tedit(FindComponent('edt_pw'+tmp_name[length(tmp_name)])).Text
          ,'',false)
        else                                    //���
          AutoWebLogin('netmarble'
          ,Tedit(FindComponent('edt_id'+tmp_name[length(tmp_name)])).Text
          ,Tedit(FindComponent('edt_pw'+tmp_name[length(tmp_name)])).Text
          ,Tedit(FindComponent('edt_safepw'+tmp_name[length(tmp_name)])).Text
          ,false);
      END else begin //ActiveX no install
        notice_stats:= 100;noticewindow(sender);exit;
      END;
    end else begin  // ����// ����Ű �̻��
      //���࿡ �ռ� �α���actvieX ��ġ ���θ� Ȯ��
      ProgIDFromCLSID(DGUID1, ProgId1);
      if IsInstalledActiveX(pchar(ProgId1)) then begin
        AutoWebLogin('daum'
        ,Tedit(FindComponent('edt_id'+tmp_name[length(tmp_name)])).Text
        ,Tedit(FindComponent('edt_pw'+tmp_name[length(tmp_name)])).Text
        ,'',false);
      END else begin //ActiveX no install
        notice_stats:= 101;noticewindow(sender);exit;
      END;
    end;

    lbl_log.caption := '5�� ���';    //lbl_log ��Ȳ ����
    sleep(1000);application.ProcessMessages; //1�� ���
    sleep(1000);application.ProcessMessages; //1�� ���
    sleep(1000);application.ProcessMessages; //1�� ���
    sleep(1000);application.ProcessMessages; //1�� ���
    sleep(1000);application.ProcessMessages; //1�� ���



  // �������� ����
  for I := 1 to 9 do begin
    TImage(FindComponent('UIB_'+IntToStr(i))).Enabled := true;
    TMenuItem(FindComponent('N1'+IntToStr(i))).Enabled := true;
  end;

  lbl_log.caption := 'DHL'+ GetVersion();    //�ʱ�ȭ

end;


procedure TFrm_main.UIB_1Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server1.ItemIndex < 1 then begin notice_stats := 110;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id1.Text = '' then begin notice_stats := 111;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw1.Text = '' then begin notice_stats := 112;noticewindow(sender);exit;end;//���ٸ�?
  //if edt_safepw1.Text = '' then begin notice_stats := 113;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;


procedure TFrm_main.UIB_2Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server2.ItemIndex < 1 then begin notice_stats := 120;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id2.Text = '' then begin notice_stats := 121;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw2.Text = '' then begin notice_stats := 122;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_3Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server3.ItemIndex < 1 then begin notice_stats := 130;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id3.Text = '' then begin notice_stats := 131;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw3.Text = '' then begin notice_stats := 132;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_4Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server4.ItemIndex < 1 then begin notice_stats := 140;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id4.Text = '' then begin notice_stats := 141;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw4.Text = '' then begin notice_stats := 142;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_5Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server5.ItemIndex < 1 then begin notice_stats := 150;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id5.Text = '' then begin notice_stats := 151;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw5.Text = '' then begin notice_stats := 152;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_6Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server6.ItemIndex < 1 then begin notice_stats := 160;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id6.Text = '' then begin notice_stats := 161;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw6.Text = '' then begin notice_stats := 162;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_7Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server7.ItemIndex < 1 then begin notice_stats := 170;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id7.Text = '' then begin notice_stats := 171;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw7.Text = '' then begin notice_stats := 172;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_8Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server8.ItemIndex < 1 then begin notice_stats := 180;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id8.Text = '' then begin notice_stats := 181;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw8.Text = '' then begin notice_stats := 182;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

procedure TFrm_main.UIB_9Click(Sender: TObject);
begin
  //�����ϱ��� server/IP/PW/safepwȮ���Ѵ�.
  if cmb_server9.ItemIndex < 1 then begin notice_stats := 190;noticewindow(sender);exit;end;//���ٸ�?
  if edt_id9.Text = '' then begin notice_stats := 191;noticewindow(sender);exit;end;//���ٸ�?
  if edt_pw9.Text = '' then begin notice_stats := 192;noticewindow(sender);exit;end;//���ٸ�?
  Game_check(sender);exit;
end;

end.
