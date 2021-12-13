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
      Left = 200
      Top = 7
      Width = 209
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
      Left = 200
      Top = 38
      Width = 209
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
      Left = 200
      Top = 71
      Width = 209
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
    end
    object ComboBox2: TComboBox
      Left = 200
      Top = 103
      Width = 209
      Height = 26
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
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
    Left = 32
    Top = 8
  end
  object queryAgrupamento: TADOQuery
    Active = True
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from agrupamento')
    Left = 36
    Top = 192
  end
  object queryFormaPagamento: TADOQuery
    Active = True
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from FormaPagamento')
    Left = 28
    Top = 64
  end
  object queryDadosProdutos: TADOQuery
    Connection = conexaoBanco
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select '
      
        'v2.id IDVenda,d1.id IDDocumentoFiscal,p1.id IDProduto,f2.id IDFo' +
        'rmaPagamento,f2.Nome NomeForma,'
      
        'p1.Nome nomeProduto,v3.Quantidade qtdProduto, p1.IDAgrupamento I' +
        'DAgrupamento,f1.Valor valorVenda, v3.ValorUnitario ValorUnitario' +
        ','
      'a1.Nome nomeAgrupamento'
      'from VendaCupomFiscal v1 '
      'left join Documentofiscal d1 on (d1.id = v1.IdDocumentoFiscal)'
      'left join Venda v2 on (v2.Id = v1.IdVenda)'
      'left join VendaItem v3 on (v3.IdVenda = v2.Id)'
      'left join Produto p1 on (p1.Id = v3.IdProduto)'
      'left join Agrupamento a1 on (a1.id = p1.idAgrupamento)'
      
        'left join FormaPagamentoCupomFiscal f1 on (f1.IdDocumentoFiscal ' +
        '= d1.id)'
      'left join FormaPagamento f2 on (f2.Id = f1.IdFormaPagamento)'
      
        'where cast(d1.data as date) between '#39'2021-12-01'#39' and '#39'2021-12-02' +
        #39
      'and d1.Tipo = '#39'CF'#39' '
      'and d1.Cancelado = 0'
      '--and p1.IdAgrupamento = 11'
      '--and f1.IdFormaPagamento = 1'
      'group by '
      
        'v2.Id,d1.id,p1.id, f2.id, p1.Nome,f2.Nome,v3.Quantidade , p1.IdA' +
        'grupamento ,F1.Valor, v3.ValorUnitario, a1.Nome'
      'order by '
      'v2.Id')
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
    object queryDadosProdutosnomeAgrupamento: TStringField
      FieldName = 'nomeAgrupamento'
      Size = 100
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
      'ValorUnitario=ValorUnitario')
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
  object frxReport1: TfrxReport
    Version = '6.2.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44541.944998946800000000
    ReportOptions.LastChange = 44541.958125138890000000
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
      Frame.Typ = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 1046.929810000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 347.716760000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Relat'#243'rio de Produtos Vendidos X Forma de Pagamento')
        end
        object Page: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 498.897960000000000000
          Width = 215.433210000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page]')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 64.252010000000000000
        Width = 1046.929810000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 1.118120000000000000
          Top = -0.220470000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'C'#243'digo Produto')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Nome Produto')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 353.141930000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Forma Pagamento')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 478.968770000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Quantidade')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 555.693260000000000000
          Width = 64.252010000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Un.')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 621.283860000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Memo.UTF8W = (
            'Valor Venda')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 1046.929810000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object frxDBDataset1nomeProduto: TfrxMemoView
          IndexTag = 1
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 377.953000000000000000
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
      end
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 147.401670000000000000
        Width = 1046.929810000000000000
        Condition = 'frxDBDataset1."IDFormaPagamento"'
        KeepTogether = True
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 2.118120000000000000
          Top = 1.000000000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            'Agrupamento')
        end
      end
    end
  end
end
