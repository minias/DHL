unit UEncrypt;
{
박후선(OSOLGIL) /osolgil@pop.chollian.net / softech@soback.kornet.nm.kr
URL:https://www.delmadang.com/community/bbs_view.asp?bbsNo=3&bbsCat=42&indx=194710
}

interface

function Encrypt(const S: String; Key: Word): String;
function Decrypt(const S: String; Key: Word): String;


implementation

uses SysUtils;

const
C1 = 12345;// 암호상수1
C2 = 12345;// 암호상수2
HexaChar : array [0..15] of Char = ( '0', '1', '2', '3', '4', '5', '6', '7', '8', '9','A', 'B', 'C', 'D', 'E', 'F' );

// Byte로 구성된 데이터를 Hexadecimal 문자열로 변환
function ValueToHex(const S : String): String;
var I : Integer;
begin
  SetLength(Result, Length(S)*2); // 문자열 크기를 설정
  for I := 0 to Length(S)-1 do
  begin
    Result[(I*2)+1] := HexaChar[Integer(S[I+1]) shr 4];
    Result[(I*2)+2] := HexaChar[Integer(S[I+1]) and $0f];
  end;
end;

// Hexadecimal로 구성된 문자열을 Byte 데이터로 변환
function HexToValue(const S : String) : String;
var I : Integer;
begin
  SetLength(Result, Length(S) div 2);
  for I := 0 to (Length(S) div 2) - 1 do
  begin
    Result[I+1] := Char(StrToInt('$'+Copy(S,(I*2)+1, 2)));
  end;
end;

// 암호걸기
function Encrypt(const S: String; Key: Word): String;
var
  I: byte;
  FirstResult : String;
begin
  SetLength(FirstResult, Length(S)); // 문자열의 크기를 설정
  for I := 1 to Length(S) do begin
    FirstResult[I] := char(byte(S[I]) xor (Key shr 8));
    Key := (byte(FirstResult[I]) + Key) * C1 + C2;
  end;
  Result := ValueToHex(FirstResult);
end;

// 암호풀기
function Decrypt(const S: String; Key: Word): String;
var
  I: byte;
  FirstResult : String;
begin
  FirstResult := HexToValue(S);
  SetLength( Result, Length(FirstResult) );
  for I := 1 to Length(FirstResult) do
  begin
    Result[I] := char(byte(FirstResult[I]) xor (Key shr 8));
    Key := (byte(FirstResult[I]) + Key) * C1 + C2;
  end;
end;

// Encrypt( ESource.Text, 12345 );
// Decrypt( EEncryptResult.Text, 12345);

end.
