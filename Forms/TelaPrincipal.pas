unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Menus, Data.DB, Data.Win.ADODB, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls;

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
    conexaoBanco: TADOConnection;
    queryAgrupamento: TADOQuery;
    queryFormaPagamento: TADOQuery;
    queryDadosProdutos: TADOQuery;
    frxDBDataset1: TfrxDBDataset;
    frxPDFExport1: TfrxPDFExport;
    RelatorioProdutosVendidos: TfrxReport;
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
    queryDadosProdutosValorTotal: TBCDField;
    queryDadosProdutosnomeAgrupamento: TStringField;
    queryDadosProdutosIdCartaoConsumo: TLargeintField;
    ComboBox2: TComboBox;
    procedure Configuraes1Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);

  private
    { Private declarations }
  public
  end;

var
  frmTelaPrincipal: TfrmTelaPrincipal;

implementation

{$R *.dfm}

uses TelaConfiguracao;

procedure TfrmTelaPrincipal.btImprimirClick(Sender: TObject);
var
  dataInicial: string;
  dataFinal: String;
  idAgrupamento: Integer;
  idFormaPagamento: Integer;
  tipoCupom: String;
  statusItem: String;

begin
  tipoCupom := 'CF';
  statusItem := '1';
  dataInicial := datetostr(dataInicialCalendar.Date);
  dataFinal := datetostr(datafinalCalendar.Date);
  idAgrupamento := Integer(ComboBox1.Items.Objects[ComboBox1.ItemIndex]);
  idFormaPagamento := Integer(ComboBox2.Items.Objects[ComboBox2.ItemIndex]);
  conexaoBanco.Connected := true;
  queryDadosProdutos.Active := true;
  queryDadosProdutos.SQL.Clear;
  with queryDadosProdutos.SQL do
  begin

    queryDadosProdutos.SQL.Add('select');
    queryDadosProdutos.SQL.Add
      ('v2.id IDVenda,d1.id IDDocumentoFiscal,p1.id IDProduto,f2.id IDFormaPagamento,f2.Nome NomeForma,');
    queryDadosProdutos.SQL.Add
      ('p1.Nome nomeProduto,v3.Quantidade qtdProduto, p1.IDAgrupamento IDAgrupamento,f1.Valor valorVenda, v3.ValorUnitario ValorUnitario,v3.ValorTotal,');
    queryDadosProdutos.SQL.Add('a1.Nome nomeAgrupamento, v4.IdCartaoConsumo');
    queryDadosProdutos.SQL.Add('from VendaCupomFiscal v1');
    queryDadosProdutos.SQL.Add
      ('left join Documentofiscal d1 on (d1.id = v1.IdDocumentoFiscal)');
    queryDadosProdutos.SQL.Add('left join Venda v2 on (v2.Id = v1.IdVenda)');
    queryDadosProdutos.SQL.Add
      ('left join VendaItem v3 on (v3.IdVenda = v2.Id)');
    queryDadosProdutos.SQL.Add
      ('left join Produto p1 on (p1.Id = v3.IdProduto)');
    queryDadosProdutos.SQL.Add
      ('left join Agrupamento a1 on (a1.id = p1.idAgrupamento)');
    queryDadosProdutos.SQL.Add
      ('left join FormaPagamentoCupomFiscal f1 on (f1.IdDocumentoFiscal = d1.id)');
    queryDadosProdutos.SQL.Add
      ('left join FormaPagamento f2 on (f2.Id = f1.IdFormaPagamento)');
    queryDadosProdutos.SQL.Add
      ('left join VendaCartaoConsumo v4 on (v4.idVenda = v2.Id)');
    queryDadosProdutos.SQL.Add('where cast(d1.data as date) between ''' +
      dataInicial + ''' and ''' + dataFinal + '''');
    queryDadosProdutos.SQL.Add('and d1.Tipo = ''' + tipoCupom + '''');
    queryDadosProdutos.SQL.Add('and v3.IdStatusItem = ''' + statusItem + '''');
    queryDadosProdutos.SQL.Add('and d1.Cancelado = 0');
    queryDadosProdutos.SQL.Add('and v3.idItemPai is null');
    if idAgrupamento.ToString <> '0' then
    begin
      queryDadosProdutos.SQL.Add('and p1.IdAgrupamento = ''' +
        idAgrupamento.ToString + '''');
    end
    else
    begin
      queryDadosProdutos.SQL.Add('');
    end;
    if idFormaPagamento.ToString <> '0' then
    begin
      queryDadosProdutos.SQL.Add('and f1.IdFormaPagamento = ''' +
        idFormaPagamento.ToString + '''');
    end
    else
    begin
      queryDadosProdutos.SQL.Add('');
    end;
    queryDadosProdutos.SQL.Add('order by');
    queryDadosProdutos.SQL.Add('v2.id');

  end;

  queryDadosProdutos.Open;
  RelatorioProdutosVendidos.ShowReport(true);

end;

procedure TfrmTelaPrincipal.ComboBox1Change(Sender: TObject);
begin
  conexaoBanco.Connected := true;
  queryAgrupamento.Active := true;
  queryAgrupamento.Close;
  queryAgrupamento.SQL.Clear;
  queryAgrupamento.SQL.Add('select * from agrupamento order by id');
  queryAgrupamento.Open;

  if not queryAgrupamento.IsEmpty then
  begin
    queryAgrupamento.First;
    while NOT queryAgrupamento.Eof do
    begin
      ComboBox1.Items.AddObject(queryAgrupamento.FieldByName('Nome').AsString,
        TObject(queryAgrupamento.FieldByName('id').AsInteger));
      queryAgrupamento.Next;
    end;

  end;
  ComboBox1.ItemIndex := 0;

end;

procedure TfrmTelaPrincipal.ComboBox2Change(Sender: TObject);
begin
  conexaoBanco.Connected := true;
  // ComboBox2.Clear;
  queryFormaPagamento.Active := true;
  queryFormaPagamento.Close;
  queryFormaPagamento.SQL.Clear;
  queryFormaPagamento.SQL.Add('select * from FormaPagamento order by id');
  queryFormaPagamento.Open;

  if not queryFormaPagamento.IsEmpty then
  begin
    queryFormaPagamento.First;
    while NOT queryFormaPagamento.Eof do
    begin
      ComboBox2.Items.AddObject(queryFormaPagamento.FieldByName('Nome')
        .AsString, TObject(queryFormaPagamento.FieldByName('id').AsInteger));
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
