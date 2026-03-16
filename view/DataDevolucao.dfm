object frmDevolucao: TfrmDevolucao
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Devolu'#231#227'o'
  ClientHeight = 121
  ClientWidth = 230
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
  object pnlDataDevolucao: TPanel
    Left = 0
    Top = 0
    Width = 230
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 214
    object lblDataDevolucao: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 215
      Height = 20
      Margins.Left = 10
      Align = alTop
      Caption = 'Data de devolu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 126
    end
    object dtpDevolucao: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 30
      Width = 168
      Height = 28
      Margins.Left = 10
      Margins.Right = 50
      Align = alTop
      Date = 46096.000000000000000000
      Time = 0.441292071758653000
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      ExplicitWidth = 152
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 81
    Width = 230
    Height = 40
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 214
    object btnConfirmar: TButton
      AlignWithMargins = True
      Left = 151
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
      ExplicitLeft = 135
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 70
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 54
    end
  end
end
