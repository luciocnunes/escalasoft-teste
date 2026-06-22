object frmCliente: TfrmCliente
  Left = 0
  Top = 0
  Caption = 'Clientes'
  ClientHeight = 441
  ClientWidth = 624
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object LabelBoasVindas: TLabel
    Left = 200
    Top = 24
    Width = 154
    Height = 25
    Caption = 'Conta de Clientes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 40
    Top = 72
    Width = 544
    Height = 337
    TabOrder = 0
    object DBNavigator1: TDBNavigator
      Left = 1
      Top = 1
      Width = 542
      Height = 25
      DataSource = DMPrincipal.DSCliente
      Align = alTop
      TabOrder = 0
      ExplicitWidth = 423
    end
    object DBGrid1: TDBGrid
      Left = 1
      Top = 26
      Width = 542
      Height = 310
      Align = alClient
      DataSource = DMPrincipal.DSCliente
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -12
      TitleFont.Name = 'Segoe UI'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'id'
          Title.Caption = 'id Conta'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 73
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Nome'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 340
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'saldo'
          Title.Caption = 'Saldo'
          Title.Font.Charset = DEFAULT_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -16
          Title.Font.Name = 'Segoe UI'
          Title.Font.Style = [fsBold]
          Width = 91
          Visible = True
        end>
    end
  end
end
