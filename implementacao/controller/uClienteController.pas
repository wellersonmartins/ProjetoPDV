unit uClienteController;

interface
uses
  uClienteModel, uClienteDao, System.SysUtils;

type
  TClienteController = class
    private
      FCliente: TCliente;
      FClienteDAO: TClienteDao;
      FClienteList: TClienteList;

      procedure SetCliente(const Value: TCliente);
      procedure SetClienteDAO(const Value: TClienteDao);
    procedure SetClienteList(const Value: TClienteList);

    public
      constructor Create;
      destructor Destroy; override;

      function Inserir(var sErro: string): Boolean;
      function Alterar(var sErro: string): Boolean;
      function Excluir(var sErro: string): Boolean;
      function GerarId: Integer;
      procedure CarregarCliente(Pesquisa: String);

      property Cliente : TCliente read FCliente write SetCliente;
      property ClienteDAO : TClienteDao read FClienteDAO write SetClienteDAO;

      property ClienteList: TClienteList read FClienteList write SetClienteList;
  end;

implementation

{ TClienteController }

function TClienteController.Alterar(var sErro: string): Boolean;
begin
   Result:= FClienteDAO.Alterar(FCliente, sErro);
end;

function TClienteController.GerarId: Integer;
begin
  Result:= FClienteDAO.GerarId;
end;

procedure TClienteController.CarregarCliente(Pesquisa: String);
begin
  FClienteDAO.CarregarCliente(FClienteList, Pesquisa);
end;

constructor TClienteController.Create;
begin
  FClienteDAO := TClienteDao.Create;
  FCliente    := TCliente.Create;
  FClienteList:= TClienteList.Create;
end;

destructor TClienteController.Destroy;
begin
  FreeAndNil(FClienteDAO);
  FreeAndNil(FCliente);
  FreeAndNil(FClienteList);
  inherited;
end;

function TClienteController.Excluir(var sErro: string): Boolean;
begin
  Result:= FClienteDAO.Excluir(FCliente, sErro);
end;

function TClienteController.Inserir(var sErro: string): Boolean;
begin
  if FCliente.Descricao = EmptyStr then
  begin
    raise EArgumentException.Create('Nome precisa ser preenchido.');
    Result := False
  end
  else
  Result:= FClienteDAO.Inserir(FCliente, sErro);
end;

procedure TClienteController.SetCliente(const Value: TCliente);
begin
  FCliente := Value;
end;

procedure TClienteController.SetClienteDAO(const Value: TClienteDao);
begin
  FClienteDAO := Value;
end;

procedure TClienteController.SetClienteList(const Value: TClienteList);
begin
  FClienteList := Value;
end;

end.
