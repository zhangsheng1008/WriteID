object fmWriteID: TfmWriteID
  Left = 0
  Top = 0
  Caption = #20889'ID'
  ClientHeight = 579
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 0
    Top = 0
    Width = 779
    Height = 81
    Align = alTop
    Caption = #35774#32622
    TabOrder = 0
    object Label2: TLabel
      Left = 19
      Top = 27
      Width = 24
      Height = 13
      Caption = #31471#21475
    end
    object Label3: TLabel
      Left = 240
      Top = 27
      Width = 36
      Height = 13
      Caption = #27874#29305#29575
    end
    object cmbPort: TComboBox
      Left = 56
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
    end
    object cmbBaudRate: TComboBox
      Left = 282
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = '9600'
      Items.Strings = (
        '9600'
        '19200'
        '38400')
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 81
    Width = 779
    Height = 105
    Align = alTop
    Caption = #20889'ID'
    TabOrder = 1
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 11
      Height = 13
      Caption = 'ID'
    end
    object edtPrefix: TEdit
      Left = 49
      Top = 44
      Width = 72
      Height = 21
      TabOrder = 0
    end
    object edtDate: TEdit
      Left = 127
      Top = 44
      Width = 98
      Height = 21
      TabOrder = 1
    end
    object btWrite: TButton
      Left = 352
      Top = 40
      Width = 75
      Height = 25
      Caption = #20889'ID'
      TabOrder = 2
      OnClick = btWriteClick
    end
    object edtID: TEdit
      Left = 231
      Top = 44
      Width = 98
      Height = 21
      TabOrder = 3
    end
  end
  object GroupBox3: TGroupBox
    Left = 0
    Top = 186
    Width = 779
    Height = 393
    Align = alClient
    Caption = #35835'ID'
    TabOrder = 2
    object Label5: TLabel
      Left = 8
      Top = 56
      Width = 48
      Height = 13
      Caption = #27169#22359#20449#24687
    end
    object btRead: TButton
      Left = 201
      Top = 24
      Width = 75
      Height = 25
      Caption = #35835'ID'
      TabOrder = 0
      OnClick = btReadClick
    end
    object cmbActive: TComboBox
      Left = 32
      Top = 26
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = #20027#21160
      Items.Strings = (
        #20027#21160
        #34987#21160)
    end
    object mmLog: TMemo
      Left = 2
      Top = 240
      Width = 775
      Height = 151
      Align = alBottom
      ReadOnly = True
      TabOrder = 2
    end
    object mmResult: TMemo
      Left = 2
      Top = 77
      Width = 775
      Height = 122
      Align = alBottom
      ReadOnly = True
      TabOrder = 3
      ExplicitTop = 71
    end
    object Panel1: TPanel
      Left = 2
      Top = 199
      Width = 775
      Height = 41
      Align = alBottom
      BevelOuter = bvNone
      Ctl3D = False
      ParentCtl3D = False
      TabOrder = 4
      ExplicitLeft = 3
      object Label4: TLabel
        AlignWithMargins = True
        Left = 3
        Top = 25
        Width = 769
        Height = 13
        Align = alBottom
        Caption = #36890#36805#26085#24535
        ExplicitLeft = 4
        ExplicitTop = 24
        ExplicitWidth = 48
      end
      object Button1: TButton
        Left = 654
        Top = 10
        Width = 86
        Height = 25
        Caption = #28165#38500#26085#24535
        TabOrder = 0
        OnClick = Button1Click
      end
    end
    object Button2: TButton
      Left = 656
      Top = 46
      Width = 86
      Height = 25
      Caption = #28165#38500#27169#22359#20449#24687
      TabOrder = 5
      OnClick = Button2Click
    end
  end
end
