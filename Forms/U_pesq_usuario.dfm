inherited Frm_Pesq_usuario: TFrm_Pesq_usuario
  Caption = 'PESQUISA DE USU'#193'RIOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    ExplicitWidth = 1127
    inherited cb_chave_pesquisa: TComboBox
      OnChange = cb_chave_pesquisaChange
    end
    inherited bt_pesquisa: TBitBtn
      OnClick = bt_pesquisaClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_USUARIO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'TIPO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end>
  end
  inherited Panel2: TPanel
    ExplicitWidth = 1127
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT ID_USUARIO,'
      'NOME,'
      'TIPO,'
      'CADASTRO'
      'FROM USUARIO'
      'ORDER BY ID_USUARIO')
    object Q_pesq_padraoID_USUARIO: TIntegerField
      FieldName = 'ID_USUARIO'
      Origin = 'ID_USUARIO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPO'
      Required = True
      Size = 30
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
  end
end
