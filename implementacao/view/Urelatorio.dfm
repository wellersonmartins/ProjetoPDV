object Form_rel: TForm_rel
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio'
  ClientHeight = 180
  ClientWidth = 209
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 209
    Height = 180
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 128
    ExplicitTop = 56
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 16
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Gerar'
      TabOrder = 1
      OnClick = Button1Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 16
      Width = 171
      Height = 105
      Caption = 'Filtro'
      TabOrder = 0
      object Label1: TLabel
        Left = 15
        Top = 16
        Width = 54
        Height = 13
        Caption = 'Data Inicio'
      end
      object Label2: TLabel
        Left = 15
        Top = 57
        Width = 48
        Height = 13
        Caption = 'Data Final'
      end
      object edData1: TMaskEdit
        Left = 15
        Top = 33
        Width = 120
        Height = 21
        EditMask = '!99/99/0000;1;_'
        MaxLength = 10
        TabOrder = 0
        Text = '  /  /    '
      end
    end
    object Sair: TButton
      Left = 112
      Top = 136
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 2
      OnClick = SairClick
    end
  end
  object edData2: TMaskEdit
    Tag = 1
    Left = 31
    Top = 92
    Width = 121
    Height = 21
    EditMask = '!99/99/0000;1;_'
    MaxLength = 10
    TabOrder = 1
    Text = '  /  /    '
  end
  object frxRelVendas: TfrxReport
    Version = '4.13.2'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44248.507254270840000000
    ReportOptions.LastChange = 44248.705333634260000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 328
    Top = 24
    Datasets = <
      item
        DataSet = frxDados
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object ReportTitle1: TfrxReportTitle
        Height = 49.133890000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
      end
      object PageHeader1: TfrxPageHeader
        Height = 18.897650000000000000
        Top = 90.708720000000000000
        Width = 718.110700000000000000
        object Memo2: TfrxMemoView
          Align = baLeft
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftTop, ftBottom]
          Memo.UTF8W = (
            'C'#243'digo')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 56.692950000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Descri'#231#227'o')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Align = baRight
          Left = 514.016080000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Qtd')
          ParentFont = False
        end
        object Memo5: TfrxMemoView
          Align = baRight
          Left = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor Unit'#225'rio')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          Frame.Typ = [ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            'Valor Total')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        Height = 22.677180000000000000
        Top = 215.433210000000000000
        Width = 718.110700000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 22.677180000000000000
        Top = 170.078850000000000000
        Width = 718.110700000000000000
        DataSet = frxDados
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object mVlrTot: TfrxMemoView
          Align = baRight
          Left = 642.520100000000000000
          Top = 0.220470000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'vlrtot'
          DataSet = frxDados
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."vlrtot"]')
        end
        object Mcodigo: TfrxMemoView
          Align = baLeft
          Width = 56.692950000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Codigo'
          DataSet = frxDados
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Codigo"]')
        end
        object mDescricao: TfrxMemoView
          Align = baLeft
          Left = 56.692950000000000000
          Width = 457.323130000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Descricao'
          DataSet = frxDados
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Descricao"]')
        end
        object mQtd: TfrxMemoView
          Align = baRight
          Left = 514.016080000000000000
          Width = 34.015770000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'Unidade'
          DataSet = frxDados
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."Unidade"]')
        end
        object mVlrUni: TfrxMemoView
          Align = baRight
          Left = 548.031850000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          ShowHint = False
          DataField = 'vlrunit'
          DataSet = frxDados
          DataSetName = 'frxDBDataset1'
          Memo.UTF8W = (
            '[frxDBDataset1."vlrunit"]')
        end
      end
      object Memo7: TfrxMemoView
        Align = baCenter
        Left = 292.913575000000000000
        Top = 16.897650000000000000
        Width = 132.283550000000000000
        Height = 18.897650000000000000
        ShowHint = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        Memo.UTF8W = (
          'Relat'#243'rio de Vendas')
        ParentFont = False
      end
    end
  end
  object frxDados: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = dsDados
    BCDToCurrency = False
    Left = 368
    Top = 24
  end
  object cdDados: TClientDataSet
    Aggregates = <>
    Params = <>
    Left = 376
    Top = 88
    object cdDadosCodigo: TIntegerField
      FieldName = 'Codigo'
    end
    object cdDadosDescricao: TStringField
      FieldName = 'Descricao'
    end
    object cdDadosUnidade: TIntegerField
      FieldName = 'Unidade'
    end
    object cdDadosvlrunit: TStringField
      FieldName = 'vlrunit'
    end
    object cdDadosvlrtot: TStringField
      FieldName = 'vlrtot'
    end
  end
  object dsDados: TDataSource
    DataSet = cdDados
    Left = 328
    Top = 80
  end
end
