unit uClienteDao;

interface
uses
   uconexao, Data.DB, FireDAC.Comp.Client, uClienteModel, uFuncoes;

type
  TClienteDao = class
    public
      function GerarId: Integer;
      procedure CarregarCliente(ClienteList: TClienteList; Pesquisa: string);
      function Inserir(oCliente: TCliente; out sErro: String):Boolean;
      function Alterar(oCliente: TCliente; out sErro: String):Boolean;
      function Excluir(oCliente: TCliente; out sErro: String):Boolean;
  end;

implementation

uses
  System.SysUtils;

{ TClienteDao }

function TClienteDao.Alterar(oCliente: TCliente;out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('update cadastroCliente set             ');
      Con.Query.SQL.Add('  codcliente        =:cli_codigo       ');
      Con.Query.SQL.Add(' ,nome              =:cli_descricao    ');
      Con.Query.SQL.Add('  where codcliente  =:cli_codigo       ');

      Con.Query.ParamByName('cli_codigo').AsInteger      := oCliente.ID;
      Con.Query.ParamByName('cli_descricao').AsString    := oCliente.Descricao;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao alterar Cliente: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

procedure TClienteDao.CarregarCliente(ClienteList: TClienteList; Pesquisa: string);
var Con : iniciaConexao;
var i: Integer;
var P: TCliente;

begin
   Con := iniciaConexao.Create;
   try
     Con.conexao;

     Con.Query.SQL.Clear;
     Con.Query.SQL.Add('select * from cadastroCliente ');

     if StrToIntDef(Pesquisa, 0) = 0 then
     begin
       COn.Query.SQL.Add('where lower(cli_descricao) like lower(:cli_descricao)') ;
       COn.Query.ParamByName('cli_descricao').AsString := Pesquisa + '%';
     end
     else
     begin
       COn.Query.SQL.Add('where cli_codigo = :cli_codigo') ;
       COn.Query.ParamByName('cli_codigo').AsInteger := StrToInt(Pesquisa);
     end;
     Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
     Con.Query.Open;

     ClienteList.Clear;

     for I := 0 to Con.Query.RecordCount - 1 do
     begin
        P:= TCliente.Create;

        P.ID          := Con.Query.FieldByName('cli_codigo').AsInteger;
        P.Descricao   := Con.Query.FieldByName('cli_descricao').AsString;

        ClienteList.Add(P);
        Con.Query.Next;
     end;
   finally
     con.Destroy;
   end;
end;

function TClienteDao.Excluir(oCliente: TCliente;out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('Delete from cadastroCliente     ');
      Con.Query.SQL.Add('  where cli_codigo =:cli_codigo ');

      Con.Query.ParamByName('cli_codigo').AsInteger := oCliente.ID;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao excluir Cliente: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

function TClienteDao.GerarId: Integer;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('select max(cli_codigo) + 1 as seq from cadastroCliente');
      Con.Query.Open;
      Result := Con.Query.FieldByName('seq').AsInteger;
   finally
     con.Destroy;
   end;
end;

function TClienteDao.Inserir(oCliente: TCliente; out sErro: String): Boolean;
var Con : iniciaConexao;
begin
   Con := iniciaConexao.Create;
   try
      Con.conexao;

      Con.Query.SQL.Clear;
      Con.Query.SQL.Add('Insert into cadastroCliente');
      Con.Query.SQL.Add('     ( cli_codigo         ');
      Con.Query.SQL.Add('      ,cli_descricao )    ');

      Con.Query.ParamByName('cli_codigo').AsInteger      := oCliente.ID;
      Con.Query.ParamByName('cli_descricao').AsString    := oCliente.Descricao;

      try
        Con.Query.SQL.SaveToFile('C:\Temp\teste.txt');
        Con.Query.ExecSQL;
        Result := True;
      except on E: Exception do
        begin
          sErro:= 'Erro ao inserir Cliente: ' + #13 + E.Message;
          Result := False;
        end;
      end;
   finally
     con.Destroy;
   end;
end;

end.
