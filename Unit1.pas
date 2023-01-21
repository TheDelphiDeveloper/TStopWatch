unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.StdCtrls,
  FMX.Controls.Presentation, FMX.Edit, System.Diagnostics;

type
  TForm1 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.fmx}

procedure TForm1.Button1Click(Sender: TObject);
begin
  var Tempo : TStopWatch := TStopWatch.StartNew;

  //Processo 1
  Sleep(1000);

  //Processo 2
  Sleep(1200);

  //Processo 3
  Sleep(800);

  Tempo.Stop;

  Edit1.Text := Tempo.Elapsed.ToString;
end;

procedure TForm1.Button2Click(Sender: TObject);
var
  HoraInicial, HoraFinal: TDateTime;
  Tempo : TDateTime;
begin
  HoraInicial := Now;

  //Processo 1
  Sleep(1000);

  //Processo 2
  Sleep(1200);

  //Processo 3
  Sleep(800);

  HoraFinal := Now;


  Edit1.Text := FormatDateTime('hh:nn:ss.zz', HoraFinal-HoraInicial);
end;

end.
