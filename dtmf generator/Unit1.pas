unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,MMSystem, StdCtrls, ExtCtrls, ComCtrls, boxTone;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    Button14: TButton;
    Button15: TButton;
    Button16: TButton;
    Button17: TButton;
    Button18: TButton;
    TrackBar1: TTrackBar;
    Label1: TLabel;
    Label2: TLabel;
   label3: TLabel;
   text1:TEdit;
   text2: TEdit;
   text3: TEdit;
    procedure Button1Click(Sender: TObject);
     procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button14Click(Sender: TObject);
    procedure Button15Click(Sender: TObject);
    procedure Button16Click(Sender: TObject);
    procedure Button17Click(Sender: TObject);
    procedure Button18Click(Sender: TObject);

    procedure mm_wom_Open (var Msg: TMessage);  message mm_wom_open;
    procedure mm_wom_Done (var Msg: TMessage);  message mm_wom_done;
    procedure mm_wom_Close (var Msg: TMessage);  message mm_wom_close;

    procedure PlayBuffer(SampleRate: integer; Bits: Byte; Buffer: array of byte);
    procedure stopPlay;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
{$R *.dfm}
var
   waveOut: hWaveOut;
   outHdr: TWaveHdr;
   header: TWaveFormatEx;
   pBuf: tHandle;
   pBuffer: pointer;
   Opened: boolean;

procedure TForm1.PlayBuffer(SampleRate: integer; Bits: Byte; Buffer: array of byte);
var
   Err: integer;
begin

 with header do begin
   wFormatTag := WAVE_FORMAT_PCM;
   nChannels := 1;
   nSamplesPerSec := SampleRate;
   wBitsPerSample := Bits;
   nBlockAlign := nChannels * (wBitsPerSample div 8);
   nAvgBytesPerSec := nSamplesPerSec * nBlockAlign;
   cbSize := 0;
 end;

   if Opened = true then stopPlay;

   err:=WaveOutOpen(addr(waveOut), 0, @header,
  Handle, 0, CALLBACK_WINDOW);
    if Err <> 0 then Exit;

 pBuf := GlobalAlloc(GMEM_MOVEABLE and GMEM_SHARE, length(Buffer));
pBuffer:=GlobalLock(pBuf);

  with outHdr do begin
   lpData := PBuffer;
   dwBufferLength := length(Buffer);
    dwUser := 0;
    dwFlags := 0;
   dwLoops := 0;
 end;

   err:=WaveOutPrepareHeader(waveOut, @outHdr, sizeof(outHdr));
    if Err <> 0 then Exit;

   copyMemory(pBuffer, @Buffer, length(Buffer));

   err:=WaveOutWrite(waveOut, @outHdr, sizeof(outHdr));
    if Err <> 0 then Exit;

end;

procedure TForm1.mm_wom_open (var Msg: tMessage);
begin
// 'Open'
   Opened:=True;
end;

procedure TForm1.mm_wom_done (var Msg: tMessage);
begin
// 'Done'

   stopPlay;

end;

procedure Tform1.mm_wom_close (var Msg: tMessage);
begin
// 'Close'
   Opened:=False;
end;

procedure TForm1.stopPlay;
begin

   WaveOutReset(WaveOut);
   WaveOutClose(WaveOut);

   GlobalUnlock(pBuf);
   GlobalFree(pBuf);

end;

procedure TForm1.Button1Click(Sender: TObject);
begin
    text1.text:='697';
   text2.text:='1209';
   Button17.click;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
    text1.text:='697';
    text2.text:='1336';
   Button17.click;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
    text1.text:='697';
   text2.text:='1477';
   Button17.click;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
   text1.text:='697';
   text2.text:='1633';
   Button17.click;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
   text1.text:='770';
   text2.text:='1209';
   Button17.click;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
   text1.text:='697';
   text2.text:='1336';
   Button17.click;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
   text1.text:='770';
   text2.text:='1477';
   Button17.click;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  text1.text:='770';
  text2.text:='1633';
   Button17.click;
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
  text1.text:='852';
  text2.text:='1209';
   Button17.click;
end;

procedure TForm1.Button10Click(Sender: TObject);
begin
  text1.text:='852';
  text2.text:='1336';
   Button17.click;
end;

procedure TForm1.Button11Click(Sender: TObject);
begin
  text1.text:='852';
  text2.text:='1477';
   Button17.click;
end;

procedure TForm1.Button12Click(Sender: TObject);
begin
  text1.text:='852';
  text2.text:='1633';
   Button17.click;
end;

procedure TForm1.Button13Click(Sender: TObject);
begin
  text1.text:='941';
  text2.text:='1209';
   Button17.click;
end;

procedure TForm1.Button14Click(Sender: TObject);
begin
  text1.text:='941';
  text2.text:='1336';
   Button17.click;
end;

procedure TForm1.Button15Click(Sender: TObject);
begin
 text1.text:='941';
 text2.text:='1477';
   Button17.click;
end;

procedure TForm1.Button16Click(Sender: TObject);
begin
  text1.text:='941';
  text2.text:='1633';
   Button17.click;
end;

procedure TForm1.Button17Click(Sender: TObject);
var
  Freq: array [0..1] of smallint;
  Buffer:array of byte;
  Duration: Double;
  dblVolume: array [0..1] of double;
  SoundBuffer: variant;
begin
   if text1.text = '' then text1.text:='697';
if text2.text = '' then text2.text:='1209';
   Freq[0]:=strToInt(text1.text);
   Freq[1]:=strToInt(text2.text);
   If text3.text = '' then text3.text:='0,25';
   Duration:=strToFloat(text3.text);
   dblVolume[0]:=trackbar1.position / 100;
   dblVolume[1]:=trackbar1.position / 100;
   toneGenerate(22050, 8, dblVolume, Freq, Duration, SoundBuffer);
   buffer:=SoundBuffer;
   PlayBuffer(22050, 8, Buffer);
end;

procedure TForm1.Button18Click(Sender: TObject);
begin

	Close();
	Application.Terminate();

end;

end.