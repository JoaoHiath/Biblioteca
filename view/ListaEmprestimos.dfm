object frmListaEmprestimos: TfrmListaEmprestimos
  Left = 0
  Top = 0
  Caption = 'Lista de empr'#233'stimos'
  ClientHeight = 322
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  TextHeight = 15
  object panel: TPanel
    Left = 0
    Top = 59
    Width = 624
    Height = 45
    Align = alBottom
    TabOrder = 0
    object btnExcluir: TButton
      AlignWithMargins = True
      Left = 281
      Top = 11
      Width = 75
      Height = 23
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Excluir'
      TabOrder = 0
      OnClick = btnExcluirClick
    end
    object btnDevolver: TButton
      AlignWithMargins = True
      Left = 101
      Top = 11
      Width = 75
      Height = 23
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Devolver'
      TabOrder = 1
      OnClick = btnDevolverClick
    end
    object btnAdicionar: TButton
      AlignWithMargins = True
      Left = 11
      Top = 11
      Width = 75
      Height = 23
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Adicionar'
      TabOrder = 2
      OnClick = btnAdicionarClick
    end
    object btnRenovar: TButton
      AlignWithMargins = True
      Left = 191
      Top = 11
      Width = 75
      Height = 23
      Margins.Left = 10
      Margins.Top = 10
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alLeft
      Caption = 'Renovar'
      TabOrder = 3
      OnClick = btnRenovarClick
    end
  end
  object lstEmprestimos: TListBox
    Left = 0
    Top = 104
    Width = 624
    Height = 218
    Align = alBottom
    ItemHeight = 15
    TabOrder = 1
  end
  object pnlFiltro: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 57
    Align = alTop
    TabOrder = 2
    object lblLivroFiltro: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 4
      Width = 35
      Height = 49
      Align = alLeft
      Caption = 'Livro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 20
    end
    object lblSituação: TLabel
      AlignWithMargins = True
      Left = 169
      Top = 4
      Width = 60
      Height = 49
      Align = alLeft
      Caption = 'Situa'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitHeight = 20
    end
    object cbxLivroFiltro: TComboBox
      Left = 42
      Top = 1
      Width = 124
      Height = 23
      Margins.Left = 10
      Margins.Right = 450
      Align = alLeft
      TabOrder = 0
      Text = 'Selecione o livro'
      OnSelect = cbxLivroFiltroSelect
    end
    object rgpStatus: TRadioGroup
      Left = 232
      Top = 1
      Width = 185
      Height = 55
      Align = alLeft
      ItemIndex = 0
      Items.Strings = (
        'Emprestado'
        'Devolvido')
      TabOrder = 1
      OnClick = rgpStatusClick
    end
    object RadioButton1: TRadioButton
      Left = 456
      Top = 8
      Width = 113
      Height = 17
      Caption = 'RadioButton1'
      TabOrder = 2
    end
  end
end
