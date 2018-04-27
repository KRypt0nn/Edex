object fmEdit: TForm
  Left = 10
  Top = 10
  HelpType = htKeyword
  HelpKeyword = 
    'AAAAAhQCEQVDTEFTUxEFVEZvcm0RBlBBUkFNUxQGEQhhdmlzaWJsZQURAXgGChEB' +
    'eQYKEQF3CANwEQFoCAH4EQxkb3VibGVidWZmZXIF'
  AlphaBlend = True
  AlphaBlendValue = 250
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
  object chatsBlock: TScrollBox
    Left = 240
    Top = 504
    Width = 640
    Height = 480
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVFNjcm9sbEJveBEGUEFSQU1TFAcRCGF2aXNpYmxlBREI' +
      'YWVuYWJsZWQFEQF3DEBiAAAAAAAAEQFoDEBaAAAAAAAAEQZwYXJlbnQXBVRGb3Jt' +
      'FAYRCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFp' +
      'bnRzFAMOCQ4LEQRzZWxmCgC7jKgRCAAqAHByb3BzFAARBwAqAGljb24AEQgAKgBf' +
      'Zm9udAAODAoBV67ADg0UAQ4DBREEdGV4dBEKyu7t8uXp7eXwMREKd2luY29udHJv' +
      'bAU='
    BorderStyle = bsNone
    TabOrder = 5
    object label14: TLabel
      Left = 16
      Top = 16
      Width = 224
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoANjY2EQF4' +
        'BhARAXkGgBEIZm9udHNpemURATg='
      AutoSize = False
      Caption = #1057#1086#1093#1088#1072#1085#1105#1085#1085#1099#1077' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Color = 5394255
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -16
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object remUser: TLabel
      Left = 248
      Top = 440
      Width = 128
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGGBEBeQgByBEJ' +
        'Zm9udGNvbG9yBgA='
      Alignment = taCenter
      AutoSize = False
      Caption = #1059#1076#1072#1083#1080#1090#1100
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object addUser: TLabel
      Left = 248
      Top = 80
      Width = 128
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgIAQARAXkIAcAR' +
        'CWZvbnRjb2xvcgYA'
      Alignment = taCenter
      AutoSize = False
      Caption = #1044#1086#1073#1072#1074#1080#1090#1100
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object label15: TLabel
      Left = 248
      Top = 408
      Width = 128
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgIAQARAXkIAcAR' +
        'CWZvbnRjb2xvcgYA'
      Alignment = taCenter
      AutoSize = False
      Caption = #1054#1073#1085#1086#1074#1080#1090#1100
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object chatsAlive: TListBox
      Left = 16
      Top = 48
      Width = 224
      Height = 416
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEIVExpc3RCb3gRBlBBUkFNUxQGEQhhdmlzaWJsZQURCGFl' +
        'bmFibGVkBREBdwxAYgAAAAAAABEBaAxAYgAAAAAAABEGcGFyZW50FwpUU2Nyb2xs' +
        'Qm94FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQA' +
        'EQRzZWxmCgVKKTARCAAqAHByb3BzFAARBHRleHQN'
      Style = lbOwnerDrawFixed
      ItemHeight = 16
      TabOrder = 0
      Alignment = taLeftJustify
      BorderSelected = True
      TwoColor = clNone
      TwoFontColor = clNone
      MarginLeft = 2
      ReadOnly = False
    end
    object userHandle: TEdit
      Left = 248
      Top = 48
      Width = 384
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQFEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgVKKTARCAAqAHByb3BzFAA='
      TabOrder = 1
      Text = 'User Handle'
      TextHint = 'User Handle'
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
  end
  object menu: TScrollBox
    Left = 0
    Top = 24
    Width = 240
    Height = 480
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
    object count: TShape
      Left = 7
      Top = 24
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
    object settings1: TLabel
      Left = 8
      Top = 64
      Width = 24
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'CANgEQF5Bgg='
      Alignment = taCenter
      AutoSize = False
      Caption = '@'
      Color = 5394255
      Font.Charset = SYMBOL_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object settings2: TLabel
      Left = 8
      Top = 64
      Width = 224
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'BggRAXkIAfARCGZvbnRzaXplEQE4'
      AutoSize = False
      Caption = '        '#1053#1072#1089#1090#1088#1086#1081#1082#1080
      Color = 5394255
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object about1: TLabel
      Left = 8
      Top = 32
      Width = 24
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'BhARAXkGSA=='
      Alignment = taCenter
      AutoSize = False
      Caption = '2'
      Color = 5394255
      Font.Charset = SYMBOL_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object about2: TLabel
      Left = 8
      Top = 32
      Width = 224
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'BhARAXkGSBEIZm9udHNpemURATg='
      AutoSize = False
      Caption = '        '#1054' '#1087#1088#1086#1075#1088#1072#1084#1084#1077
      Color = 5394255
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object chats1: TLabel
      Left = 8
      Top = 120
      Width = 24
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'BhARAXkGSA=='
      Alignment = taCenter
      AutoSize = False
      Caption = '^'
      Color = 5394255
      Font.Charset = SYMBOL_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Webdings'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
    object chats2: TLabel
      Left = 8
      Top = 120
      Width = 224
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUChEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcFVEZvcm0UBhEK' +
        'Y2xhc3NfbmFtZQ4IEQ8AKgBfY29uc3RyYWludHMXEFRTaXplQ29uc3RyYWludHMU' +
        'Aw4JDgsRBHNlbGYKCRac6BEIACoAcHJvcHMUABEHACoAaWNvbgARCAAqAF9mb250' +
        'AA4MCgFmoQAODRQBDgMFEQR0ZXh0EQbS5erx8jERCWZvbnRjb2xvcgoAx8fHEQF4' +
        'BhARAXkGSBEIZm9udHNpemURATg='
      AutoSize = False
      Caption = '        '#1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1080
      Color = 5394255
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 13092807
      Font.Height = -11
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
      Transparent = True
      Layout = tlCenter
    end
  end
  object aboutBlock: TScrollBox
    Left = 240
    Top = 504
    Width = 640
    Height = 480
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVFNjcm9sbEJveBEGUEFSQU1TFAgRCGF2aXNpYmxlBREI' +
      'YWVuYWJsZWQFEQF3DEBiAAAAAAAAEQFoDEBaAAAAAAAAEQZwYXJlbnQXBVRGb3Jt' +
      'FAYRCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFp' +
      'bnRzFAMOCQ4LEQRzZWxmCgmpmwgRCAAqAHByb3BzFAARBwAqAGljb24AEQgAKgBf' +
      'Zm9udAAODAoBbT1QDg0UAQ4DBREEdGV4dBEKyu7t8uXp7eXwMREKd2luY29udHJv' +
      'bAURAXkRAzUwNA=='
    BorderStyle = bsNone
    TabOrder = 1
    object label1: TLabel
      Left = 16
      Top = 16
      Width = 608
      Height = 40
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUBhEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLw4jAEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jE='
      AutoSize = False
      Caption = 'Edex Messanger '#169' 2018'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -27
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label2: TLabel
      Left = 16
      Top = 48
      Width = 608
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLw4jAEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGGBEBeQYY'
      AutoSize = False
      Caption = 'Open Source Windows '#1084#1077#1089#1089#1077#1085#1076#1078#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label3: TLabel
      Left = 16
      Top = 240
      Width = 272
      Height = 16
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLw4jAEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGGBEBeQY4'
      AutoSize = False
      Caption = #1056#1072#1089#1087#1088#1086#1089#1090#1088#1072#1085#1103#1077#1090#1089#1103' '#1087#1086#1076' '#1083#1080#1094#1077#1085#1079#1080#1077#1081' GNU GPL v3'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link1: TLabel
      Left = 296
      Top = 240
      Width = 65
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAoRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKAHp6ehEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAx'
      Caption = #1055#1086#1076#1088#1086#1073#1085#1077#1077
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 8026746
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label4: TLabel
      Left = 16
      Top = 104
      Width = 608
      Height = 32
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLw4jAEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGEBEBeQgB0A=='
      AutoSize = False
      Caption = 'Enfesto'#39' Development Team'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link2: TLabel
      Left = 16
      Top = 136
      Width = 110
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4CAEoEQF5CAHQ'
      Caption = #1055#1086#1076#1074#1080#1088#1085#1099#1081' '#1053#1080#1082#1080#1090#1072
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link3: TLabel
      Left = 16
      Top = 160
      Width = 88
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkGkA=='
      Caption = #1055#1072#1085#1082#1088#1072#1090#1086#1074' '#1045#1075#1086#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link4: TLabel
      Left = 16
      Top = 184
      Width = 112
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkGkA=='
      Caption = #1041#1072#1095#1077#1088#1080#1082#1086#1074' '#1040#1083#1077#1082#1089#1077#1081
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link5: TLabel
      Left = 16
      Top = 456
      Width = 68
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkGkA=='
      Caption = 'Enfesto BPN'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link6: TLabel
      Left = 112
      Top = 456
      Width = 58
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkIARA='
      Caption = 'DStructure'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link7: TLabel
      Left = 200
      Top = 456
      Width = 50
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkIARA='
      Caption = 'miqCode'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link8: TLabel
      Left = 272
      Top = 456
      Width = 47
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkIARA='
      Caption = 'AES-256'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link9: TLabel
      Left = 344
      Top = 456
      Width = 58
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4BhgRAXkIARA='
      Caption = 'securityLib'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object link10: TLabel
      Left = 424
      Top = 456
      Width = 71
      Height = 17
      Cursor = crHandPoint
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEKVExpbmtMYWJlbBEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
        'YWVuYWJsZWQFEQlmb250Y29sb3IKADY2NhEKaG92ZXJjb2xvcgoA/4AAEQpob3Zl' +
        'cnN0eWxlEQtmc1VuZGVybGluZREJaG92ZXJzaXplBgARAXcMQFQAAAAAAAARAWgM' +
        'QDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJveBQFEQpjbGFzc19uYW1lDg0RDwAq' +
        'AF9jb25zdHJhaW50cwARCAAqAF9mb250ABEEc2VsZgoLw4jAEQgAKgBwcm9wcxQA' +
        'EQR0ZXh0EQfR8fvr6uAxEQF4CAFgEQF5CAHQ'
      Caption = 'Enfesto Auth'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = 3552822
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
  end
  object settingsBlock: TScrollBox
    Left = 240
    Top = 504
    Width = 640
    Height = 480
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVFNjcm9sbEJveBEGUEFSQU1TFAgRCGF2aXNpYmxlBREI' +
      'YWVuYWJsZWQFEQF3DEBiAAAAAAAAEQFoDEBaAAAAAAAAEQZwYXJlbnQXBVRGb3Jt' +
      'FAYRCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFp' +
      'bnRzFAMOCQ4LEQRzZWxmCgmpmwgRCAAqAHByb3BzFAARBwAqAGljb24AEQgAKgBf' +
      'Zm9udAAODAoBbT1QDg0UAQ4DBREEdGV4dBEKyu7t8uXp7eXwMREKd2luY29udHJv' +
      'bAURAXkRAzUwNA=='
    BorderStyle = bsNone
    TabOrder = 4
    object label5: TLabel
      Left = 16
      Top = 24
      Width = 80
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUBhEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jU='
      AutoSize = False
      Caption = 'BPN '#1089#1077#1088#1074#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label6: TLabel
      Left = 16
      Top = 144
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGGBEBeQYg'
      AutoSize = False
      Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1086#1085#1085#1099#1081' '#1089#1077#1088#1074#1077#1088
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label7: TLabel
      Left = 32
      Top = 200
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGGBEBeQZg'
      AutoSize = False
      Caption = #1060#1072#1081#1083' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label8: TLabel
      Left = 32
      Top = 256
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGKBEBeQaY'
      AutoSize = False
      Caption = #1050#1083#1102#1095' '#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label9: TLabel
      Left = 32
      Top = 80
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGKBEBeQaY'
      AutoSize = False
      Caption = #1050#1083#1102#1095' '#1073#1072#1079#1099' '#1076#1072#1085#1085#1099#1093
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label10: TLabel
      Left = 16
      Top = 320
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGGBEBeQaY'
      AutoSize = False
      Caption = #1050#1083#1102#1095' '#1089#1077#1088#1090#1080#1092#1080#1082#1072#1094#1080#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object label11: TLabel
      Left = 16
      Top = 376
      Width = 152
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCBEIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoLxuZQEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jURAXgGGBEBeQgBSA=='
      AutoSize = False
      Caption = #1050#1083#1102#1095' '#1096#1080#1092#1088#1086#1074#1072#1085#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentFont = False
    end
    object auth: TLabel
      Left = 16
      Top = 448
      Width = 128
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGKBEBeQYoEQlm' +
        'b250Y29sb3IGAA=='
      Alignment = taCenter
      AutoSize = False
      Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object label12: TLabel
      Left = 152
      Top = 448
      Width = 192
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGGBEBeQgByBEJ' +
        'Zm9udGNvbG9yBgA='
      Alignment = taCenter
      AutoSize = False
      Caption = #1048#1084#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object label13: TLabel
      Left = 352
      Top = 448
      Width = 192
      Height = 24
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEGVExhYmVsEQZQQVJBTVMUCREIYXZpc2libGUFEQhhZW5h' +
        'YmxlZAURAXcMQFQAAAAAAAARAWgMQDgAAAAAAAARBnBhcmVudBcKVFNjcm9sbEJv' +
        'eBQFEQpjbGFzc19uYW1lDggRDwAqAF9jb25zdHJhaW50cwARCAAqAF9mb250ABEE' +
        'c2VsZgoAr9hgEQgAKgBwcm9wcxQAEQR0ZXh0EQbS5erx8jERAXgGoBEBeQgByBEJ' +
        'Zm9udGNvbG9yBgA='
      Alignment = taCenter
      AutoSize = False
      Caption = #1069#1082#1089#1087#1086#1088#1090#1080#1088#1086#1074#1072#1090#1100' '#1085#1072#1089#1090#1088#1086#1081#1082#1080
      Color = 14671839
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Segoe UI Light'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      Transparent = False
      Layout = tlCenter
    end
    object bpn_server: TEdit
      Left = 16
      Top = 48
      Width = 432
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQFEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAA='
      TabOrder = 0
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object auth_server: TEdit
      Left = 16
      Top = 168
      Width = 432
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGGBEBeQY4'
      TabOrder = 1
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object auth_file: TEdit
      Left = 32
      Top = 224
      Width = 416
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGGBEBeQZ4'
      TabOrder = 2
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object auth_key: TEdit
      Left = 32
      Top = 280
      Width = 416
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGKBEBeQaw'
      TabOrder = 3
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object bpn_key: TEdit
      Left = 32
      Top = 104
      Width = 416
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGKBEBeQaw'
      TabOrder = 4
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object cert_key: TEdit
      Left = 16
      Top = 344
      Width = 432
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGGBEBeQaw'
      TabOrder = 5
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
    object aes_key: TEdit
      Left = 16
      Top = 400
      Width = 432
      Height = 21
      HelpType = htKeyword
      HelpKeyword = 
        'AAAAAhQCEQVDTEFTUxEFVEVkaXQRBlBBUkFNUxQHEQhhdmlzaWJsZQURCGFlbmFi' +
        'bGVkBREBdwxAWgAAAAAAABEBaAwAAAAAAAAAABEGcGFyZW50FwpUU2Nyb2xsQm94' +
        'FAURCmNsYXNzX25hbWUOCBEPACoAX2NvbnN0cmFpbnRzABEIACoAX2ZvbnQAEQRz' +
        'ZWxmCgvG5lARCAAqAHByb3BzFAARAXgGGBEBeQgBYA=='
      TabOrder = 6
      Alignment = taLeftJustify
      ColorOnEnter = clNone
      FontColorOnEnter = clNone
      TabOnEnter = False
      MarginLeft = 0
      MarginRight = 0
    end
  end
  object hideForm: __TNoVisual
    Left = 832
    Top = 40
    Width = 25
    Height = 25
    HelpType = htKeyword
    HelpKeyword = 
      'AAAAAhQCEQVDTEFTUxEKVEZ1bmNUaW1lchEGUEFSQU1TFAwRCGF2aXNpYmxlBREI' +
      'c2hvd2hpbnQEEQpiYWNrZ3JvdW5kBgARCHByaW9yaXR5BgARCGludGVydmFsEQEx' +
      'EQZlbmFibGUEEQZwYXJlbnQXBVRGb3JtFAYRCmNsYXNzX25hbWUOCxEPACoAX2Nv' +
      'bnN0cmFpbnRzFxBUU2l6ZUNvbnN0cmFpbnRzFAMODA4OEQRzZWxmCgkWnTgRCAAq' +
      'AHByb3BzFAARBwAqAGljb24AEQgAKgBfZm9udAAODwoBYqEADhAUAQ4DBREEdGV4' +
      'dA0RC29ubW91c2Vkb3duERZteURlc2lnbjo6b2JqTW91c2VEb3duEQZyZXBlYXQF' +
      'EQVsYWJlbA0RA29iag0='
    realWidth = 25
    realHeight = 25
  end
end
