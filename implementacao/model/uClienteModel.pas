unit uClienteModel;

interface

uses
  System.SysUtils,  System.Generics.Collections;

type
  TCliente =  class
   private
    FDescricao: string;
    FID: Integer;
    procedure SetDescricao(const Value: string);
    procedure SetID(const Value: Integer);

   public
     property ID: Integer read FID write SetID;
     property Descricao: string read FDescricao write SetDescricao;
   end;

type
  TClienteList = TList<TCliente>;


implementation


{ TCliente }

procedure TCliente.SetDescricao(const Value: string);
begin
  FDescricao := Value;
end;

procedure TCliente.SetID(const Value: Integer);
begin
  FID := Value;
end;

end.
