unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit2: TEdit;
    Button4: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  a : string;

implementation

uses
  Unit4;

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
  DataModule4.ZKategori.SQL.Clear;
  Datamodule4.ZKategori.SQL.Add('insert into kategori values(null,"'+Edit1.Text+'")');
  DataModule4.ZKategori.ExecSQL;

  DataModule4.ZKategori.SQL.Clear;
  DataModule4.ZKategori.SQL.Add('select * from kategori');
  DataModule4.ZKategori.Open;
  ShowMessage('Data Berhasil Disimpan');
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  DataModule4.ZKategori.SQL.Clear;
  Datamodule4.ZKategori.SQL.Add('update kategori set name="'+Edit1.Text+'" where id="'+a+'"');
  DataModule4.ZKategori.ExecSQL;

  DataModule4.ZKategori.SQL.Clear;
  DataModule4.ZKategori.SQL.Add('select * from kategori');
  DataModule4.ZKategori.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.Button3Click(Sender: TObject);
begin
  DataModule4.ZKategori.SQL.Clear;
  Datamodule4.ZKategori.SQL.Add('delete from kategori where id="'+a+'"');
  DataModule4.ZKategori.ExecSQL;

  DataModule4.ZKategori.SQL.Clear;
  DataModule4.ZKategori.SQL.Add('select * from kategori');
  DataModule4.ZKategori.Open;
  ShowMessage('Data Berhasil Diupdate');
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  Edit1.Text := DataModule4.ZKategori.Fields[1].AsString;
  a:= DataModule4.ZKategori.Fields[0].AsString;
end;

end.
