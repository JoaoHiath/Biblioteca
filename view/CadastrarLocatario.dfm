object frmCadastrarLocatario: TfrmCadastrarLocatario
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Locat'#225'rios'
  ClientHeight = 388
  ClientWidth = 551
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlCadastrarLocatarioPrincipal: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 111
    Width = 531
    Height = 262
    Margins.Left = 10
    Margins.Right = 10
    Margins.Bottom = 15
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    ExplicitTop = 72
    ExplicitWidth = 515
    object lblNome_CadastrarLocatario: TLabel
      Left = 16
      Top = 16
      Width = 47
      Height = 20
      Caption = 'Nome:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblCpf_CadastrarLocatario: TLabel
      Left = 16
      Top = 64
      Width = 30
      Height = 20
      Caption = 'CPF:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEmail_CadastrarLocatario: TLabel
      Left = 16
      Top = 115
      Width = 48
      Height = 20
      Caption = 'E-mail:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTelefone_CadastrarLocatario: TLabel
      Left = 16
      Top = 163
      Width = 64
      Height = 20
      Caption = 'Telefone:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object shpConfirmar_CadastrarLivros: TShape
      Left = 319
      Top = 211
      Width = 74
      Height = 28
      Brush.Color = 7819013
      Shape = stRoundRect
    end
    object sbtnConfirmar_CadastrarLivros: TSpeedButton
      Left = 319
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
      OnClick = sbtnConfirmar_CadastrarLivrosClick
    end
    object shpCancelar_CadastrarLivros: TShape
      Left = 407
      Top = 211
      Width = 74
      Height = 28
      Brush.Color = clMedGray
      Shape = stRoundRect
    end
    object sbtnCancelar_CadastrarLivros: TSpeedButton
      Left = 407
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
      OnClick = sbtnCancelar_CadastrarLivrosClick
    end
    object edtNome_CadastrarLocatario: TEdit
      Left = 185
      Top = 13
      Width = 296
      Height = 28
      TabOrder = 0
    end
    object edtEmail_CadastrarLocatario: TEdit
      Left = 185
      Top = 112
      Width = 296
      Height = 28
      TabOrder = 1
    end
    object edtCpf_CadastrarLocatario: TMaskEdit
      Left = 185
      Top = 61
      Width = 295
      Height = 28
      EditMask = '000.000.000-00;1;_'
      MaxLength = 14
      TabOrder = 2
      Text = '   .   .   -  '
    end
    object edtTelefone_CadastrarLocatario: TMaskEdit
      Left = 185
      Top = 160
      Width = 292
      Height = 28
      EditMask = '(00) 00000-0000;1;_'
      MaxLength = 15
      TabOrder = 3
      Text = '(  )      -    '
    end
  end
  object pnlCadastrarLocatarioNome: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 53
    Align = alTop
    Color = 12682555
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 535
    object lblCadastrarLocatario: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 9
      Width = 543
      Height = 40
      Margins.Top = 8
      Align = alClient
      Alignment = taCenter
      Caption = 'CADASTRAR LOCAT'#193'RIO'
      Color = 12945211
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 233
      ExplicitHeight = 28
    end
  end
end
