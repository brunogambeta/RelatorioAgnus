object Form1: TForm1
  Left = 0
  Top = 0
  AutoSize = True
  Caption = 'Relatorio Agnus'
  ClientHeight = 174
  ClientWidth = 516
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poDesktopCenter
  DesignSize = (
    516
    174)
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 510
    Height = 168
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    object Label1: TLabel
      Left = 17
      Top = 12
      Width = 105
      Height = 21
      Caption = 'Data Inicial'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 259
      Top = 12
      Width = 86
      Height = 21
      Caption = 'Data Final'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 54
      Width = 128
      Height = 21
      Caption = 'Agrupamento'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object CalendarPicker1: TCalendarPicker
      Left = 124
      Top = 1
      Width = 129
      Height = 32
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TextHint = 'select a date'
    end
    object CalendarPicker2: TCalendarPicker
      Left = 349
      Top = 1
      Width = 129
      Height = 32
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
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TextHint = 'select a date'
    end
    object ComboBox1: TComboBox
      Left = 148
      Top = 52
      Width = 330
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TextHint = 'Escolha o agrupamento'
    end
    object Button1: TButton
      Left = 205
      Top = 106
      Width = 121
      Height = 33
      Caption = 'Imprimir'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 451
    Top = 107
    object Configurao1: TMenuItem
      Caption = 'Configura;'#225'o'
    end
  end
  object ADOConnection1: TADOConnection
    Left = 371
    Top = 107
  end
end
