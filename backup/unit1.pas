unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, StdCtrls;

type

  { TForm1 }

  TForm1 = class(TForm)
    btnOpen: TButton;
    lvList: TListView;
    dlgOpen: TOpenDialog;
    Memo1: TMemo;
    procedure btnOpenClick(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.btnOpenClick(Sender: TObject);
var
  iCnt    : Integer;
  pItem   : TListItem;
begin
  if dlgOpen.Execute then
     begin
       Memo1.Lines.Add(dlgOpen.FileName);
       lvList.Items.BeginUpdate;
       for iCnt := 0 to 99 do
           begin
             pItem := lvList.Items.Add;
           end;
       lvList.Items.EndUpdate;
     end;
end;

end.

