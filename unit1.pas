unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,  sqldb, db, FileUtil, Forms, Controls,
  Graphics, Dialogs, Menus, Unit2, Unit3;

type

  { TForm1 }

  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.MenuItem1Click(Sender: TObject);
begin
     form2.show;
end;

procedure TForm1.MenuItem2Click(Sender: TObject);
begin
  form3.show;
end;

end.

