object TFCliente: TTFCliente
  Left = 0
  Top = 0
  Caption = 'TFCliente'
  ClientHeight = 331
  ClientWidth = 614
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 292
    Width = 614
    Height = 39
    Align = alBottom
    TabOrder = 0
    ExplicitLeft = 106
    ExplicitTop = 253
    ExplicitWidth = 482
    object btnSair: TButton
      Left = 534
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 253
    Width = 614
    Height = 39
    Align = alBottom
    BorderWidth = 2
    Color = clGradientInactiveCaption
    ParentBackground = False
    TabOrder = 1
    ExplicitTop = 228
    ExplicitWidth = 588
    object btnCancelCli: TButton
      Tag = 4
      Left = 425
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Cancelar'
      TabOrder = 4
      OnClick = btnCancelCliClick
    end
    object btnDelCli: TButton
      Tag = 3
      Left = 344
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Excluir'
      TabOrder = 3
    end
    object btnAltCli: TButton
      Tag = 2
      Left = 261
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Alterar'
      TabOrder = 2
    end
    object btnNewCli: TButton
      Left = 97
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Novo'
      TabOrder = 0
      OnClick = btnNewCliClick
    end
    object btnInserir: TButton
      Tag = 1
      Left = 178
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Inserir'
      TabOrder = 1
      OnClick = btnInserirClick
    end
  end
  object Panel4: TPanel
    AlignWithMargins = True
    Left = 3
    Top = 3
    Width = 608
    Height = 247
    Align = alClient
    BevelKind = bkSoft
    BorderWidth = 2
    Color = clWhite
    ParentBackground = False
    TabOrder = 2
    ExplicitLeft = -179
    ExplicitTop = -54
    ExplicitWidth = 626
    ExplicitHeight = 255
    object Label3: TLabel
      Left = 114
      Top = 67
      Width = 37
      Height = 13
      Caption = 'C'#243'digo:'
    end
    object Label5: TLabel
      Left = 101
      Top = 94
      Width = 50
      Height = 13
      Caption = 'Descri'#231#227'o:'
    end
    object txtCodCli: TEdit
      Left = 154
      Top = 64
      Width = 55
      Height = 21
      Enabled = False
      TabOrder = 0
    end
    object txtDescCli: TEdit
      Left = 154
      Top = 91
      Width = 340
      Height = 21
      CharCase = ecUpperCase
      TabOrder = 1
    end
  end
end
