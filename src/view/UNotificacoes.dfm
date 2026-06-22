object frmNotificacao: TfrmNotificacao
  Left = 0
  Top = 0
  Caption = 'Notifica'#231#245'es'
  ClientHeight = 442
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  TextHeight = 15
  object LabelBoasVindas: TLabel
    Left = 264
    Top = 24
    Width = 109
    Height = 25
    Caption = 'Notifica'#231#245'es'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object mNotificacao: TMemo
    Left = 8
    Top = 65
    Width = 612
    Height = 337
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Consolas'
    Font.Style = []
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssBoth
    TabOrder = 0
    WordWrap = False
  end
  object btnApagar: TButton
    Left = 520
    Top = 408
    Width = 100
    Height = 25
    Caption = 'Apagar Registros'
    TabOrder = 1
    OnClick = btnApagarClick
  end
end
