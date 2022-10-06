unit untparimpar;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    edtInicio: TEdit;
    edtFim: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    lsbPares: TListBox;
    lsbÍmpares: TListBox;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var inicio, Fim,i: integer;
begin
    inicio := StrToInt(edtinicio.Text);
    Fim := StrToInt(edtFim.Text);
    for I := inicio to Fim do
    begin
      if i mod 2 = 0 then
        lsbPares.Items.Add (IntToStr(i))
      else
        lsbÍmpares.Items.Add(IntToStr(i))
    end;


end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
edtInicio.Clear;
edtFim.Clear;
lsbPares.Clear;
lsbÍmpares.Clear;
end;

end.
