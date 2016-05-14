object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 579
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
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
      Top = 24
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
    object ComboBox1: TComboBox
      Left = 282
      Top = 21
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
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
    ExplicitTop = 479
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 11
      Height = 17
      Caption = 'ID'
    end
    object edtPrefix: TEdit
      Left = 49
      Top = 44
      Width = 72
      Height = 21
      TabOrder = 0
    end
    object edtID: TEdit
      Left = 127
      Top = 44
      Width = 98
      Height = 21
      TabOrder = 1
    end
    object btWrite: TButton
      Left = 256
      Top = 48
      Width = 75
      Height = 25
      Caption = #20889'ID'
      TabOrder = 2
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
    ExplicitLeft = 32
    ExplicitTop = 216
    ExplicitWidth = 185
    ExplicitHeight = 105
    object btRead: TButton
      Left = 201
      Top = 40
      Width = 75
      Height = 25
      Caption = #35835'ID'
      TabOrder = 0
    end
    object cmbActive: TComboBox
      Left = 32
      Top = 42
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 1
      Items.Strings = (
        #20027#21160
        #34987#21160)
    end
    object mmResult: TMemo
      Left = 2
      Top = 88
      Width = 775
      Height = 303
      Align = alBottom
      ReadOnly = True
      TabOrder = 2
    end
  end
end
