object frmCadastroLivro: TfrmCadastroLivro
  Left = 0
  Top = 0
  Caption = 'Livro'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlCadastroLivro: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 396
    Align = alTop
    TabOrder = 0
    object lblInformacoes: TLabel
      Left = 1
      Top = 1
      Width = 622
      Height = 28
      Align = alTop
      Alignment = taCenter
      Caption = 'Informa'#231#245'es do livro'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 180
    end
    object lblTitulo: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 34
      Width = 512
      Height = 20
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Caption = 'T'#237'tulo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 38
    end
    object lblCategoria: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 182
      Width = 512
      Height = 20
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 65
    end
    object lblISBN: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 330
      Width = 512
      Height = 20
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Caption = 'Identifica'#231#227'o ISBN '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 126
    end
    object gpnlInfo: TGridPanel
      Left = 1
      Top = 245
      Width = 622
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = lblQuantidadeDisponível
          Row = 0
        end
        item
          Column = 0
          Control = edtQuantidadeDisponivel
          Row = 1
        end
        item
          Column = 1
          Control = lblQuantidadeTotal
          Row = 0
        end
        item
          Column = 1
          Control = edtQuantidadeTotal
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 0
      object lblQuantidadeDisponível: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 5
        Width = 150
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Quantidade disponivel'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 20
      end
      object edtQuantidadeDisponivel: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 45
        Width = 80
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 28
      end
      object lblQuantidadeTotal: TLabel
        AlignWithMargins = True
        Left = 321
        Top = 5
        Width = 113
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Quantidade total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 20
      end
      object edtQuantidadeTotal: TEdit
        AlignWithMargins = True
        Left = 321
        Top = 45
        Width = 80
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 28
      end
    end
    object edtTitulo: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 64
      Width = 512
      Height = 28
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 100
      Margins.Bottom = 5
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object GridPanel1: TGridPanel
      Left = 1
      Top = 97
      Width = 622
      Height = 80
      Align = alTop
      BevelOuter = bvNone
      ColumnCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      ControlCollection = <
        item
          Column = 0
          Control = lblAutor
          Row = 0
        end
        item
          Column = 0
          Control = edtAutor
          Row = 1
        end
        item
          Column = 1
          Control = lblEditora
          Row = 0
        end
        item
          Column = 1
          Control = edtEditora
          Row = 1
        end>
      RowCollection = <
        item
          Value = 50.000000000000000000
        end
        item
          Value = 50.000000000000000000
        end>
      TabOrder = 2
      object lblAutor: TLabel
        AlignWithMargins = True
        Left = 10
        Top = 5
        Width = 37
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Autor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 20
      end
      object edtAutor: TEdit
        AlignWithMargins = True
        Left = 10
        Top = 45
        Width = 270
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        ExplicitHeight = 28
      end
      object lblEditora: TLabel
        AlignWithMargins = True
        Left = 321
        Top = 5
        Width = 48
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Caption = 'Editora'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        ExplicitHeight = 20
      end
      object edtEditora: TEdit
        AlignWithMargins = True
        Left = 321
        Top = 45
        Width = 272
        Height = 30
        Margins.Left = 10
        Margins.Top = 5
        Margins.Bottom = 5
        Align = alLeft
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        ExplicitHeight = 28
      end
    end
    object edtCategoria: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 212
      Width = 272
      Height = 28
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 340
      Margins.Bottom = 5
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object edtISBN: TEdit
      AlignWithMargins = True
      Left = 11
      Top = 360
      Width = 272
      Height = 28
      Margins.Left = 10
      Margins.Top = 5
      Margins.Right = 340
      Margins.Bottom = 5
      Align = alTop
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
  end
  object pnlEscolhas: TPanel
    Left = 0
    Top = 399
    Width = 624
    Height = 42
    Align = alBottom
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 1
    object btnConfirmar: TButton
      AlignWithMargins = True
      Left = 544
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
      Left = 454
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
      ParentFont = False
      TabOrder = 1
    end
  end
end
