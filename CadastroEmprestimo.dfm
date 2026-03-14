object frmCadastroEmprestimo: TfrmCadastroEmprestimo
  Left = 0
  Top = 0
  Caption = 'Registrar emprestimo'
  ClientHeight = 441
  ClientWidth = 612
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
  object pnlCadastroEmprestimo: TPanel
    Left = 0
    Top = 0
    Width = 612
    Height = 393
    Align = alTop
    TabOrder = 0
    object lblInformacoesCliente: TLabel
      Left = 1
      Top = 1
      Width = 610
      Height = 28
      Align = alTop
      Alignment = taCenter
      Caption = 'Informa'#231#245'es do cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 198
    end
    object lblLivro: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 98
      Width = 500
      Height = 20
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Livro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 32
    end
    object Label1: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 34
      Width = 500
      Height = 20
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Cliente'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 46
    end
    object lblDataPrevistaDevolução: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 220
      Width = 597
      Height = 20
      Margins.Left = 10
      Align = alTop
      Caption = 'Devolver at'#233
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 84
    end
    object Label2: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 160
      Width = 597
      Height = 20
      Margins.Left = 10
      Align = alTop
      Caption = 'Data de empr'#233'stimo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 137
    end
    object cbxLivro: TComboBox
      AlignWithMargins = True
      Left = 11
      Top = 126
      Width = 400
      Height = 28
      Margins.Left = 10
      Margins.Right = 200
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Text = 'Selecione o livro'
    end
    object cbxCliente: TComboBox
      AlignWithMargins = True
      Left = 11
      Top = 62
      Width = 400
      Height = 28
      Margins.Left = 10
      Margins.Right = 200
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      Text = 'Selecione o cliente'
    end
    object dtpEmprestimoPrevisaoEntrega: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 246
      Width = 100
      Height = 28
      Margins.Left = 10
      Margins.Right = 500
      Align = alTop
      Date = 46095.000000000000000000
      Time = 0.546657175924337900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object dtpDataEmprestimo: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 186
      Width = 100
      Height = 28
      Margins.Left = 10
      Margins.Right = 500
      Align = alTop
      Date = 46095.000000000000000000
      Time = 0.546657175924337900
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
  end
  object pnlEscolhas: TPanel
    Left = 0
    Top = 399
    Width = 612
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object btnConfirmar: TButton
      AlignWithMargins = True
      Left = 532
      Top = 5
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Confirmar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = btnConfirmarClick
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 442
      Top = 5
      Width = 75
      Height = 27
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 5
      Margins.Bottom = 10
      Align = alRight
      Caption = 'Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ModalResult = 2
      ParentFont = False
      TabOrder = 1
    end
  end
end
