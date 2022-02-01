unit TelaPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.WinXCalendars,
  Vcl.StdCtrls, Vcl.Menus, Data.DB, Data.Win.ADODB, frxClass, frxDBSet,
  frxExportBaseDialog, frxExportPDF, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit, cxMaskEdit,
  cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox, Vcl.DBCtrls,
  Vcl.ComCtrls, Vcl.WinXPickers;

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
    ComboBox2: TComboBox;
    queryDadosProdutosIDProduto: TLargeintField;
    queryDadosProdutosNomeFormaPagamento: TStringField;
    queryDadosProdutosIDFormaPagamento: TIntegerField;
    queryDadosProdutosnomeProduto: TStringField;
    queryDadosProdutosIDAgrupamento: TLargeintField;
    queryDadosProdutosNome: TStringField;
    queryDadosProdutosvalorCobrado: TFMTBCDField;
    queryDadosProdutosquantidade: TFMTBCDField;
    queryDadosProdutosvalorUnitario: TBCDField;
    HoraInicial: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    HoraFinal: TDateTimePicker;
    CheckBox1: TCheckBox;
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
  horaInicial: String;
  horaFinal : String;
  idAgrupamento: Integer;
  idFormaPagamento: Integer;
  tipoCupom: String;
  statusItem: String;

begin
  if dataInicialCalendar.IsEmpty then
    begin
     Application.MessageBox('Data inicial invalida, verifique!', 'Aviso',
      mb_Ok + mb_IconExclamation);
      exit
    end;
    if datafinalCalendar.IsEmpty then
    begin
      Application.MessageBox('Data final invalida, verifique!', 'Aviso',
      mb_Ok + mb_IconExclamation);
      exit
    end;

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
    queryDadosProdutos.SQL.Add('p1.id IDProduto,');
    queryDadosProdutos.SQL.Add('(select top 1 Nome from FormaPagamento where id = f1.IdFormaPagamento) NomeFormaPagamento,');
    queryDadosProdutos.SQL.Add('(select top 1 Id from FormaPagamento where id = f1.IdFormaPagamento) IDFormaPagamento,');
    queryDadosProdutos.SQL.Add('p1.Nome nomeProduto,');
    queryDadosProdutos.SQL.Add('p1.IDAgrupamento IDAgrupamento,');
    queryDadosProdutos.SQL.Add('a1.Nome,');
    queryDadosProdutos.SQL.Add('sum(v3.ValorTotal) valorCobrado,');
    queryDadosProdutos.SQL.Add('sum(v3.quantidade) quantidade,');
    queryDadosProdutos.SQL.Add('(select top 1 ValorUnitario from Produto where id = p1.Id ) valorUnitario');
    queryDadosProdutos.SQL.Add('from VendaCupomFiscal v1');
    queryDadosProdutos.SQL.Add('left join Documentofiscal d1 on (d1.id = v1.IdDocumentoFiscal)');
    queryDadosProdutos.SQL.Add('left join Venda v2 on (v2.Id = v1.IdVenda)');
    queryDadosProdutos.SQL.Add('left join VendaItem v3 on (v3.IdVenda = v2.Id)');
    queryDadosProdutos.SQL.Add('left join Produto p1 on (p1.Id = v3.IdProduto)');
    queryDadosProdutos.SQL.Add('left join Agrupamento a1 on (a1.id = p1.idAgrupamento)');
    queryDadosProdutos.SQL.Add('left join FormaPagamentoCupomFiscal f1 on (f1.IdDocumentoFiscal = d1.id)');
    queryDadosProdutos.SQL.Add('left join FormaPagamento f2 on (f2.Id = f1.IdFormaPagamento)');
    queryDadosProdutos.SQL.Add('left join VendaCartaoConsumo v4 on (v4.idVenda = v2.Id)');
    queryDadosProdutos.SQL.Add('where cast(d1.data as date) between ''' +
      dataInicial + ''' and ''' + dataFinal + '''');
    queryDadosProdutos.SQL.Add('and d1.Hora between ''1900-01-01'+ horaInicial+'.000'' and ''1900-01-01'+horaFinal+'.000''');
    queryDadosProdutos.SQL.Add('and d1.Tipo = ''' + tipoCupom + '''');
    queryDadosProdutos.SQL.Add('and d1.Cancelado = 0 ');
    queryDadosProdutos.SQL.Add('and v3.ValorTotal > 0');

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
    queryDadosProdutos.SQL.Add('group by ');
    queryDadosProdutos.SQL.Add('p1.id,');
    queryDadosProdutos.SQL.Add('p1.Nome,');
    queryDadosProdutos.SQL.Add('p1.IdAgrupamento,');
    queryDadosProdutos.SQL.Add('v3.valorUnitario,');
    queryDadosProdutos.SQL.Add('f1.IdFormaPagamento,');
    queryDadosProdutos.SQL.Add('a1.Nome');
    queryDadosProdutos.SQL.Add('order by');
    queryDadosProdutos.SQL.Add('f1.IdFormaPagamento');

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
