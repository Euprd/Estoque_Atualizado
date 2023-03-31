inherited Frm_pesq_produto: TFrm_pesq_produto
  Caption = 'PESQUISA DE PRODUTOS'
  PixelsPerInch = 96
  TextHeight = 13
  inherited Panel1: TPanel
    inherited cb_chave_pesquisa: TComboBox
      Left = 21
      Top = 38
      Items.Strings = (
        'C'#211'DIGO'
        'DESCRI'#199#195'O'
        'CADASTRO'
        'PER'#205'ODO'
        'TODOS'
        'FORNECEDOR')
      ExplicitLeft = 21
      ExplicitTop = 38
    end
    inherited bt_Transferir: TBitBtn
      OnClick = bt_TransferirClick
    end
  end
  inherited DBGrid1: TDBGrid
    DataSource = ds_pesq_padrao
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_PRODUTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'PRODUTO_DESCRICAO'
        Width = 300
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_CUSTO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'VL_VENDA'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ESTOQUE_MIN'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'UNIDADE'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'CADASTRO'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ID_FORNECEDOR'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'NOME'
        Width = 300
        Visible = True
      end>
  end
  inherited Q_pesq_padrao: TFDQuery
    SQL.Strings = (
      'SELECT A.ID_PRODUTO,'
      '       A.PRODUTO_DESCRICAO,'
      '       A.VL_CUSTO,'
      '       A.VL_VENDA,'
      '       A.ESTOQUE,'
      '       A.ESTOQUE_MIN,'
      '       A.UNIDADE,'
      '       A.CADASTRO,'
      '       A.ID_FORNECEDOR,'
      '       B.NOME'
      'FROM PRODUTO A'
      'INNER JOIN FORNECEDOR B ON B.ID_FORNECEDOR=A.ID_FORNECEDOR')
    object Q_pesq_padraoID_PRODUTO: TIntegerField
      FieldName = 'ID_PRODUTO'
      Origin = 'ID_PRODUTO'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Q_pesq_padraoPRODUTO_DESCRICAO: TStringField
      FieldName = 'PRODUTO_DESCRICAO'
      Origin = 'PRODUTO_DESCRICAO'
      Required = True
      Size = 100
    end
    object Q_pesq_padraoVL_CUSTO: TFMTBCDField
      FieldName = 'VL_CUSTO'
      Origin = 'VL_CUSTO'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoVL_VENDA: TFMTBCDField
      FieldName = 'VL_VENDA'
      Origin = 'VL_VENDA'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoESTOQUE: TFMTBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ESTOQUE'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoESTOQUE_MIN: TFMTBCDField
      FieldName = 'ESTOQUE_MIN'
      Origin = 'ESTOQUE_MIN'
      Required = True
      Precision = 18
      Size = 2
    end
    object Q_pesq_padraoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADE'
      Size = 6
    end
    object Q_pesq_padraoCADASTRO: TDateField
      FieldName = 'CADASTRO'
      Origin = 'CADASTRO'
      Required = True
    end
    object Q_pesq_padraoID_FORNECEDOR: TIntegerField
      FieldName = 'ID_FORNECEDOR'
      Origin = 'ID_FORNECEDOR'
      Required = True
    end
    object Q_pesq_padraoNOME: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = []
      ReadOnly = True
      Size = 100
    end
  end
end
