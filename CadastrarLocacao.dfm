object frmCadastrarLocacao: TfrmCadastrarLocacao
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Cadastro de Loca'#231#227'o'
  ClientHeight = 333
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesktopCenter
  TextHeight = 15
  object pnlCadastrarLivroNome: TPanel
    Left = 0
    Top = 0
    Width = 535
    Height = 53
    Align = alTop
    Color = 12551227
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 533
    object lblCadastrarLocacao: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 9
      Width = 527
      Height = 40
      Margins.Top = 8
      Align = alClient
      Alignment = taCenter
      Caption = 'CADASTRAR LOCA'#199#195'O'
      Color = 12682555
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 216
      ExplicitHeight = 28
    end
  end
  object pnlCadastrarLocacaoPrincipal: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 68
    Width = 515
    Height = 255
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 10
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
    ExplicitTop = 60
    ExplicitWidth = 513
    object lblNome_CadastrarLocacao: TLabel
      Left = 16
      Top = 14
      Width = 51
      Height = 21
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblNomeLivro_CadastrarLocacao: TLabel
      Left = 16
      Top = 65
      Width = 42
      Height = 21
      Caption = 'Livro:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDtLocacao_CadastrarLocacao: TLabel
      Left = 16
      Top = 113
      Width = 122
      Height = 21
      Caption = 'Data da loca'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblDtDevolucao_CadastrarLocacao: TLabel
      Left = 16
      Top = 161
      Width = 147
      Height = 21
      Caption = 'Data da devolu'#231#227'o:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object shpRenovar_Locacoes: TShape
      Left = 335
      Top = 211
      Width = 74
      Height = 28
      Brush.Color = 7819013
      Shape = stRoundRect
    end
    object sbtnConfirmar_CadastrarLocacoes: TSpeedButton
      Left = 335
      Top = 211
      Width = 74
      Height = 29
      ParentCustomHint = False
      BiDiMode = bdLeftToRight
      Caption = 'Confirmar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clHighlightText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ParentBiDiMode = False
      ShowHint = False
    end
    object shoExcluir_Locacoes: TShape
      Left = 423
      Top = 211
      Width = 74
      Height = 28
      Brush.Color = clMedGray
      Shape = stRoundRect
    end
    object sbtnCancelar_CadastrarLocacoes: TSpeedButton
      Left = 423
      Top = 210
      Width = 74
      Height = 31
      Caption = 'Cancelar'
      Flat = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindow
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object cbxLocatario_CadastrarLocacao: TComboBox
      Left = 177
      Top = 11
      Width = 304
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object cbxLivro_CadastrarLocacao: TComboBox
      Left = 177
      Top = 62
      Width = 304
      Height = 29
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DateTimePicker1: TDateTimePicker
      Left = 177
      Top = 113
      Width = 186
      Height = 29
      Date = 46096.000000000000000000
      Time = 0.780507557872624600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DateTimePicker2: TDateTimePicker
      Left = 177
      Top = 161
      Width = 186
      Height = 29
      Date = 46096.000000000000000000
      Time = 0.780507557872624600
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
  end
end
