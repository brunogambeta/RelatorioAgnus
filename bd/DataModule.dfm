object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 249
  Width = 883
  object conexao: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Password=@H3xt0r;Persist Security Info=True;U' +
      'ser ID=sa;Data Source=AGNUS'
    Left = 40
    Top = 24
  end
  object query: TADOQuery
    Active = True
    Connection = conexao
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from configuracaoGeral')
    Left = 104
    Top = 24
    object queryVersao: TBytesField
      FieldName = 'Versao'
      ReadOnly = True
      Size = 8
    end
  end
end
