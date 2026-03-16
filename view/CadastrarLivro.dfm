object frmCadastrarLivro: TfrmCadastrarLivro
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Cadastro de Livros'
  ClientHeight = 440
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
  object pnlCadastrarLivroPrincipal: TPanel
    AlignWithMargins = True
    Left = 10
    Top = 59
    Width = 531
    Height = 371
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
    TabOrder = 0
    ExplicitTop = 64
    ExplicitWidth = 515
    object lblTitulo_CadastrarLivros: TLabel
      Left = 16
      Top = 16
      Width = 45
      Height = 20
      Caption = 'T'#237'tulo:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblAutor_CadastrarLivros: TLabel
      Left = 16
      Top = 64
      Width = 46
      Height = 20
      Caption = 'Autor:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblEditora_CadastrarLivros: TLabel
      Left = 16
      Top = 105
      Width = 54
      Height = 20
      Caption = 'Editora:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQntddTotal_CadastrarLivros: TLabel
      Left = 16
      Top = 185
      Width = 124
      Height = 20
      Caption = 'Quantidade Total:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblQuantidadeDisponivel: TLabel
      Left = 16
      Top = 233
      Width = 162
      Height = 20
      Caption = 'Quantidade Dispon'#237'vel:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblISBN_CadastrarLivros: TLabel
      Left = 16
      Top = 281
      Width = 39
      Height = 20
      Caption = 'ISBN:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object shpConfirmar_CadastrarLivros: TShape
      Left = 319
      Top = 337
      Width = 74
      Height = 28
      Brush.Color = 7819013
      Shape = stRoundRect
    end
    object sbtnConfirmar_CadastrarLivros: TSpeedButton
      Left = 319
      Top = 336
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
      Top = 337
      Width = 74
      Height = 28
      Brush.Color = clMedGray
      Shape = stRoundRect
    end
    object sbtnCancelar_CadastrarLivros: TSpeedButton
      Left = 407
      Top = 336
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
    object lblCategorial_CadastrarLivros: TLabel
      Left = 16
      Top = 144
      Width = 71
      Height = 20
      Caption = 'Categoria:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object edtTitulo_CadastrarLivros: TEdit
      Left = 185
      Top = 13
      Width = 296
      Height = 28
      TabOrder = 0
    end
    object edtAutor_CadastrarLivros: TEdit
      Left = 185
      Top = 61
      Width = 296
      Height = 28
      TabOrder = 1
    end
    object edtEditora_CadastrarLivros: TEdit
      Left = 185
      Top = 102
      Width = 296
      Height = 28
      TabOrder = 2
    end
    object edtISBN_CadastrarLivros: TEdit
      Left = 185
      Top = 278
      Width = 296
      Height = 28
      TabOrder = 3
    end
    object edtCategoria_CadastrarLivros: TEdit
      Left = 185
      Top = 141
      Width = 296
      Height = 28
      TabOrder = 4
    end
    object edtQntddTotal_CadastrarLivros: TNumberBox
      Left = 185
      Top = 182
      Width = 121
      Height = 28
      TabOrder = 5
    end
    object edtQntddDisponivel_CadastrarLivros: TNumberBox
      Left = 185
      Top = 230
      Width = 121
      Height = 28
      TabOrder = 6
    end
  end
  object pnlCadastrarLivroNome: TPanel
    Left = 0
    Top = 0
    Width = 551
    Height = 53
    Align = alTop
    Color = 12551227
    ParentBackground = False
    TabOrder = 1
    ExplicitWidth = 535
    object lblCadastrarLivro: TLabel
      AlignWithMargins = True
      Left = 4
      Top = 9
      Width = 543
      Height = 40
      Margins.Top = 8
      Align = alClient
      Alignment = taCenter
      Caption = 'CADASTRAR LIVRO'
      Color = 12813883
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clInfoBk
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      ExplicitWidth = 181
      ExplicitHeight = 28
    end
  end
end
