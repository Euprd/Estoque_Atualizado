object DM: TDM
  OldCreateOrder = False
  Height = 171
  Width = 510
  object conexao: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\Guilherme\Documents\GitHub\Estoque\EXE\BANCO\E' +
        'STOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'Protocol=TCPIP'
      'Server=localhost'
      'Port=3050'
      'CharacterSet=WIN1252'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Transaction = transacao
    Left = 32
    Top = 32
  end
  object transacao: TFDTransaction
    Connection = conexao
    Left = 104
    Top = 32
  end
  object FDPhysFBDriverLink1: TFDPhysFBDriverLink
    Left = 200
    Top = 32
  end
end
