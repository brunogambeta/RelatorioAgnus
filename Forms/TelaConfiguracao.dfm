object frmTelaConfiguracao: TfrmTelaConfiguracao
  Left = 0
  Top = 0
  Caption = 'Configura'#231#245'es'
  ClientHeight = 267
  ClientWidth = 635
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 0
    Width = 625
    Height = 273
    TabOrder = 0
    object Label1: TLabel
      Left = 16
      Top = 16
      Width = 105
      Height = 13
      Caption = 'Nome / IP do Servidor'
    end
    object Label2: TLabel
      Left = 16
      Top = 43
      Width = 87
      Height = 13
      Caption = 'Usu'#225'rio de acesso'
    end
    object Label3: TLabel
      Left = 16
      Top = 70
      Width = 81
      Height = 13
      Caption = 'Senha de acesso'
    end
    object Label4: TLabel
      Left = 16
      Top = 97
      Width = 76
      Height = 13
      Caption = 'Banco de dados'
    end
    object btTestarConexao: TButton
      Left = 144
      Top = 149
      Width = 83
      Height = 25
      Caption = 'Testar Conex'#227'o'
      TabOrder = 0
      OnClick = btTestarConexaoClick
    end
    object editNomeServidor: TEdit
      Left = 144
      Top = 13
      Width = 225
      Height = 21
      TabOrder = 1
    end
    object editUsuarioConexao: TEdit
      Left = 144
      Top = 40
      Width = 225
      Height = 21
      TabOrder = 2
    end
    object editSenhaAcesso: TEdit
      Left = 144
      Top = 67
      Width = 225
      Height = 21
      TabOrder = 3
    end
    object editBancoDados: TEdit
      Left = 144
      Top = 94
      Width = 225
      Height = 21
      TabOrder = 4
    end
    object btsalvarConexao: TButton
      Left = 264
      Top = 149
      Width = 75
      Height = 25
      Caption = 'Salvar Conex'#227'o'
      TabOrder = 5
    end
  end
end
