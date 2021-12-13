unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Menus, Data.DB, Data.Win.ADODB, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF;

type
  TfrmTelaPrincipal = class(TForm)
    PanelTituloRelatorio: TPanel;
    label1: TLabel;
    PanelFiltros: TPanel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    dataInicialCalendar: TCalendarPicker;
    datafinalCalendar: TCalendarPicker;
    ComboBox1: TComboBox;
    PanelBotao: TPanel;
    btImprimir: TButton;
    Label5: TLabel;
    ComboBox2: TComboBox;
    conexaoBanco: TADOConnection;
    queryAgrupamento: TADOQuery;
    queryFormaPagamento: TADOQuery;
    queryDadosProdutos: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    frxReport1: TfrxReport;
    queryDadosProdutosIDVenda: TLargeintField;
    queryDadosProdutosIDDocumentoFiscal: TLargeintField;
    queryDadosProdutosIDProduto: TLargeintField;
    queryDadosProdutosIDFormaPagamento: TIntegerField;
    queryDadosProdutosNomeForma: TStringField;
    queryDadosProdutosnomeProduto: TStringField;
    queryDadosProdutosqtdProduto: TBCDField;
    queryDadosProdutosIDAgrupamento: TLargeintField;
    queryDadosProdutosvalorVenda: TBCDField;
    queryDadosProdutosValorUnitario: TBCDField;
    queryDadosProdutosnomeAgrupamento: TStringField;
    procedure Configuraes1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

uses TelaConfiguracao;



procedure TfrmTelaPrincipal.btImprimirClick(Sender: TObject);
var
dataInicial : string;
dataFinal : String;
nomeAgrupamento : String;
nomeFormaPagamento : String;

begin

  dataInicial:= datetostr(dataInicialCalendar.Date);
  dataFinal := datetostr(datafinalCalendar.Date);
  nomeAgrupamento := ComboBox1.Text;
  nomeFormaPagamento := ComboBox2.Text;
  conexaoBanco.Connected := true;
  queryDadosProdutos.Active := true;
  queryDadosProdutos.SQL.Clear;
  with queryDadosProdutos.SQL do
    begin

      Add ('select');
      Add ('v2.id IDVenda,d1.id IDDocumentoFiscal,p1.id IDProduto,f2.id IDFormaPagamento,f2.Nome NomeForma,');
      Add ('p1.Nome nomeProduto,v3.Quantidade qtdProduto, p1.IDAgrupamento IDAgrupamento,f1.Valor valorVenda, v3.ValorUnitario ValorUnitario ');
      Add ('from VendaCupomFiscal v1');
      Add ('left join Documentofiscal d1 on (d1.id = v1.IdDocumentoFiscal)');
      Add ('left join Venda v2 on (v2.Id = v1.IdVenda)');
      Add ('left join VendaItem v3 on (v3.IdVenda = v2.Id)  ');
      Add ('left join Produto p1 on (p1.Id = v3.IdProduto)');
      Add ('left join FormaPagamentoCupomFiscal f1 on (f1.IdDocumentoFiscal = d1.id)');
      Add ('left join FormaPagamento f2 on (f2.Id = f1.IdFormaPagamento) ');
      //Add ('where');
     // Add ('where cast(d1.data as date) between '+'2021-12-01'+' and '+'2021-12-01'+'');
     //Add ('d1.Tipo = '+'CF'+'');
      //Add ('and d1.Cancelado = :status');
      Add ('--and p1.IdAgrupamento = 11  ');
      Add ('--and f1.IdFormaPagamento = 1  ');
      Add ('group by  ');
      Add ('v2.Id,d1.id,p1.id, f2.id, p1.Nome,f2.Nome,v3.Quantidade , p1.IdAgrupamento ,F1.Valor, v3.ValorUnitario  ');
      Add ('order by  ');
      Add ('v2.Id  ');
    end;


    queryDadosProdutos.Open;



 //elatorioDadosProdutos.ShowReport(true);





end;

procedure TfrmTelaPrincipal.ComboBox1Change(Sender: TObject);
begin
  conexaoBanco.Connected := true;
  ComboBox1.Clear;
  queryAgrupamento.Active := true;
  queryAgrupamento.Close;
  queryAgrupamento.SQl.Clear;
  queryAgrupamento.SQl.Add('select * from agrupamento');
  queryAgrupamento.Open;

  if not queryAgrupamento.IsEmpty then
  begin
    queryAgrupamento.First;
    while NOT queryAgrupamento.Eof do
    begin
      ComboBox1.Items.AddObject(queryAgrupamento.FieldByName('Nome').AsString,
        TObject(0));
      queryAgrupamento.Next;
    end;

  end;
  ComboBox1.ItemIndex := 0;

end;

procedure TfrmTelaPrincipal.ComboBox2Change(Sender: TObject);
begin
  conexaoBanco.Connected := true;
  ComboBox2.Clear;
  queryFormaPagamento.Active := true;
  queryFormaPagamento.Close;
  queryFormaPagamento.SQl.Clear;
  queryFormaPagamento.SQl.Add('select * from formaPagamento');
  queryFormaPagamento.Open;

  if not queryFormaPagamento.IsEmpty then
  begin
    queryFormaPagamento.First;
    while NOT queryFormaPagamento.Eof do
    begin
      ComboBox2.Items.AddObject(queryFormaPagamento.FieldByName('Nome').AsString,
        TObject(0));
      queryFormaPagamento.Next;
    end;

  end;
  ComboBox2.ItemIndex := 0;
end;

procedure TfrmTelaPrincipal.Configuraes1Click(Sender: TObject);
begin
 frmTelaConfiguracao.ShowModal;
end;



procedure TfrmTelaPrincipal.FormCreate(Sender: TObject);
begin

ComboBox1Change(Self);
ComboBox2Change(Self);


end;

end.
