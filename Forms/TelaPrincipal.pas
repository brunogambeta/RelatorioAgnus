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
    DTHoraInicial: TDateTimePicker;
    Label6: TLabel;
    Label7: TLabel;
    DTHoraFinal: TDateTimePicker;
    CheckBoxFiltrarHora: TCheckBox;
    queryDadosProdutosIDFormaPagamento: TIntegerField;
    queryDadosProdutosCodigoProduto: TLargeintField;
    queryDadosProdutosQuantidade: TBCDField;
    queryDadosProdutosNomeProduto: TStringField;
    queryDadosProdutosValorCobrado: TBCDField;
    queryDadosProdutosNomeFormaPagamento: TStringField;
    queryDadosProdutosValorUnitario: TBCDField;
    queryDadosProdutosNomeOperacao: TStringField;
    queryDadosProdutosNomeBandeira: TStringField;
    queryDadosProdutosid: TLargeintField;
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
  horaInicial := timetostr(DTHoraInicial.Time);
  horaFinal := timetostr(DTHoraFinal.Time);


  with queryDadosProdutos.SQL do
  begin

    queryDadosProdutos.SQL.Add('select');
    queryDadosProdutos.SQL.Add('f1.IdFormaPagamento IDFormaPagamento,');
    queryDadosProdutos.SQL.Add('p1.id CodigoProduto ,');
    queryDadosProdutos.SQL.Add('v2.quantidade Quantidade,');
    queryDadosProdutos.SQL.Add('p1.Nome NomeProduto,');
    queryDadosProdutos.SQL.Add('v2.ValorTotal ValorCobrado,');
    queryDadosProdutos.SQL.Add('t3.Nome as NomeOperacao,');
    queryDadosProdutos.SQL.Add('b1.Nome as NomeBandeira,');
    queryDadosProdutos.SQL.Add('t3.id,');
    queryDadosProdutos.SQL.Add('(select top 1 Nome from FormaPagamento where id = f1.IdFormaPagamento ) as NomeFormaPagamento,');
    queryDadosProdutos.SQL.Add('(select top 1 ValorUnitario from Produto where id = p1.Id ) ValorUnitario');
    queryDadosProdutos.SQL.Add('from FormaPagamentoCupomFiscal f1');
    queryDadosProdutos.SQL.Add('left join DocumentoFiscal d1 on (d1.Id = f1.IdDocumentoFiscal)');
    queryDadosProdutos.SQL.Add('left join VendaCupomFiscal v1 on (v1.IdDocumentoFiscal = d1.id)');
    queryDadosProdutos.SQL.Add('left join Venda v3 on (v3.id = v1.idVenda)');
    queryDadosProdutos.SQL.Add('left join VendaItem v2 on (v2.IdVenda = v1.IdVenda)');
    queryDadosProdutos.SQL.Add('left join Produto p1 on (p1.Id = v2.IdProduto)');
    queryDadosProdutos.SQL.Add('left join TransacaoCartaoFormaPagamentoCupomFiscal t1 on (t1.IdFormaPagamentoCupomFiscal = f1.Id)');
    queryDadosProdutos.SQL.Add('left join TransacaoCartao t2 on (t2.Id = t1.IdTransacaoCartao)');
    queryDadosProdutos.SQL.Add('left join OperacaoCartao o1 on (o1.Id = t2.IdOperacaoCartao)');
    queryDadosProdutos.SQL.Add('left join TipoOperacaoCartao t3 on (t3.Id = o1.IdTipoOperacaoCartao)');
    queryDadosProdutos.SQL.Add('left join BandeiraCartao b1 on (o1.IdBandeiraCartao = b1.id)');
    if (CheckBoxFiltrarHora.Checked = false) then
    begin
      queryDadosProdutos.SQL.Add('where cast(d1.data as date) between ''' +
        dataInicial + ''' and ''' + dataFinal + '''');
    end
    else
      begin
        queryDadosProdutos.SQL.Add('where cast(d1.data+d1.Hora as datetime2) between '''+dataInicial+' '+horaInicial+'.000'' and '''+dataFinal+' '+horaFinal+'.000''');
      end;
    queryDadosProdutos.SQL.Add('and d1.Tipo = ''' + tipoCupom + '''');
    queryDadosProdutos.SQL.Add('and d1.Cancelado = 0 ');
    queryDadosProdutos.SQL.Add('and v2.Pago = 1');

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
    queryDadosProdutos.SQL.Add('group by');
    queryDadosProdutos.SQL.Add('f1.IdFormaPagamento,');
    queryDadosProdutos.SQL.Add('p1.Nome,');
    queryDadosProdutos.SQL.Add('p1.id,');
    queryDadosProdutos.SQL.Add('v2.id,');
    queryDadosProdutos.SQL.Add('v2.quantidade,');
    queryDadosProdutos.SQL.Add('v2.ValorTotal,');
    queryDadosProdutos.SQL.Add('v2.valorUnitario,');
    queryDadosProdutos.SQL.Add('t3.Nome,');
    queryDadosProdutos.SQL.Add('b1.Nome,');
    queryDadosProdutos.SQL.Add('b1.id,');
    queryDadosProdutos.SQL.Add('t3.id');
    queryDadosProdutos.SQL.Add('order by');
    queryDadosProdutos.SQL.Add('f1.IdFormaPagamento,');
    queryDadosProdutos.SQL.Add('b1.id,');
    queryDadosProdutos.SQL.Add('t3.id,');
    queryDadosProdutos.SQL.Add('p1.id');

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
