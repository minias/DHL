unit version;

{ DHL20 Main.pas by �̴Ͼ<gnuhacker@gmail.com> }

interface

uses
  SysUtils, Windows;

function GetVersion(): String;
function GetVersionInt(): Integer;

implementation

// ���α׷� ���� ���� �������� �Լ� ����
function GetVersion(): String;
var
  Size, Size2 : DWord;
  Pt, Pt2     : Pointer;
  Version     : string;
begin
  Size := GetFileVersionInfoSize(Pchar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
      GetFileVersionInfo (Pchar (ParamStr (0)), 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo (Pt2^) do
      begin
        version := IntToStr(HiWord (dwFileVersionMS)) + '.' +
                   IntToStr(LoWord (dwFileVersionMS));
        result := version;
      end;
    finally
      FreeMem (pt);
    end;
  end;
end;
// ���� ���� �������� �Լ� ��

// ���� ���� ������ �������� �Լ� ����
function GetVersionInt(): Integer;
var
  Size, Size2 : DWord;
  Pt, Pt2     : Pointer;
  Version     : string;
  VersionInt  : Integer;
begin
  result := 0;
  Size := GetFileVersionInfoSize(Pchar (ParamStr (0)), Size2);
  if Size > 0 then
  begin
    GetMem (Pt, Size);
    try
      GetFileVersionInfo (Pchar (ParamStr (0)), 0, Size, Pt);
      VerQueryValue (Pt, '\', Pt2, Size2);
      with TVSFixedFileInfo (Pt2^) do
      begin
        version := IntToStr(LoWord (dwFileVersionLs));
        VersionInt := StrToInt(Version);
        result := VersionInt;
      end;
    finally
      FreeMem (pt);
    end;
  end;
end;
// ���� ���� ������ �������� �Լ� ��

end.
