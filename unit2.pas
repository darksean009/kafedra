unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils,  mysql55conn, mysql50conn, sqldb, db, FileUtil,
  Forms, Controls, Graphics, Dialogs, DBGrids, DbCtrls, StdCtrls, ExtCtrls;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Button10: TButton;
    Button11: TButton;
    Button12: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    DBGrid3: TDBGrid;
    DBGrid4: TDBGrid;
    DBGroupBox1: TDBGroupBox;
    DBNavigator1: TDBNavigator;
    DBNavigator2: TDBNavigator;
    DBNavigator3: TDBNavigator;
    DBNavigator4: TDBNavigator;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    GroupBox6: TGroupBox;
    GroupBox7: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    MySQL50Connection1: TMySQL50Connection;
    MySQL55Connection1: TMySQL55Connection;
    SQLQuery1: TSQLQuery;
    SQLQuery2: TSQLQuery;
    SQLQuery3: TSQLQuery;
    SQLQuery4: TSQLQuery;
    SQLTransaction1: TSQLTransaction;
    SQLTransaction2: TSQLTransaction;
    SQLTransaction3: TSQLTransaction;
    SQLTransaction4: TSQLTransaction;
    procedure Button10Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
  private
    { private declarations }
  public
    { public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
begin

  SQLQuery1.ApplyUpdates;
  SQLTransaction1.Commit;
  SQLQuery1.Active:=true;

end;

procedure TForm2.Button10Click(Sender: TObject);
begin
  SQLQuery3.Close;
  SQLQuery3.sql.Clear;
  SQLQuery3.SQL.Add('select * from post;');
  SQLQuery3.Active:=true;
end;

procedure TForm2.Button11Click(Sender: TObject);
begin
  SqlQuery4.close;
  sqlQuery4.SQL.Clear;
  SQLQuery4.SQL.Add('select s.surname, s.name, s.patronymic, d.Payment+p.Payment as "Salary" from sotrudnik s join degree d on s.academicdegree=d.id join post p on s.post=p.id where s.surname="'+edit4.text+'";');
  SQLQuery4.Active:=true;
end;

procedure TForm2.Button12Click(Sender: TObject);
begin
  SqlQuery4.close;
  sqlQuery4.SQL.Clear;
  SQLQuery4.SQL.Add('select s.surname, s.name, s.patronymic, d.Payment+p.Payment as "Salary" from sotrudnik s join degree d on s.academicdegree=d.id join post p on s.post=p.id;');
  SQLQuery4.Active:=true;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  SQLQuery2.ApplyUpdates;
  SQLTransaction2.Commit;
  SQLQuery2.Active:=true;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  SQLQuery3.ApplyUpdates;
  SQLTransaction3.Commit;
  SQLQuery3.Active:=true;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
  SQLQuery4.ApplyUpdates;
  SQLTransaction4.Commit;
  SQLQuery4.Active:=true;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
  SqlQuery1.close;
  sqlQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from sotrudnik where surname='+'"'+edit1.text+'";');
  SQLQuery1.Active:=true;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
  SqlQuery1.close;
  sqlQuery1.SQL.Clear;
  SQLQuery1.SQL.Add('select * from sotrudnik;');
  SQLQuery1.Active:=true;
end;

procedure TForm2.Button7Click(Sender: TObject);
begin
  SQLQuery2.Close;
  SQLQuery2.SQL.Clear;
  SQLQuery2.sql.add('select * from degree where name='+'"'+edit2.text+'";');
  SQLQuery2.Active:=true;
end;

procedure TForm2.Button8Click(Sender: TObject);
begin
  SqlQuery2.close;
  sqlQuery2.SQL.Clear;
  SQLQuery2.SQL.Add('select * from degree;');
  SQLQuery2.Active:=true;
end;

procedure TForm2.Button9Click(Sender: TObject);
begin
  SQLQuery3.Close;
  SQLQuery3.SQL.Clear;
  SQLQuery3.sql.add('select * from post where name='+'"'+edit3.text+'";');
  SQLQuery3.Active:=true;
end;

end.

