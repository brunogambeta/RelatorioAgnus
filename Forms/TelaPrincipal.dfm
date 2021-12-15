object frmTelaPrincipal: TfrmTelaPrincipal
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = 'Relatorio Agnus'
  ClientHeight = 239
  ClientWidth = 569
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PrintScale = poNone
  Visible = True
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object PanelTituloRelatorio: TPanel
    Left = 0
    Top = 0
    Width = 569
    Height = 41
    TabOrder = 0
    object label1: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 561
      Height = 33
      Align = alClient
      Alignment = taCenter
      AutoSize = False
      BiDiMode = bdLeftToRight
      Caption = 'Relat'#243'rio de Produtos Faturados'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBiDiMode = False
      ParentFont = False
      Layout = tlCenter
      ExplicitWidth = 581
    end
  end
  object PanelFiltros: TPanel
    Left = 4
    Top = 40
    Width = 565
    Height = 161
    TabOrder = 1
    object Label2: TLabel
      Left = 98
      Top = 7
      Width = 79
      Height = 19
      Alignment = taRightJustify
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label3: TLabel
      Left = 107
      Top = 45
      Width = 70
      Height = 19
      Alignment = taRightJustify
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label4: TLabel
      Left = 80
      Top = 72
      Width = 97
      Height = 19
      Alignment = taRightJustify
      Caption = 'Agrupamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object Label5: TLabel
      Left = 48
      Top = 108
      Width = 129
      Height = 19
      Alignment = taRightJustify
      Caption = 'Forma Pagamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Layout = tlCenter
    end
    object dataInicialCalendar: TCalendarPicker
      Left = 183
      Top = 7
      Width = 226
      Height = 25
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe Print'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWhite
      Date = 44540.000000000000000000
      DisabledColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      HighlightColor = clBlack
      IsEmpty = False
      ParentFont = False
      TabOrder = 0
      TextHint = '__/__/____'
    end
    object datafinalCalendar: TCalendarPicker
      Left = 183
      Top = 38
      Width = 226
      Height = 25
      CalendarHeaderInfo.DaysOfWeekFont.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.DaysOfWeekFont.Color = clWindowText
      CalendarHeaderInfo.DaysOfWeekFont.Height = -13
      CalendarHeaderInfo.DaysOfWeekFont.Name = 'Segoe UI'
      CalendarHeaderInfo.DaysOfWeekFont.Style = []
      CalendarHeaderInfo.Font.Charset = DEFAULT_CHARSET
      CalendarHeaderInfo.Font.Color = clWindowText
      CalendarHeaderInfo.Font.Height = -20
      CalendarHeaderInfo.Font.Name = 'Segoe UI'
      CalendarHeaderInfo.Font.Style = []
      Color = clWindow
      Date = 44540.000000000000000000
      DisabledColor = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      HighlightColor = clBlack
      IsEmpty = False
      ParentFont = False
      TabOrder = 1
      TextHint = '__/__/____'
    end
    object ComboBox1: TComboBox
      Left = 183
      Top = 71
      Width = 226
      Height = 26
      AutoComplete = False
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      Items.Strings = (
        'TODOS OS AGRUPAMENTOS')
    end
    object ComboBox2: TComboBox
      Left = 183
      Top = 103
      Width = 226
      Height = 26
      AutoComplete = False
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'TODAS AS FORMAS')
    end
  end
  object PanelBotao: TPanel
    Left = 0
    Top = 200
    Width = 569
    Height = 41
    TabOrder = 2
    object btImprimir: TButton
      Left = 204
      Top = 0
      Width = 145
      Height = 32
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btImprimirClick
    end
  end
  object conexaoBanco: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=@H3xt0r;Persist Security Info=True;U' +
      'ser ID=sa;Data Source=AGNUS'
    LoginPrompt = False
    Left = 32
    Top = 8
  end
  object queryAgrupamento: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from agrupamento')
    Left = 36
    Top = 192
  end
  object queryFormaPagamento: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FormaPagamento')
    Left = 28
    Top = 56
  end
  object queryDadosProdutos: TADOQuery
    Active = True
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'v2.id IDVenda,d1.id IDDocumentoFiscal,p1.id IDProduto,f2.id IDFo' +
        'rmaPagamento,f2.Nome NomeForma,'
      
        'p1.Nome nomeProduto,v3.Quantidade qtdProduto, p1.IDAgrupamento I' +
        'DAgrupamento,f1.Valor valorVenda, v3.ValorUnitario ValorUnitario' +
        ',v3.ValorTotal,'
      'a1.Nome nomeAgrupamento, v4.IdCartaoConsumo'
      'from VendaCupomFiscal v1 '
      'left join Documentofiscal d1 on (d1.id = v1.IdDocumentoFiscal)'
      'left join Venda v2 on (v2.Id = v1.IdVenda)'
      'left join VendaItem v3 on (v3.IdVenda = v2.Id)'
      'left join Produto p1 on (p1.Id = v3.IdProduto)'
      'left join Agrupamento a1 on (a1.id = p1.idAgrupamento)'
      
        'left join FormaPagamentoCupomFiscal f1 on (f1.IdDocumentoFiscal ' +
        '= d1.id)'
      'left join FormaPagamento f2 on (f2.Id = f1.IdFormaPagamento)'
      'left join VendaCartaoConsumo v4 on (v4.idVenda = v2.Id)'
      
        'where cast(d1.data as date) between '#39'2021-12-01'#39' and '#39'2021-12-02' +
        #39
      'and d1.Tipo = '#39'CF'#39' '
      'and d1.Cancelado = 0'
      '--and p1.IdAgrupamento = 11'
      '--and f1.IdFormaPagamento = 1'
      'order by '
      'v2.id')
    Left = 400
    Top = 184
    object queryDadosProdutosIDVenda: TLargeintField
      FieldName = 'IDVenda'
    end
    object queryDadosProdutosIDDocumentoFiscal: TLargeintField
      FieldName = 'IDDocumentoFiscal'
    end
    object queryDadosProdutosIDProduto: TLargeintField
      FieldName = 'IDProduto'
    end
    object queryDadosProdutosIDFormaPagamento: TIntegerField
      FieldName = 'IDFormaPagamento'
    end
    object queryDadosProdutosNomeForma: TStringField
      FieldName = 'NomeForma'
      Size = 100
    end
    object queryDadosProdutosnomeProduto: TStringField
      FieldName = 'nomeProduto'
      Size = 100
    end
    object queryDadosProdutosqtdProduto: TBCDField
      FieldName = 'qtdProduto'
      Precision = 10
      Size = 3
    end
    object queryDadosProdutosIDAgrupamento: TLargeintField
      FieldName = 'IDAgrupamento'
    end
    object queryDadosProdutosvalorVenda: TBCDField
      FieldName = 'valorVenda'
      Precision = 10
      Size = 2
    end
    object queryDadosProdutosValorUnitario: TBCDField
      FieldName = 'ValorUnitario'
      Precision = 10
      Size = 2
    end
    object queryDadosProdutosValorTotal: TBCDField
      FieldName = 'ValorTotal'
      Precision = 10
      Size = 2
    end
    object queryDadosProdutosnomeAgrupamento: TStringField
      FieldName = 'nomeAgrupamento'
      Size = 100
    end
    object queryDadosProdutosIdCartaoConsumo: TLargeintField
      FieldName = 'IdCartaoConsumo'
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'IDVenda=IDVenda'
      'IDDocumentoFiscal=IDDocumentoFiscal'
      'IDProduto=IDProduto'
      'IDFormaPagamento=IDFormaPagamento'
      'NomeForma=NomeForma'
      'nomeProduto=nomeProduto'
      'qtdProduto=qtdProduto'
      'IDAgrupamento=IDAgrupamento'
      'valorVenda=valorVenda'
      'ValorUnitario=ValorUnitario'
      'ValorTotal=ValorTotal'
      'nomeAgrupamento=nomeAgrupamento'
      'IdCartaoConsumo=IdCartaoConsumo')
    DataSet = queryDadosProdutos
    BCDToCurrency = False
    Left = 500
    Top = 16
  end
  object frxPDFExport1: TfrxPDFExport
    UseFileCache = True
    ShowProgress = True
    OverwritePrompt = False
    DataOnly = False
    OpenAfterExport = False
    PrintOptimized = False
    Outline = False
    Background = False
    HTMLTags = True
    Quality = 95
    Transparency = False
    Author = 'FastReport'
    Subject = 'FastReport PDF export'
    ProtectionFlags = [ePrint, eModify, eCopy, eAnnot]
    HideToolbar = False
    HideMenubar = False
    HideWindowUI = False
    FitWindow = False
    CenterWindow = False
    PrintScaling = False
    PdfA = False
    Left = 500
    Top = 88
  end
  object RelatorioProdutosVendidos: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44541.944998946800000000
    ReportOptions.LastChange = 44545.004011041670000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 500
    Top = 160
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Orientation = poLandscape
      PaperWidth = 297.000000000000000000
      PaperHeight = 210.000000000000000000
      PaperSize = 10
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 204.094620000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        Stretched = True
        object frxDBDataset1IDProduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          DataField = 'IDProduto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."IDProduto"]')
          ParentFont = False
        end
        object frxDBDataset1nomeProduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 117.165430000000000000
          Width = 340.157700000000000000
          Height = 18.897650000000000000
          DataField = 'nomeProduto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."nomeProduto"]')
          ParentFont = False
        end
        object frxDBDataset1qtdProduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 461.102660000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          DataField = 'qtdProduto'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[frxDBDataset1."qtdProduto"]')
          ParentFont = False
        end
        object frxDBDataset1ValorUnitario: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'ValorUnitario'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ValorUnitario"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 710.551640000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'ValorTotal'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."ValorTotal"]')
          ParentFont = False
        end
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 52.913420000000000000
        Top = 128.504020000000000000
        Width = 1046.929810000000000000
        Condition = '<frxDBDataset1."IDDocumentoFiscal">'
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 49.133890000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Venda:')
          ParentFont = False
        end
        object frxDBDataset1IDVenda: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 60.472480000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'IDVenda'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."IDVenda"]')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 185.196970000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Cart'#227'o Consumo:')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 415.748300000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma de Pagamento:')
          ParentFont = False
        end
        object frxDBDataset1NomeForma: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 574.488560000000000000
          Width = 222.992270000000000000
          Height = 18.897650000000000000
          DataField = 'NomeForma'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."NomeForma"]')
        end
        object frxDBDataset1IdCartaoConsumo: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'IdCartaoConsumo'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."IdCartaoConsumo"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'C'#243'digo Produto:')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 113.385900000000000000
          Top = 26.456710000000000000
          Width = 196.535560000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          Memo.UTF8W = (
            'Descri'#231#227'o Produto')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 457.323130000000000000
          Top = 26.456710000000000000
          Width = 105.826840000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTD Vendida')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Top = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 706.772110000000000000
          Top = 26.456710000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Valor Cobrado')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Top = 40.133890000000000000
          Width = 1035.591220000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '---------------')
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 60.472480000000000000
        Top = 249.448980000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 31.000000000000000000
          Width = 1035.591220000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '---------------')
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Top = 18.000000000000000000
          Width = 151.181200000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total Faturado:')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 8.559060000000000000
          Top = 3.779530000000000000
          Width = 1035.591220000000000000
          Height = 11.338590000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '---------------')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 623.622450000000000000
          Top = 18.000000000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            'Total da Venda:')
          ParentFont = False
          VAlign = vaCenter
        end
        object frxDBDataset1valorVenda: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 744.567410000000000000
          Top = 18.000000000000000000
          Width = 90.708720000000000000
          Height = 18.897650000000000000
          DataField = 'valorVenda'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[frxDBDataset1."valorVenda"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object SysMemo1: TfrxSysMemoView
          AllowVectorExport = True
          Left = 464.882190000000000000
          Top = 18.000000000000000000
          Width = 102.047310000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<frxDBDataset1."qtdProduto">,MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        AllowSplit = True
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 3.779530000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos Vendidos X Forma de Pagamento')
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 29.015770000000000000
          Width = 1035.591220000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '----------------------------------------------------------------' +
              '---------------')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 370.393940000000000000
        Width = 1046.929810000000000000
        object SysMemo2: TfrxSysMemoView
          AllowVectorExport = True
          Left = 941.102970000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[PAGE#] de [TOTALPAGES#]')
          ParentFont = False
        end
      end
    end
  end
end
