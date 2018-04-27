object fmEdit: TForm
  Left = 10
  Top = 10
  HelpType = htKeyword
  HelpKeyword = 
    'AAAAAhQCEQVDTEFTUxEFVEZvcm0RBlBBUkFNUxQGEQhhdmlzaWJsZQURAXgGChEB' +
    'eQYKEQF3CANwEQFoCAH4EQxkb3VibGVidWZmZXIF'
  AlphaBlend = True
  AlphaBlendValue = 0
  BorderIcons = []
  BorderStyle = bsNone
  Caption = 'Edex'
  ClientHeight = 504
  ClientWidth = 880
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = fmMain.editorPopup
  Position = poDesigned
  ScreenSnap = True
  Visible = False
  DesignSize = (
    880
    504)
  PixelsPerInch = 96
  TextHeight = 13
  object caption: TLabel
    Left = 0
    Top = 0
    Width = 880
    Height = 24
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUBxEIYXZpc2libGUFEQhhZW5h' +
      'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
      'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
      'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
      'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoA////'
    AutoSize = False
    Caption = '    Edex Messenger'
    Color = 4012602
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object close: TLabel
    Left = 856
    Top = 0
    Width = 24
    Height = 24
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
      'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
      'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
      'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
      'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoA////EQF4' +
      'BggRAXkGCA=='
    Alignment = taCenter
    AutoSize = False
    Caption = 'x'
    Color = 5394255
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object hide: TLabel
    Left = 832
    Top = 0
    Width = 24
    Height = 24
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
      'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
      'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
      'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
      'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoA////EQF4' +
      'CANgEQF5BggRCmZvbnRoZWlnaHQRAy0xMQ=='
    Alignment = taCenter
    AutoSize = False
    Caption = '-'
    Color = 5394255
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object infSize: TLabel
    Left = 0
    Top = 488
    Width = 880
    Height = 16
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
      'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
      'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
      'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
      'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoA////EQF4' +
      'BggRAXkGCBEIZm9udHNpemURATg='
    Alignment = taRightJustify
    AutoSize = False
    Color = 5394255
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
    Transparent = False
    Layout = tlCenter
  end
  object settings: TLabel
    Left = 792
    Top = 0
    Width = 24
    Height = 24
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
      'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
      'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
      'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
      'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoA////EQF4' +
      'CANIEQF5BggRCmZvbnRoZWlnaHQRAy0xMQ=='
    Alignment = taCenter
    AutoSize = False
    Caption = '@'
    Color = 5394255
    Font.Charset = SYMBOL_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Webdings'
    Font.Style = []
    ParentColor = False
    ParentFont = False
    Transparent = True
    Layout = tlCenter
  end
  object messages: TScrollBox
    Left = 880
    Top = 24
    Width = 640
    Height = 424
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxELVENocm9taXVtRXgRBlBBUkFNUxQHEQhhdmlzaWJsZQUR' +
      'CGFlbmFibGVkBREBdwxAcYAAAAAAABEBaAxAawAAAAAAABEGcGFyZW50FwVURm9y' +
      'bRQGEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cxcQVFNpemVDb25zdHJh' +
      'aW50cxQDDgkOCxEEc2VsZgoJLyXoEQgAKgBwcm9wcxQAEQcAKgBpY29uABEIACoA' +
      'X2ZvbnQADgwKAVOhAA4NFAEOAwURBHRleHQRCUNocm9taXVtMREBeBEDMjQw'
    AutoScroll = False
    BevelKind = bkFlat
    BorderStyle = bsNone
    Color = clWhite
    ParentColor = False
    TabOrder = 7
    DesignSize = (
      636
      420)
  end
  object message: TEdit
    Left = 248
    Top = 456
    Width = 624
    Height = 21
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQFEQhhdmlzaWJsZQQRCGFlbmFi' +
      'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwVURm9ybRQGEQpj' +
      'bGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cxcQVFNpemVDb25zdHJhaW50cxQD' +
      'DgkOCxEEc2VsZgoJFp04EQgAKgBwcm9wcxQAEQcAKgBpY29uABEIACoAX2ZvbnQA' +
      'DgwKAWKhAA4NFAEOAwU='
    TabOrder = 5
    Alignment = taLeftJustify
    ColorOnEnter = clNone
    FontColorOnEnter = clNone
    TabOnEnter = False
    MarginLeft = 0
    MarginRight = 0
  end
  object menu: TScrollBox
    Left = 0
    Top = 24
    Width = 240
    Height = 464
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVFNjcm9sbEJveBEGUEFSQU1TFAcRCGF2aXNpYmxlBREI' +
      'YWVuYWJsZWQFEQF3DEBiAAAAAAAAEQFoDEBaAAAAAAAAEQZwYXJlbnQXBVRGb3Jt' +
      'FAYRCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFp' +
      'bnRzFAMOCQ4LEQRzZWxmCgkWnOgRCAAqAHByb3BzFAARBwAqAGljb24AEQgAKgBf' +
      'Zm9udAAODAoBZqEADg0UAQ4DBREEdGV4dBEKyu7t8uXp7eXwMREKd2luY29udHJv' +
      'bAU='
    Anchors = [akLeft, akTop, akBottom]
    BorderStyle = bsNone
    Color = 5394255
    ParentColor = False
    TabOrder = 0
    object shape1: TShape
      Left = 8
      Top = 64
      Width = 144
      Height = 2
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVFNoYXBlEQZQQVJBTVMUBxEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQGIAAAAAAAARAWgRATIRBnBhcmVudBcKVFNjcm9sbEJveBQFEQpj' +
        'bGFzc19uYW1lDgkRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoK' +
        'Oe8gEQgAKgBwcm9wcxQAEQR0ZXh0EQfU6OPz8OAxEQhwZW5jb2xvcgoAW1tb'
      Pen.Color = 5987163
    end
    object count2: TShape
      Left = 7
      Top = 88
      Width = 1
      Height = 0
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVFNoYXBlEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcRATERAWgRATARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19u' +
        'YW1lDgoRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoBVojwEQgA' +
        'KgBwcm9wcxQAEQR0ZXh0EQfU6OPz8OAyEQF4EQE3EQhwZW5jb2xvcgoA/4AA'
      Pen.Color = 16744448
    end
    object name: TEdit
      Left = 8
      Top = 24
      Width = 224
      Height = 15
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQGEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaBECMTURBnBhcmVudBcKVFNjcm9sbEJveBQFEQpj' +
        'bGFzc19uYW1lDgkRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoK' +
        'Oe8gEQgAKgBwcm9wcxQAEQlmb250Y29sb3IKAP///w=='
      AutoSelect = False
      BorderStyle = bsNone
      Color = 5394255
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWhite
      Font.Height = -12
      Font.Name = 'Segoe UI Semilight'
      Font.Style = []
      ParentFont = False
      ReadOnly = True
      TabOrder = 0
      Text = #1040#1074#1090#1086#1088#1080#1079#1091#1081#1090#1077#1089#1100
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
  end
  object authBlock: TScrollBox
    Left = 368
    Top = 504
    Width = 384
    Height = 256
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVFNjcm9sbEJveBEGUEFSQU1TFAcRCGF2aXNpYmxlBREI' +
      'YWVuYWJsZWQFEQF3DEBiAAAAAAAAEQFoDEBaAAAAAAAAEQZwYXJlbnQXBVRGb3Jt' +
      'FAYRCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFp' +
      'bnRzFAMOCQ4LEQRzZWxmCgCyUmARCAAqAHByb3BzFAARBwAqAGljb24AEQgAKgBf' +
      'Zm9udAAODAoBZq7ADg0UAQ4DBREEdGV4dBEKyu7t8uXp7eXwMREKd2luY29udHJv' +
      'bAU='
    BorderStyle = bsNone
    Color = 15461355
    ParentColor = False
    TabOrder = 1
    object auth: TLabel
      Left = 32
      Top = 32
      Width = 128
      Height = 32
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUBhEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jE='
      Alignment = taCenter
      AutoSize = False
      Caption = #1042#1086#1081#1090#1080
      Color = 14540253
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object count: TShape
      Left = 31
      Top = 32
      Width = 1
      Height = 0
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVFNoYXBlEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcRATERAWgRATARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19u' +
        'YW1lDgoRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoAr9hgEQgA' +
        'KgBwcm9wcxQAEQR0ZXh0EQfU6OPz8OAxEQF4EQIzMREIcGVuY29sb3IKAP+AAA=='
      Pen.Color = 16744448
    end
    object register: TLabel
      Left = 32
      Top = 112
      Width = 200
      Height = 32
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGKBEBeQYo'
      Alignment = taCenter
      AutoSize = False
      Caption = #1047#1072#1088#1077#1075#1080#1089#1090#1088#1080#1088#1086#1074#1072#1090#1100#1089#1103
      Color = 14540253
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object label2: TLabel
      Left = 32
      Top = 80
      Width = 88
      Height = 16
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUBhEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jI='
      Alignment = taCenter
      AutoSize = False
      Caption = #1080#1083#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object link1: TLabel
      Left = 24
      Top = 224
      Width = 82
      Height = 13
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAoRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKAFJPTxEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoAr9hgEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAx'
      Caption = 'Enfesto Auth 2.0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5394255
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object link2: TLabel
      Left = 144
      Top = 224
      Width = 52
      Height = 13
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKAFJPTxEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoAr9hgEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BiARAXkG6A=='
      Caption = 'DStructure'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5394255
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object link3: TLabel
      Left = 32
      Top = 168
      Width = 102
      Height = 13
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKAFJPTxEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoAr9hgEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BiARAXkG6A=='
      Caption = #1055#1086#1074#1090#1086#1088#1080#1090#1100' '#1087#1086#1087#1099#1090#1082#1091
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 5394255
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
  end
  object showForm: __TNoVisual
    Left = 832
    Top = 40
    Width = 25
    Height = 25
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVEZ1bmNUaW1lchEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
      'c2hvd2hpbnQEEQpiYWNrZ3JvdW5kBgARCHByaW9yaXR5BgARCGludGVydmFsEQEx' +
      'EQZlbmFibGUFEQZwYXJlbnQXBVRGb3JtFAYRCmNsYXNzX25hbWUOCxEPACoAX2Nv' +
      'bnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFpbnRzFAMODA4OEQRzZWxmCgkWnTgRCAAq' +
      'AHByb3BzFAARBwAqAGljb24AEQgAKgBfZm9udAAODwoBYqEADhAUAQ4DBREEdGV4' +
      'dA0RC29ubW91c2Vkb3duERZteURlc2lnbjo6b2JqTW91c2VEb3duEQZyZXBlYXQF' +
      'EQVsYWJlbA0RA29iag0='
    realWidth = 25
    realHeight = 25
  end
  object hideForm: __TNoVisual
    Left = 776
    Top = 40
    Width = 25
    Height = 25
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVEZ1bmNUaW1lchEGUEFSQU1TFA4RCGF2aXNpYmxlBREI' +
      'c2hvd2hpbnQEEQpiYWNrZ3JvdW5kBgARCHByaW9yaXR5BgARCGludGVydmFsEQEx' +
      'EQZlbmFibGUEEQZwYXJlbnQXBVRGb3JtFAYRCmNsYXNzX25hbWUOCxEPACoAX2Nv' +
      'bnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFpbnRzFAMODA4OEQRzZWxmCgkWnTgRCAAq' +
      'AHByb3BzFAARBwAqAGljb24AEQgAKgBfZm9udAAODwoBYqEADhAUAQ4DBREEdGV4' +
      'dA0RC29ubW91c2Vkb3duERZteURlc2lnbjo6b2JqTW91c2VEb3duEQZyZXBlYXQF' +
      'EQF4CANIEQF5BjARBWxhYmVsDREDb2JqDQ=='
    realWidth = 25
    realHeight = 25
  end
end
