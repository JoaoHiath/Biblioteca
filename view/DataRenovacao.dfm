object frmRenovacao: TfrmRenovacao
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Renovar'
  ClientHeight = 122
  ClientWidth = 246
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  FormStyle = fsMDIChild
  Visible = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  TextHeight = 15
  object pnlDataRenovacao: TPanel
    Left = 0
    Top = 0
    Width = 246
    Height = 81
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 230
    object lblDataRenovacao: TLabel
      AlignWithMargins = True
      Left = 11
      Top = 4
      Width = 231
      Height = 20
      Margins.Left = 10
      Align = alTop
      Caption = 'Nova data de devolu'#231#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      ExplicitWidth = 163
    end
    object dtpRenovacao: TDateTimePicker
      AlignWithMargins = True
      Left = 11
      Top = 30
      Width = 184
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
      ExplicitWidth = 168
    end
  end
  object pnlControles: TPanel
    Left = 0
    Top = 81
    Width = 246
    Height = 40
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 230
    object btnConfirmar: TButton
      AlignWithMargins = True
      Left = 167
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Confirmar'
      TabOrder = 0
      OnClick = btnConfirmarClick
      ExplicitLeft = 151
    end
    object btnCancelar: TButton
      AlignWithMargins = True
      Left = 86
      Top = 4
      Width = 75
      Height = 32
      Align = alRight
      Caption = 'Cancelar'
      ModalResult = 2
      TabOrder = 1
      ExplicitLeft = 70
    end
  end
end
