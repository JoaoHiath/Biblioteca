object frmListaClientes: TfrmListaClientes
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object pnlControlesLivros: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 49
    Align = alTop
    TabOrder = 0
    object btnExcluir: TButton
      AlignWithMargins = True
      Left = 191
      Top = 11
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 0
    end
    object btnEditar: TButton
      AlignWithMargins = True
      Left = 101
      Top = 11
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Editar'
      TabOrder = 1
    end
    object btnAdicionar: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
  end
  object dbgdLivros: TDBGrid
    Left = 0
    Top = 47
    Width = 624
    Height = 394
    Align = alBottom
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -12
    TitleFont.Name = 'Segoe UI'
    TitleFont.Style = []
  end
end
