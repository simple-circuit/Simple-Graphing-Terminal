unit Unit1;

{$IFDEF FPC}
  {$MODE Delphi}
{$ENDIF}

interface

uses
{$IFnDEF FPC}
  Windows,
{$ELSE}
{$IFnDEF FPC}
  windows,
{$ELSE}
{$ENDIF}
  LCLIntf, LCLType,
{$ENDIF}
  windows, LCL, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Menus;

type
  TForm1 = class(TForm)
    Timer1: TTimer;
    Shape1: TShape;
    MainMenu1: TMainMenu;
    Open1: TMenuItem;
    Close1: TMenuItem;
    Baud1: TMenuItem;
    N12001: TMenuItem;
    N24001: TMenuItem;
    N48001: TMenuItem;
    N96001: TMenuItem;
    N192001: TMenuItem;
    N1152001: TMenuItem;
    N234001: TMenuItem;
    N468001: TMenuItem;
    Port1: TMenuItem;
    Com11: TMenuItem;
    Com21: TMenuItem;
    Com31: TMenuItem;
    Com41: TMenuItem;
    Com51: TMenuItem;
    Com61: TMenuItem;
    Com71: TMenuItem;
    Com81: TMenuItem;
    Com91: TMenuItem;
    Com101: TMenuItem;
    Com111: TMenuItem;
    Com121: TMenuItem;
    Com131: TMenuItem;
    Com141: TMenuItem;
    Com151: TMenuItem;
    Com161: TMenuItem;
    Com171: TMenuItem;
    Com181: TMenuItem;
    Com191: TMenuItem;
    Com201: TMenuItem;
    Label1: TLabel;
    send1: TMenuItem;
    Timer2: TTimer;
    CRLF1: TMenuItem;
    On1: TMenuItem;
    LFonCr1: TMenuItem;
    CRonLF1: TMenuItem;
    Graphic1: TMenuItem;
    On2: TMenuItem;
    Cursor1: TMenuItem;
    Off1: TMenuItem;
    Send2: TMenuItem;
    File1: TMenuItem;
    Delay1: TMenuItem;
    File2: TMenuItem;
    Close2: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    Timer3: TTimer;
    CCD1: TMenuItem;
    N9216001: TMenuItem;
    Mask1: TMenuItem;
    N7bits1: TMenuItem;
    Com211: TMenuItem;
    Com221: TMenuItem;
    Com231: TMenuItem;
    Com241: TMenuItem;
    Com251: TMenuItem;
    Com261: TMenuItem;
    Com271: TMenuItem;
    Com281: TMenuItem;
    Com291: TMenuItem;
    Com301: TMenuItem;
    Bits1: TMenuItem;
    Send3: TMenuItem;
    B01: TMenuItem;
    B11: TMenuItem;
    B21: TMenuItem;
    B31: TMenuItem;
    B41: TMenuItem;
    B51: TMenuItem;
    B61: TMenuItem;
    B71: TMenuItem;
    N18432001: TMenuItem;
    N5250001: TMenuItem;
    N3001: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure OpenClick(Sender: TObject);
    procedure form1keypress(Sender: TObject; var Key: Char);
    procedure N12001Click(Sender: TObject);
    procedure N48001Click(Sender: TObject);
    procedure N96001Click(Sender: TObject);
    procedure N192001Click(Sender: TObject);
    procedure N1152001Click(Sender: TObject);
    procedure N234001Click(Sender: TObject);
    procedure N468001Click(Sender: TObject);
    procedure Open1Click(Sender: TObject);
    procedure Close1Click(Sender: TObject);
    procedure Com71Click(Sender: TObject);
    procedure Com11Click(Sender: TObject);
    procedure Com21Click(Sender: TObject);
    procedure Com31Click(Sender: TObject);
    procedure Com41Click(Sender: TObject);
    procedure Com51Click(Sender: TObject);
    procedure Com61Click(Sender: TObject);
    procedure Com81Click(Sender: TObject);
    procedure Com91Click(Sender: TObject);
    procedure Com101Click(Sender: TObject);
    procedure Com111Click(Sender: TObject);
    procedure Com121Click(Sender: TObject);
    procedure Com131Click(Sender: TObject);
    procedure Com141Click(Sender: TObject);
    procedure Com151Click(Sender: TObject);
    procedure Com161Click(Sender: TObject);
    procedure Com171Click(Sender: TObject);
    procedure Com181Click(Sender: TObject);
    procedure Com191Click(Sender: TObject);
    procedure Com201Click(Sender: TObject);
    procedure N24001Click(Sender: TObject);
    procedure Timer2Timer(Sender: TObject);
    procedure On1Click(Sender: TObject);
    procedure LFonCr1Click(Sender: TObject);
    procedure CRonLF1Click(Sender: TObject);
    procedure On2Click(Sender: TObject);
    procedure Form1paint(Sender: TObject);
    procedure Off1Click(Sender: TObject);
    procedure File1Click(Sender: TObject);
    procedure File2Click(Sender: TObject);
    procedure Delay1Click(Sender: TObject);
    procedure Close2Click(Sender: TObject);
    procedure Timer3Timer(Sender: TObject);
    procedure CCD1Click(Sender: TObject);
    procedure N9216001Click(Sender: TObject);
    procedure N7bits1Click(Sender: TObject);
    procedure Com211Click(Sender: TObject);
    procedure Com221Click(Sender: TObject);
    procedure Com231Click(Sender: TObject);
    procedure Com241Click(Sender: TObject);
    procedure Com251Click(Sender: TObject);
    procedure Com261Click(Sender: TObject);
    procedure Com271Click(Sender: TObject);
    procedure Com281Click(Sender: TObject);
    procedure Com291Click(Sender: TObject);
    procedure Com301Click(Sender: TObject);
    procedure Send3Click(Sender: TObject);
    procedure B01Click(Sender: TObject);
    procedure B11Click(Sender: TObject);
    procedure B21Click(Sender: TObject);
    procedure B31Click(Sender: TObject);
    procedure B41Click(Sender: TObject);
    procedure B51Click(Sender: TObject);
    procedure B61Click(Sender: TObject);
    procedure B71Click(Sender: TObject);
    procedure N18432001Click(Sender: TObject);
    procedure N5250001Click(Sender: TObject);
    procedure N3001Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$IFnDEF FPC}
  {$IFnDEF FPC}
  {$R *.dfm}
{$ELSE}
  {$R *.lfm}
{$ENDIF}
{$ELSE}
  {$R *.lfm}
{$ENDIF}
var
crt_lines : array[0..80,0..25] of char;
xpos, ypos : integer;
xbits,ybits : integer;
portnum, baudrate : integer;
crlf : integer;
F: TextFile; 
F2: TextFile;
file_flag : bool;

   d : tDCB;                      //Serial port I/O definitions
   p : ^dword;
   comhand: thandle;
   a : longbool;
   a2 : bool;
   FileName : string;
   cp : tcommprop;
   cs : tcomstat;

   refresh_flag : bool;
   escape_flag : bool;
   gmode : integer;
   gcount : integer;
   gx, gy : integer;
   gxc : array[0..7] of integer;
   gyc : array[0..7] of integer;
   ci : integer;
   myimage : Tbitmap;
   myimage2 : Tbitmap;
   lcnt : integer;
   clvk : tcolor;
   
//Open serial comport #1 to #30 and set to 8 data no parity baud=115200, return 0 on error;
Function opencomport(portnum : smallint): smallint;
begin
  if (portnum < 1) or (portnum > 30) then portnum := 1;
  if portnum = 1 then FileName := 'com1';
  if portnum = 2 then FileName := 'com2';
  if portnum = 3 then FileName := 'com3';
  if portnum = 4 then FileName := 'com4';
  if portnum = 5 then FileName := 'com5';
  if portnum = 6 then FileName := 'com6';
  if portnum = 7 then FileName := 'com7';
  if portnum = 8 then FileName := 'com8';
  if portnum = 9 then FileName := 'com9';
  if portnum = 10 then FileName := '\\.\COM10';
  if portnum = 11 then FileName := '\\.\COM11';
  if portnum = 12 then FileName := '\\.\COM12';
  if portnum = 13 then FileName := '\\.\COM13';
  if portnum = 14 then FileName := '\\.\COM14';
  if portnum = 15 then FileName := '\\.\COM15';
  if portnum = 16 then FileName := '\\.\COM16';
  if portnum = 17 then FileName := '\\.\COM17';
  if portnum = 18 then FileName := '\\.\COM18';
  if portnum = 19 then FileName := '\\.\COM19';
  if portnum = 20 then FileName := '\\.\COM20';
  if portnum = 21 then FileName := '\\.\COM21';
  if portnum = 22 then FileName := '\\.\COM22';
  if portnum = 23 then FileName := '\\.\COM23';
  if portnum = 24 then FileName := '\\.\COM24';
  if portnum = 25 then FileName := '\\.\COM25';
  if portnum = 26 then FileName := '\\.\COM26';
  if portnum = 27 then FileName := '\\.\COM27';
  if portnum = 28 then FileName := '\\.\COM28';
  if portnum = 29 then FileName := '\\.\COM29';
  if portnum = 30 then FileName := '\\.\COM30';
  comhand := FileOpen(FileName, fmOpenReadWrite);    //Open ComX for input-output mode

  opencomport := -1;                                 //If open works, return all ones

  if (comhand > 0) and (comhand < 4294967295) then begin
    //valid file handle, so set up port parameters
    getcommproperties(comhand, cp);                 //Get the com port windows handle
    a2 := SetUpComm(comhand, 65536, 1024);          //Set up for a 65536 byte receive buffer and a 1024 byte write buffer
    d.BaudRate := baudrate;                           //Change the speed and bit settings
    d.ByteSize := 8;
    d.Parity := NOPARITY;
    d.StopBits := ONESTOPBIT;
    a2 := SetCommState(comhand, d);               //Configure the new speed and bit settings

    form1.Shape1.Brush.Color := clLime;
   end
  else begin
    opencomport := 0;                            //Return zero if error
    form1.Shape1.Brush.Color := clRed;
  end;
end;

//Close the serial port
procedure closecomport;                         //Shut down the serial port
begin
 FileClose(comhand); { *Converted from CloseHandle* }
end;

//Transmit the lower byte of an integer through the serial port. return -1 on error
function transmitcombyte(databyte : smallint): smallint;
var
   c : char;
   p9 : array[0..2] of char;
   f : word;
begin
 if databyte <0 then databyte := 0;
 if databyte >255 then databyte := 255;
 c := chr(databyte);
 p9[0] := c;
 p9[1] := chr(0);
 f := filewrite(comhand, p9, 1);
 if f = 0 then transmitcombyte := -1 else transmitcombyte := 0;  //on error return -1 else 0 if sent
end;

//write a serial string command to the curve tracer
procedure writecommand(cs2 : shortstring);
var
 i : smallint;
 p9 : array[0..255] of char;
 f : word;
 count : integer;
begin
 count := Length(cs2);
 if count < 1 then exit;
 for i := 0 to count-1 do p9[i]:= cs2[i+1];
 p9[count] := char(13);   //add CR
 p9[count+1] := char(10);     //add LF
 f := filewrite(comhand, p9, count+2);
end;

//get one byte from com port buffer. return byte 0-255 but if no data available, return 256
function readcombyte(): integer;
var
 d : dword;
 f : word;
 b : byte;
begin
 clearcommerror(comhand, d, @cs);
  b := 0;
  readcombyte := 256;                  //return 256 if no byte was recieved
 if cs.cbinque <> 0 then begin
  f := fileread (comhand, b, 1);
  if f <> 0 then begin
   if (form1.n7bits1.checked = false) then readcombyte := b else readcombyte := b and 127;
  end; 
 end;
end;


procedure crt_refresh();
var
 i,j : integer;
begin
  myimage2.Canvas.Pen.Color := clwhite;
  myimage2.Canvas.FillRect(0,0,720,416);
  myimage2.Canvas.Pen.Color := clblack;
 for i := 1 to 25 do begin
  for j := 1 to 80 do myimage2.Canvas.TextOut(j*xbits,i*ybits,crt_lines[j,i]);
 end;
 if form1.off1.checked = false then begin
  myimage2.canvas.MoveTo(xpos*xbits,14+ypos*ybits);
  myimage2.canvas.LineTo(8 + xpos*xbits,14+ypos*ybits);
 end;
 if form1.on2.checked = true then begin


  myimage2.Canvas.CopyMode := cmSrcInvert	;
  myimage2.canvas.CopyRect(rect(0,0,720,400),myimage.Canvas,rect(0,0,720,400));
  myimage2.Canvas.CopyMode := cmSrcCopy;
 end;
 form1.canvas.CopyRect(rect(0,0,720,416),myimage2.Canvas,rect(0,0,720,416));

end;


procedure crt_clr();
var
 i,j : integer;
begin
 for i := 0 to 25 do begin
  for j := 0 to 80 do crt_lines[j,i] := char(32);
 end;
 lcnt := 0;
 form1.Canvas.Pen.Color := clwhite;
 form1.Canvas.FillRect(0,0,730,416);
 myimage.canvas.pen.color := clblack;
 myimage.canvas.FillRect(0,0,720,400);
 myimage.canvas.pen.color := clvk;
 form1.Canvas.Pen.Color := clblack;
 refresh_flag := true;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
 myimage2 := TBitmap.Create;  //Define the image for plotting data
 myimage2.Height := 416;
 myimage2.Width := 720;
 myimage2.PixelFormat := pf24bit; //Use true RGB for the image
 myimage2.Canvas.pen.Color := clwhite;
 myimage2.Canvas.Brush.Color := clwhite;
 myimage2.canvas.FillRect(0,0,720,416);
 myimage2.Canvas.Font.Name:= 'Fixedsys';
 myimage2.Canvas.Font.Size:= 10;
 myimage := TBitmap.Create;  //Define the image for plotting data
 myimage.Height := 400;
 myimage.Width := 720;
 myimage.PixelFormat := pf24bit; //Use true RGB for the image
 myimage.Canvas.pen.Color := clblack;
 myimage.Canvas.Brush.Color := clblack;
 myimage.canvas.Rectangle(0,0,720,400);
 clvk := clblack;
 ci := 0;
 myimage.Canvas.pen.Color := clvk;
  xpos := 1;
 ypos := 1;
 xbits := 9;
 ybits := 16;
 crlf := 0;
 portnum := 1;
 baudrate := 115200;
 crt_clr;
 refresh_flag := true;
 escape_flag := false;
 gmode := 0;
 lcnt := 0;
 file_flag := false;
end;

procedure do_xy(c : char);
begin
 gcount := gcount+1;
 if gcount <= 3 then gx := 10*gx+(ord(c)-48) else
 gy := 10*gy+(ord(c)-48);
 if gcount = 6 then begin
  if gmode = 1 then begin
   if gx < 1 then gx := 1;
   if gy < 1 then gy := 1;
   if gx > 80 then gx := 80;
   if gy > 25 then gy := 25;
   xpos := gx;
   ypos := gy;
  end;
  if gx < 0 then gx := 0;
  if gy < 0 then gy := 0;
  if gx > 720 then gx := 720;
  if gy > 400 then gy := 400;
  if gmode = 2 then begin
    gxc[ci] := gx;
    gyc[ci] := gy;
  end;
  if gmode = 3 then  begin
   myimage.Canvas.pen.color := clvk;
   myImage.Canvas.MoveTo(gxc[ci],gyc[ci]);
   myImage.Canvas.LineTo(gx,gy);
   gxc[ci] := gx;
   gyc[ci] := gy;
  end;
  if gmode = 4 then begin
   myimage.Canvas.pen.color := clvk;
   gxc[ci] := gx;
   gyc[ci] := gy;
  end;
  if gmode = 5 then begin
        myimage.Canvas.pen.color := clvk;
        myimage.canvas.Rectangle(gx-2,gy-2,gx+2,gy+2);
  end;
  if lcnt > 1023 then lcnt := 1023;
  refresh_flag := true;
  gmode := 0;
 end;
end;

procedure do_escape(c : char);
begin
 if (c = 'c') or (c = 'C') then gmode := 1;
 if (c = 'm') or (c = 'M') then gmode := 2;
 if (c = 'l') or (c = 'L') then begin
        if c = 'l' then gmode := 3 else gmode := 4;
        clvk := tcolor($00ffffff); //not white = black
        ci := 0;
 end;
 if (c = 'r') or (c = 'R') then begin
        if c = 'r' then gmode := 3 else gmode := 4;
        clvk := tcolor($00ffff00); //red
        ci := 1;
 end;
 if (c = 'g') or (c = 'G') then begin
        if c = 'g' then gmode := 3 else gmode := 4;
        clvk := tcolor($00ff00ff); //green
        ci := 2;
 end;
 if (c = 'b') or (c = 'B') then begin
        if c = 'b' then gmode := 3 else gmode := 4;
        clvk := tcolor($0000ffff); //blue
        ci := 3;
 end;
 if (c = 'Q') then begin
        gmode := 5;
        clvk := tcolor($00ffff00); //red
 end;
 if (c = 'S') then begin
        gmode := 5;
        clvk := tcolor($0000ffff); //blue
 end;
  if (c = 'N') then begin
        gmode := 5;
        clvk := tcolor($00ff00ff); //green
 end;
 if (c = 'T') then begin
        gmode := 5;
        clvk := tcolor($00ffffff); //not white = black
 end;
 if (c = 'p') or (c = 'P') then gmode := 5;
 gcount := 0; gx :=0; gy := 0;
 escape_flag := false;
end;

procedure shift_lines_up();
var
 i,j : integer;
begin
   ypos := 25;
   for i := 1 to 25 do begin
    for j := 0 to 80 do crt_lines[j,i-1] := crt_lines[j,i];
   end;
   for j := 0 to 80 do crt_lines[j,25] := char(32);
   refresh_flag := true;
end;

procedure process_char(key : char);
begin
 if escape_flag = true then begin do_escape(key); exit; end;
 if gmode <> 0 then begin do_xy(key); exit; end;
 if key = char(27) then begin escape_flag := true; exit; end;
 if key > char(31) then begin
  crt_lines[xpos,ypos] := key;
  form1.Canvas.TextOut(xpos*xbits,ypos*ybits,crt_lines[xpos,ypos]);
 end;
 if key = char(12) then begin
  crt_clr;
  xpos := 1;
  ypos := 1;
  if form1.Off1.checked = false then begin
    form1.canvas.MoveTo(xpos*xbits,14+ypos*ybits);
    form1.canvas.LineTo(8 + xpos*xbits,14+ypos*ybits);
  end;  
  exit;
 end;
 if key = char(17) then begin
  form1.off1.checked := true;
  exit;
 end;
 if key = char(18) then begin
  form1.off1.checked := false;
  exit;
 end;
 if key = char(19) then begin
  form1.on2.checked := false;
  exit;
 end;
 if key = char(20) then begin
  form1.on2.checked := true;
  exit;
 end;
 if key = char(10) then begin
  form1.canvas.Pen.Color:=clwhite;
  form1.canvas.MoveTo(xpos*xbits,14+ypos*ybits);
  form1.canvas.LineTo(8 + xpos*xbits,14+ypos*ybits);
  form1.canvas.Pen.Color:=clblack;

  ypos := ypos + 1;
  if crlf = 2 then xpos := 1;
  if ypos > 25 then shift_lines_up;
  end else xpos := xpos+1;
 if key = char(13) then begin
  form1.canvas.Pen.Color:=clwhite;
  form1.canvas.MoveTo((xpos-1)*xbits,14+ypos*ybits);
  form1.canvas.LineTo(8 + (xpos-1)*xbits,14+ypos*ybits);
  form1.canvas.Pen.Color:=clblack;
  xpos := 1;
  if crlf = 1 then begin
   ypos := ypos + 1;
   if ypos > 25 then shift_lines_up;
  end;
 end;
 if key = char(8) then begin
  xpos := xpos - 2;
  if xpos < 1 then xpos := 1;
 end;
 if xpos > 80 then begin
  xpos := 1;
  ypos := ypos+1;
  if ypos > 25 then shift_lines_up;
 end;
 if (form1.off1.checked = false) then begin
  form1.canvas.MoveTo(xpos*xbits,14+ypos*ybits);
  form1.canvas.LineTo(8 + xpos*xbits,14+ypos*ybits);
 end;
end;

procedure getit();
var
  ic, i : integer;
begin
 for i := 0 to 256 do begin
   ic := readcombyte;
   if ic = 256 then exit;
    if file_flag = true then begin
     try
      write(F2,char(ic));
     except
      file_flag := false;
      closefile(F2);
      form1.file2.Checked := false;
     end;
    end;
   process_char(char(ic));
 end;
end;

procedure TForm1.Delay1Click(Sender: TObject);
begin
 form1.delay1.checked := form1.delay1.Checked xor true;
end;

procedure TForm1.Close2Click(Sender: TObject);
begin
 file_flag := false;
 CloseFile(F2);
 form1.file2.Checked := false;
end;


procedure TForm1.Timer1Timer(Sender: TObject);
begin
 getit;
end;

procedure TForm1.OpenClick(Sender: TObject);
begin
 opencomport( portnum);
end;

procedure TForm1.form1keypress(Sender: TObject; var Key: Char);
begin
 transmitcombyte(ord(key));
end;

procedure TForm1.N12001Click(Sender: TObject);
begin
 form1.N12001.Checked := true;
 baudrate := 1200;
end;


procedure TForm1.N48001Click(Sender: TObject);
begin
 form1.N48001.Checked := true;
 baudrate := 4800;

end;

procedure TForm1.N96001Click(Sender: TObject);
begin
 form1.N96001.Checked := true;
 baudrate := 9600;

end;

procedure TForm1.N192001Click(Sender: TObject);
begin
 form1.N192001.Checked := true;
 baudrate := 19200;

end;

procedure TForm1.N1152001Click(Sender: TObject);
begin
 form1.N1152001.Checked := true;
 baudrate := 115200;

end;

procedure TForm1.N234001Click(Sender: TObject);
begin
 form1.N234001.Checked := true;
 baudrate := 230400;

end;

procedure TForm1.N468001Click(Sender: TObject);
begin
 form1.N468001.Checked := true;
 baudrate := 460800;

end;

procedure TForm1.Open1Click(Sender: TObject);
begin
 opencomport( portnum);
end;

procedure TForm1.Close1Click(Sender: TObject);
begin
 closecomport;
 form1.Shape1.Brush.Color := clred;
end;

procedure TForm1.Com71Click(Sender: TObject);
begin
 portnum := 7;
 com71.Checked := true;

end;

procedure TForm1.Com11Click(Sender: TObject);
begin
 portnum := 1;
 com11.Checked := true;
end;

procedure TForm1.Com21Click(Sender: TObject);
begin
 portnum := 2;
 com21.Checked := true;

end;

procedure TForm1.Com31Click(Sender: TObject);
begin
 portnum := 3;
 com31.Checked := true;

end;

procedure TForm1.Com41Click(Sender: TObject);
begin
 portnum := 4;
 com41.Checked := true;

end;

procedure TForm1.Com51Click(Sender: TObject);
begin
 portnum := 5;
 com51.Checked := true;

end;

procedure TForm1.Com61Click(Sender: TObject);
begin
 portnum := 6;
 com61.Checked := true;

end;

procedure TForm1.Com81Click(Sender: TObject);
begin
 portnum := 8;
 com81.Checked := true;

end;

procedure TForm1.Com91Click(Sender: TObject);
begin
 portnum := 9;
 com91.Checked := true;

end;

procedure TForm1.Com101Click(Sender: TObject);
begin
 portnum := 10;
 com101.Checked := true;

end;

procedure TForm1.Com111Click(Sender: TObject);
begin
 portnum := 11;
 com111.Checked := true;

end;

procedure TForm1.Com121Click(Sender: TObject);
begin
 portnum := 12;
 com121.Checked := true;

end;

procedure TForm1.Com131Click(Sender: TObject);
begin
 portnum := 13;
 com131.Checked := true;

end;

procedure TForm1.Com141Click(Sender: TObject);
begin
 portnum := 14;
 com141.Checked := true;

end;

procedure TForm1.Com151Click(Sender: TObject);
begin
 portnum := 15;
 com151.Checked := true;

end;

procedure TForm1.Com161Click(Sender: TObject);
begin
 portnum := 16;
 com161.Checked := true;

end;

procedure TForm1.Com171Click(Sender: TObject);
begin
 portnum := 17;
 com171.Checked := true;

end;

procedure TForm1.Com181Click(Sender: TObject);
begin
 portnum := 18;
 com181.Checked := true;

end;

procedure TForm1.Com191Click(Sender: TObject);
begin
 portnum := 19;
 com191.Checked := true;

end;

procedure TForm1.Com201Click(Sender: TObject);
begin
 portnum := 20;
 com201.Checked := true;

end;

procedure TForm1.N24001Click(Sender: TObject);
begin
 form1.N24001.Checked := true;
 baudrate := 2400;
end;

procedure TForm1.Timer2Timer(Sender: TObject);
begin
 if refresh_flag = true then begin
  refresh_flag := false;
  crt_refresh;
 end;
end;

procedure TForm1.On1Click(Sender: TObject);
begin
 crlf := 0;
 on1.Checked := true;
end;

procedure TForm1.LFonCr1Click(Sender: TObject);
begin
 crlf := 1;
 LFonCr1.Checked := true;
end;

procedure TForm1.CRonLF1Click(Sender: TObject);
begin
 crlf := 2;
 cronlf1.checked := true;
end;

procedure TForm1.On2Click(Sender: TObject);
begin
  form1.on2.Checked := form1.on2.checked xor true;
end;

procedure TForm1.Form1paint(Sender: TObject);
begin
  if form1.ccd1.checked then exit;
  refresh_flag := true;
end;

procedure TForm1.Off1Click(Sender: TObject);
begin
 form1.off1.Checked := form1.off1.checked xor true;
end;

procedure TForm1.File1Click(Sender: TObject);
var
  fn : string;
begin
  SaveDialog1.DefaultExt := '*.txt';
 if OpenDialog1.Execute then begin
  SaveDialog1.Filename := OpenDialog1.FileName;
  try
    fn := savedialog1.filename;
    AssignFile(F, fn);
    ReSet(F);
    form1.timer3.enabled := true;
  except
    form1.timer3.enabled := false;
    CloseFile(F);
  end;
 end;
end;

procedure TForm1.File2Click(Sender: TObject);
var
  fs : string;
begin
  form1.OpenDialog1.DefaultExt := '*.txt';
  form1.SaveDialog1.DefaultExt := '*.txt';
  form1.SaveDialog1.FilterIndex := 1;
  form1.SaveDialog1.Filename := ChangeFileExt(form1.SaveDialog1.FileName, '.txt');
  if form1.SaveDialog1.Execute then begin
    form1.SaveDialog1.Filename := ChangeFileExt(form1.SaveDialog1.FileName, '.txt');
    fs := form1.SaveDialog1.Filename;
   try
    AssignFile(F2, fs);
    Rewrite(F2);
    file_flag := true;
    form1.file2.Checked := true;
   except
    file_flag := false;
    CloseFile(F2);
    form1.file2.Checked := false;
   end; 
  end;
end;

procedure TForm1.Timer3Timer(Sender: TObject);
var
 i : integer;
 ch : char;
begin
  for i := 1 to 10 do begin
    if not eof(F) then begin
     Read(F, Ch);
     if form1.delay1.checked then sleep(3);
     transmitcombyte(ord(ch));
     if ((ord(ch) = 13) or (ord(ch) = 10) or (ch = ':')) and form1.delay1.checked then sleep(35);
    end else begin
     CloseFile(F);
     timer3.Enabled := false;
     exit;
    end;
  end;  
end;

procedure TForm1.CCD1Click(Sender: TObject);
begin
 form1.ccd1.Checked := form1.ccd1.checked xor true;
end;

procedure TForm1.N9216001Click(Sender: TObject);
begin
form1.N9216001.Checked := true;
 baudrate := 921600;
end;

procedure TForm1.N7bits1Click(Sender: TObject);
begin
form1.N7bits1.checked := form1.N7bits1.Checked xor true;
end;

procedure TForm1.Com211Click(Sender: TObject);
begin
 portnum := 21;
 com211.Checked := true;

end;

procedure TForm1.Com221Click(Sender: TObject);
begin
 portnum := 22;
 com221.Checked := true;

end;

procedure TForm1.Com231Click(Sender: TObject);
begin
 portnum := 23;
 com231.Checked := true;

end;

procedure TForm1.Com241Click(Sender: TObject);
begin
 portnum := 24;
 com241.Checked := true;

end;

procedure TForm1.Com251Click(Sender: TObject);
begin
 portnum := 25;
 com251.Checked := true;

end;

procedure TForm1.Com261Click(Sender: TObject);
begin
 portnum := 26;
 com261.Checked := true;

end;

procedure TForm1.Com271Click(Sender: TObject);
begin
 portnum := 27;
 com271.Checked := true;

end;

procedure TForm1.Com281Click(Sender: TObject);
begin
 portnum := 28;
 com281.Checked := true;

end;

procedure TForm1.Com291Click(Sender: TObject);
begin
 portnum := 29;
 com291.Checked := true;

end;

procedure TForm1.Com301Click(Sender: TObject);
begin
 portnum := 30;
 com301.Checked := true;

end;



procedure TForm1.Send3Click(Sender: TObject);
var
i : integer;
begin
 i := 0;
 if form1.b01.checked then i := i + 1;
 if form1.b11.checked then i := i + 2;
 if form1.b21.checked then i := i + 4;
 if form1.b31.checked then i := i + 8;
 if form1.b41.checked then i := i + 16;
 if form1.b51.checked then i := i + 32;
 if form1.b61.checked then i := i + 64;
 if form1.b71.checked then i := i + 128;
 transmitcombyte(i);
end;

procedure TForm1.B01Click(Sender: TObject);
begin
 b01.Checked := b01.checked xor true;
end;

procedure TForm1.B11Click(Sender: TObject);
begin
  b11.Checked := b11.checked xor true;
end;

procedure TForm1.B21Click(Sender: TObject);
begin
   b21.Checked := b21.checked xor true;
end;

procedure TForm1.B31Click(Sender: TObject);
begin
 b31.Checked := b31.checked xor true;
end;

procedure TForm1.B41Click(Sender: TObject);
begin
 b41.Checked := b41.checked xor true;
end;

procedure TForm1.B51Click(Sender: TObject);
begin
 b51.Checked := b51.checked xor true;
end;

procedure TForm1.B61Click(Sender: TObject);
begin
 b61.Checked := b61.checked xor true;
end;

procedure TForm1.B71Click(Sender: TObject);
begin
 b71.Checked := b71.checked xor true;
end;

procedure TForm1.N18432001Click(Sender: TObject);
begin
 form1.N18432001.Checked := true;
 baudrate := 2000000;
end;

procedure TForm1.N5250001Click(Sender: TObject);
begin
 form1.N5250001.Checked := true;
 baudrate := 525000;
end;

procedure TForm1.N3001Click(Sender: TObject);
begin
 form1.N3001.Checked := true;
 baudrate := 600;
end;

end.
