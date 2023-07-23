unit untUserFacade;

interface

uses System.DateUtils, System.JSON, RESTRequest4D, FireDac.Comp.Client, System.SysUtils;

type
  TUserFacade = class
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Login(pEmail, pPassword: string);
    procedure InsertAccount(pName, pEmail, pPassword: string);
  end;

const
  vBaseUrl = 'http://localhost:3000';

implementation

uses uSession;

function TUserFacade.Login(pEmail, pPassword: string): Boolean;
var
  vResponse: IResponse;
  vTable: TFDMemTable;
  vJson: TJSONObject;
begin
  Result := False;
  vTable := TFDMemTable.Create(vTable);
  vTable.FieldDefs.Clear;

  try
    vJson := TJSONObject.Create;
    vJson.AddPair('email', pEmail);
    vJson.AddPair('senha', pPassword);

    vResponse := TRequest.New.BaseURL(vBaseUrl)
//                .AddHeader('email', pEmail)       // forma de enviar dados via header !!!
//                .AddHeader('senha', pPassword)    // forma de enviar dados via header !!!
                .Resource('/usuarios/login')
                .AddBody(vJson)
                .BasicAuthentication('marcel', '123456')
                .Accept('application/json')
                .Post;
    if vResponse.StatusCode <> 200 then
      raise Exception.Create(vResponse.Content)
    else
    begin
      Result
      vJson := (vResponse.Content as TJsonObject);

      TSession.ID_USUARIO := StrToInt(vJson.GetValue('id_usuario').Value);
      TSession.NOME := vJson.GetValue('nome_usuario').Value;
      TSession.EMAIL := vJson.GetValue('email').Value;
    end;
  finally
    vJson.DisposeOf;
  end;
end;

procedure TUserFacade.InsertAccount(pName, pEmail, pPassword: string);
var
  vResponse: IResponse;
  vTable: TFDMemTable;
  vJson: TJSONObject;
begin
  vTable := TFDMemTable.Create(vTable);
  vTable.FieldDefs.Clear;

  try
    vJson := TJSONObject.Create;
    vJson.AddPair('nome', pName);
    vJson.AddPair('email', pEmail);
    vJson.AddPair('senha', pPassword);

    vResponse := TRequest.New.BaseURL(vBaseUrl)
                .Resource('/usuarios/login')
                .AddBody(vJson)
                .BasicAuthentication('marcel', '123456')
                .Accept('application/json')
                .Post;
    if vResponse.StatusCode <> 200 then
      raise Exception.Create(vResponse.Content)
    else
    begin
      vJson := (vResponse.Content as TJsonObject);
      if vJson.GetValue('login').Value = 'true'
    end;
  finally
    vJson.DisposeOf;
  end;
end;

end.
