unit env;

{ DHL20 Main.pas by 미니어스<gnuhacker@gmail.com> }

interface

uses
  UEncrypt,main,SysUtils;

procedure SaveEnv(check:boolean;filename:string);
procedure LoadEnv(filetime:string);
procedure DefaultEnv(check:boolean);


implementation

// 저장할때 암호화 써야됨
procedure SaveEnv(check:boolean;filename:string);
var
  key:integer;
begin
  // 키 수정 방지는 차후로 미룸
  key := 12345; // 샘플키로 변경

  with Frm_main do begin
    // 위치 저장
    FIni.WriteInteger('position','top',top);
    FIni.WriteInteger('position','left',left);
    //key := StrToint(filename);
    // 초기화
    //FIni.WriteInteger('login','key',key);
    FIni.WriteBool('login','save',check);
    // 안전키 체크 여부를 저장
    if( chk_safe.Checked ) then  FIni.WriteBool('login','safe_save',true)
    else  FIni.WriteBool('login','safe_save',false);

    if(is_notice = true) then
      FIni.WriteBool('login','notice',true)
      //if(Fini.Readbool('login','notice',false)) then
    else
      FIni.WriteBool('login','notice',false);
      //if(Fini.Readbool('login','notice',true)) then

    FIni.WriteInteger('login', 'site1', cmb_server1.ItemIndex);
//    if(edt_id1.Text <> '') then FIni.WriteString('login', 'id1',  Encrypt( edt_id1.Text, key ))
    if(edt_id1.Text <> '') then FIni.WriteString('login', 'id1',   edt_id1.Text)
    else Fini.WriteString('login','id1','');
    if(edt_pw1.Text <> '') then FIni.WriteString('login', 'pw1',  Encrypt( edt_pw1.Text, key ))
    else Fini.WriteString('login','pw1','');
    // 안전키 지원 여부 1.넷마블과 세이프키 있고, 체크되어있고, 저장 체크 되어있다면
    if ((chk_safe.Checked) and (edt_safepw1.Text <> '')) then  FIni.WriteString('login', 'safepw1',  Encrypt( edt_safepw1.Text, key ))
    else Fini.WriteString('login','safepw1','');
    // 힌트 저장
    if(edt_hint1.Text <> '') then FIni.WriteString('login', 'hint1',  edt_hint1.Text)
    else Fini.WriteString('login','hint1','');

    FIni.WriteInteger('login', 'site2', cmb_server2.ItemIndex);
    //if(edt_id2.Text <> '') then FIni.WriteString('login', 'id2',  Encrypt( edt_id2.Text, key ))
    if(edt_id2.Text <> '') then FIni.WriteString('login', 'id2',  edt_id2.Text)
    else Fini.WriteString('login','id2','');
    if(edt_pw2.Text <> '') then FIni.WriteString('login', 'pw2',  Encrypt( edt_pw2.Text, key ))
    else Fini.WriteString('login','pw2','');
    if ((chk_safe.Checked) and (edt_safepw2.Text <> '')) then  FIni.WriteString('login', 'safepw2',  Encrypt( edt_safepw2.Text, key ))
    else Fini.WriteString('login','safepw2','');
    if(edt_hint2.Text <> '') then FIni.WriteString('login', 'hint2',  edt_hint2.Text)
    else Fini.WriteString('login','hint2','');

    FIni.WriteInteger('login', 'site3', cmb_server3.ItemIndex);
    //if(edt_id3.Text <> '') then FIni.WriteString('login', 'id3',  Encrypt( edt_id3.Text, key ))
    if(edt_id3.Text <> '') then FIni.WriteString('login', 'id3',  edt_id3.Text)
    else Fini.WriteString('login','id3','');
    if(edt_pw3.Text <> '') then FIni.WriteString('login', 'pw3',  Encrypt( edt_pw3.Text, key ))
    else Fini.WriteString('login','pw3','');
    if ((chk_safe.Checked) and (edt_safepw3.Text <> '')) then  FIni.WriteString('login', 'safepw3',  Encrypt( edt_safepw3.Text, key ))
    else Fini.WriteString('login','safepw3','');
    if(edt_hint3.Text <> '') then FIni.WriteString('login', 'hint3',  edt_hint3.Text)
    else Fini.WriteString('login','hint3','');

    FIni.WriteInteger('login', 'site4', cmb_server4.ItemIndex);
    //if(edt_id4.Text <> '') then FIni.WriteString('login', 'id4',  Encrypt( edt_id4.Text, key ))
    if(edt_id4.Text <> '') then FIni.WriteString('login', 'id4',  edt_id4.Text)
    else Fini.WriteString('login','id4','');
    if(edt_pw4.Text <> '') then FIni.WriteString('login', 'pw4',  Encrypt( edt_pw4.Text, key ))
    else Fini.WriteString('login','pw4','');
    if ((chk_safe.Checked) and (edt_safepw4.Text <> '')) then  FIni.WriteString('login', 'safepw4',  Encrypt( edt_safepw4.Text, key ))
    else Fini.WriteString('login','safepw4','');
    if(edt_hint4.Text <> '') then FIni.WriteString('login', 'hint4',  edt_hint4.Text)
    else Fini.WriteString('login','hint4','');

    FIni.WriteInteger('login', 'site5', cmb_server5.ItemIndex);
    //if(edt_id5.Text <> '') then FIni.WriteString('login', 'id5',  Encrypt( edt_id5.Text, key ))
    if(edt_id5.Text <> '') then FIni.WriteString('login', 'id5',  edt_id5.Text)
    else Fini.WriteString('login','id5','');
    if(edt_pw5.Text <> '') then FIni.WriteString('login', 'pw5',  Encrypt( edt_pw5.Text, key ))
    else Fini.WriteString('login','pw5','');
    if ((chk_safe.Checked) and (edt_safepw5.Text <> '')) then  FIni.WriteString('login', 'safepw5',  Encrypt( edt_safepw5.Text, key ))
    else Fini.WriteString('login','safepw5','');
    if(edt_hint5.Text <> '') then FIni.WriteString('login', 'hint5',  edt_hint5.Text)
    else Fini.WriteString('login','hint5','');

    FIni.WriteInteger('login', 'site6', cmb_server6.ItemIndex);
    //if(edt_id6.Text <> '') then FIni.WriteString('login', 'id6',  Encrypt( edt_id6.Text, key ))
    if(edt_id6.Text <> '') then FIni.WriteString('login', 'id6',  edt_id6.Text)
    else Fini.WriteString('login','id6','');
    if(edt_pw6.Text <> '') then FIni.WriteString('login', 'pw6',  Encrypt( edt_pw6.Text, key ))
    else Fini.WriteString('login','pw6','');
    if ((chk_safe.Checked) and (edt_safepw6.Text <> '')) then  FIni.WriteString('login', 'safepw6',  Encrypt( edt_safepw6.Text, key ))
    else Fini.WriteString('login','safepw6','');
    if(edt_hint6.Text <> '') then FIni.WriteString('login', 'hint6',  edt_hint6.Text)
    else Fini.WriteString('login','hint6','');

    FIni.WriteInteger('login', 'site7', cmb_server7.ItemIndex);
    //if(edt_id7.Text <> '') then FIni.WriteString('login', 'id7',  Encrypt( edt_id7.Text, key ))
    if(edt_id7.Text <> '') then FIni.WriteString('login', 'id7',  edt_id7.Text)
    else Fini.WriteString('login','id7','');
    if(edt_pw7.Text <> '') then FIni.WriteString('login', 'pw7',  Encrypt( edt_pw7.Text, key ))
    else Fini.WriteString('login','pw7','');
    if ((chk_safe.Checked) and (edt_safepw7.Text <> '')) then  FIni.WriteString('login', 'safepw7',  Encrypt( edt_safepw7.Text, key ))
    else Fini.WriteString('login','safepw7','');
    if(edt_hint7.Text <> '') then FIni.WriteString('login', 'hint7',  edt_hint7.Text)
    else Fini.WriteString('login','hint7','');

    FIni.WriteInteger('login', 'site8', cmb_server8.ItemIndex);
    //if(edt_id8.Text <> '') then FIni.WriteString('login', 'id8',  Encrypt( edt_id8.Text, key ))
    if(edt_id8.Text <> '') then FIni.WriteString('login', 'id8',  edt_id8.Text)
    else Fini.WriteString('login','id8','');
    if(edt_pw8.Text <> '') then FIni.WriteString('login', 'pw8',  Encrypt( edt_pw8.Text, key ))
    else Fini.WriteString('login','pw8','');
    if ((chk_safe.Checked) and (edt_safepw8.Text <> '')) then  FIni.WriteString('login', 'safepw8',  Encrypt( edt_safepw8.Text, key ))
    else Fini.WriteString('login','safepw8','');
    if(edt_hint8.Text <> '') then FIni.WriteString('login', 'hint8',  edt_hint8.Text)
    else Fini.WriteString('login','hint8','');

    FIni.WriteInteger('login', 'site9', cmb_server9.ItemIndex);
    //if(edt_id9.Text <> '') then FIni.WriteString('login', 'id8',  Encrypt( edt_id9.Text, key ))
    if(edt_id9.Text <> '') then FIni.WriteString('login', 'id9',  edt_id9.Text)
    else Fini.WriteString('login','id9','');
    if(edt_pw9.Text <> '') then FIni.WriteString('login', 'pw9',  Encrypt( edt_pw9.Text, key ))
    else Fini.WriteString('login','pw9','');
    if ((chk_safe.Checked) and (edt_safepw9.Text <> '')) then  FIni.WriteString('login', 'safepw9',  Encrypt( edt_safepw9.Text, key ))
    else Fini.WriteString('login','safepw9','');
    if(edt_hint9.Text <> '') then FIni.WriteString('login', 'hint9',  edt_hint9.Text)
    else Fini.WriteString('login','hint9','');

    //if(edt_id10.Text <> '') then FIni.WriteString('login', 'id10',  Encrypt( edt_id10.Text, key ))
    if(edt_id10.Text <> '') then FIni.WriteString('login', 'id10',  edt_id10.Text)
    else Fini.WriteString('login','id10','');
    if(edt_pw10.Text <> '') then FIni.WriteString('login', 'pw10',  Encrypt( edt_pw10.Text, key ))
    else Fini.WriteString('login','pw10','');


    Fini.WriteString('login','navi',lbl_navi.caption);//있다면 네비 위치 저장
  end;
end;

procedure LoadEnv(filetime:string);
var
  key:integer;
begin
  key :=21473;
  with Frm_main do
  begin

    // 포지션 저장되어 있으면
    top := FIni.ReadInteger('position','top',0);
    left := FIni.ReadInteger('position','left',0);


    //key := strToint(filetime);    // 키 수정 방지는 차후로 미룸
    chk_save.Checked :=  FIni.ReadBool('login','save',false);
    chk_safe.Checked :=  FIni.ReadBool('login','safe_save',false);
    is_notice :=  FIni.ReadBool('login','notice',false);

    cmb_server1.ItemIndex := FIni.ReadInteger('login','site1',0);
    cmb_server2.ItemIndex := FIni.ReadInteger('login','site2',0);
    cmb_server3.ItemIndex := FIni.ReadInteger('login','site3',0);
    cmb_server4.ItemIndex := FIni.ReadInteger('login','site4',0);
    cmb_server5.ItemIndex := FIni.ReadInteger('login','site5',0);
    cmb_server6.ItemIndex := FIni.ReadInteger('login','site6',0);
    cmb_server7.ItemIndex := FIni.ReadInteger('login','site7',0);
    cmb_server8.ItemIndex := FIni.ReadInteger('login','site8',0);
    cmb_server9.ItemIndex := FIni.ReadInteger('login','site9',0);

    //if(FIni.ReadString('login','id1','')<>'') then edt_id1.Text := Decrypt(FIni.ReadString('login','id1',''), key);
    if(FIni.ReadString('login','id1','')<>'') then edt_id1.Text := FIni.ReadString('login','id1','');
    if(FIni.ReadString('login','pw1','')<>'') then edt_pw1.Text := Decrypt(FIni.ReadString('login','pw1',''), key);

    //if(FIni.ReadString('login','id2','')<>'') then edt_id2.Text := Decrypt(FIni.ReadString('login','id2',''), key);
    if(FIni.ReadString('login','id2','')<>'') then edt_id2.Text := FIni.ReadString('login','id2','');
    if(FIni.ReadString('login','pw2','')<>'') then edt_pw2.Text := Decrypt(FIni.ReadString('login','pw2',''), key);

    //if(FIni.ReadString('login','id3','')<>'') then edt_id3.Text := Decrypt(FIni.ReadString('login','id3',''), key);
    if(FIni.ReadString('login','id3','')<>'') then edt_id3.Text := FIni.ReadString('login','id3','');
    if(FIni.ReadString('login','pw3','')<>'') then edt_pw3.Text := Decrypt(FIni.ReadString('login','pw3',''), key);

    //if(FIni.ReadString('login','id4','')<>'') then edt_id4.Text := Decrypt(FIni.ReadString('login','id4',''), key);
    if(FIni.ReadString('login','id4','')<>'') then edt_id4.Text := FIni.ReadString('login','id4','');
    if(FIni.ReadString('login','pw4','')<>'') then edt_pw4.Text := Decrypt(FIni.ReadString('login','pw4',''), key);

    //if(FIni.ReadString('login','id5','')<>'') then edt_id5.Text := Decrypt(FIni.ReadString('login','id5',''), key);
    if(FIni.ReadString('login','id5','')<>'') then edt_id5.Text := FIni.ReadString('login','id5','');
    if(FIni.ReadString('login','pw5','')<>'') then edt_pw5.Text := Decrypt(FIni.ReadString('login','pw5',''), key);

    //if(FIni.ReadString('login','id6','')<>'') then edt_id6.Text := Decrypt(FIni.ReadString('login','id6',''), key);
    if(FIni.ReadString('login','id6','')<>'') then edt_id6.Text := FIni.ReadString('login','id6','');
    if(FIni.ReadString('login','pw6','')<>'') then edt_pw6.Text := Decrypt(FIni.ReadString('login','pw6',''), key);

    //if(FIni.ReadString('login','id7','')<>'') then edt_id7.Text := Decrypt(FIni.ReadString('login','id7',''), key);
    if(FIni.ReadString('login','id7','')<>'') then edt_id7.Text := FIni.ReadString('login','id7','');
    if(FIni.ReadString('login','pw7','')<>'') then edt_pw7.Text := Decrypt(FIni.ReadString('login','pw7',''), key);

    //if(FIni.ReadString('login','id8','')<>'') then edt_id8.Text := Decrypt(FIni.ReadString('login','id8',''), key);
    if(FIni.ReadString('login','id8','')<>'') then edt_id8.Text := FIni.ReadString('login','id8','');
    if(FIni.ReadString('login','pw8','')<>'') then edt_pw8.Text := Decrypt(FIni.ReadString('login','pw8',''), key);

    //if(FIni.ReadString('login','id9','')<>'') then edt_id9.Text := Decrypt(FIni.ReadString('login','id9',''), key);
    if(FIni.ReadString('login','id9','')<>'') then edt_id9.Text := FIni.ReadString('login','id9','');
    if(FIni.ReadString('login','pw9','')<>'') then edt_pw9.Text := Decrypt(FIni.ReadString('login','pw9',''), key);

    //if(FIni.ReadString('login','id10','')<>'') then edt_id10.Text := Decrypt(FIni.ReadString('login','id10',''), key);
    if(FIni.ReadString('login','id10','')<>'') then edt_id10.Text := FIni.ReadString('login','id10','');
    if(FIni.ReadString('login','pw10','')<>'') then edt_pw10.Text := Decrypt(FIni.ReadString('login','pw10',''), key);

    // 네비 기억
    //if(FIni.ReadString('login','navi','')<>'') then
    lbl_navi.caption := FIni.ReadString('login','navi','');

    // 안전키 저장체크라면
    if(FIni.ReadString('login','safepw1','')<>'') then edt_safepw1.Text := Decrypt(FIni.ReadString('login','safepw1',''), key);
    if(FIni.ReadString('login','safepw2','')<>'') then edt_safepw2.Text := Decrypt(FIni.ReadString('login','safepw2',''), key);
    if(FIni.ReadString('login','safepw3','')<>'') then edt_safepw3.Text := Decrypt(FIni.ReadString('login','safepw3',''), key);
    if(FIni.ReadString('login','safepw4','')<>'') then edt_safepw4.Text := Decrypt(FIni.ReadString('login','safepw4',''), key);
    if(FIni.ReadString('login','safepw5','')<>'') then edt_safepw5.Text := Decrypt(FIni.ReadString('login','safepw5',''), key);
    if(FIni.ReadString('login','safepw6','')<>'') then edt_safepw6.Text := Decrypt(FIni.ReadString('login','safepw6',''), key);
    if(FIni.ReadString('login','safepw7','')<>'') then edt_safepw7.Text := Decrypt(FIni.ReadString('login','safepw7',''), key);
    if(FIni.ReadString('login','safepw8','')<>'') then edt_safepw8.Text := Decrypt(FIni.ReadString('login','safepw8',''), key);
    if(FIni.ReadString('login','safepw9','')<>'') then edt_safepw9.Text := Decrypt(FIni.ReadString('login','safepw9',''), key);

    // 힌트 저장되어있다면
    if(FIni.ReadString('login','hint1','')<>'') then edt_hint1.Text := FIni.ReadString('login','hint1','');
    if(FIni.ReadString('login','hint2','')<>'') then edt_hint2.Text := FIni.ReadString('login','hint2','');
    if(FIni.ReadString('login','hint3','')<>'') then edt_hint3.Text := FIni.ReadString('login','hint3','');
    if(FIni.ReadString('login','hint4','')<>'') then edt_hint4.Text := FIni.ReadString('login','hint4','');
    if(FIni.ReadString('login','hint5','')<>'') then edt_hint5.Text := FIni.ReadString('login','hint5','');
    if(FIni.ReadString('login','hint6','')<>'') then edt_hint6.Text := FIni.ReadString('login','hint6','');
    if(FIni.ReadString('login','hint7','')<>'') then edt_hint7.Text := FIni.ReadString('login','hint7','');
    if(FIni.ReadString('login','hint8','')<>'') then edt_hint8.Text := FIni.ReadString('login','hint8','');
    if(FIni.ReadString('login','hint9','')<>'') then edt_hint9.Text := FIni.ReadString('login','hint9','');
  end;
end;

procedure DefaultEnv(check:boolean);
begin
  with Frm_main do
  begin
    // 위치 저장
    FIni.ReadInteger('position','top',0);
    FIni.ReadInteger('position','left',0);

    FIni.WriteBool('login','save',false);
    FIni.WriteBool('login','safe_save',false);
    FIni.WriteBool('login','notice',false);

    FIni.WriteInteger('login','site1',0);
    FIni.WriteString('login','hint1','클라이언트1');
    Fini.WriteString('login','id1','');
    Fini.WriteString('login','pw1','');

    FIni.WriteInteger('login','site2',0);
    FIni.WriteString('login','hint2','클라이언트2');
    Fini.WriteString('login','id2','');
    Fini.WriteString('login','pw2','');

    FIni.WriteInteger('login','site3',0);
    FIni.WriteString('login','hint3','클라이언트3');
    Fini.WriteString('login','id3','');
    Fini.WriteString('login','pw3','');

    FIni.WriteInteger('login','site4',0);
    FIni.WriteString('login','hint4','클라이언트4');
    Fini.WriteString('login','id4','');
    Fini.WriteString('login','pw4','');

    FIni.WriteInteger('login','site5',0);
    FIni.WriteString('login','hint5','클라이언트5');
    Fini.WriteString('login','id5','');
    Fini.WriteString('login','pw5','');

    FIni.WriteInteger('login','site6',0);
    FIni.WriteString('login','hint6','클라이언트6');
    Fini.WriteString('login','id6','');
    Fini.WriteString('login','pw6','');

    FIni.WriteInteger('login','site7',0);
    FIni.WriteString('login','hint7','클라이언트7');
    Fini.WriteString('login','id7','');
    Fini.WriteString('login','pw7','');

    FIni.WriteInteger('login','site8',0);
    FIni.WriteString('login','hint8','클라이언트8');
    Fini.WriteString('login','id8','');
    Fini.WriteString('login','pw8','');

    FIni.WriteInteger('login','site9',0);
    FIni.WriteString('login','hint9','클라이언트9');
    Fini.WriteString('login','id9','');
    Fini.WriteString('login','pw9','');

    Fini.WriteString('login','id10','');
    Fini.WriteString('login','pw10','');

    Fini.WriteString('login','navi','');
  end;
end;


end.

