object FrmConfig: TFrmConfig
  Left = 515
  Top = 136
  BorderStyle = bsSingle
  Caption = 'Configura'#231#227'o'
  ClientHeight = 533
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object D: TPageControl
    Left = 0
    Top = 0
    Width = 659
    Height = 533
    ActivePage = Metodos
    Align = alClient
    TabOrder = 0
    object Solos: TTabSheet
      Caption = 'Solos'
      object GridSolos: TStringGrid
        Left = 0
        Top = 105
        Width = 651
        Height = 400
        Align = alClient
        BorderStyle = bsNone
        ColCount = 2
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 0
        ColWidths = (
          210
          71)
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 105
        Align = alTop
        TabOrder = 1
        object Image3: TImage
          Left = 600
          Top = 19
          Width = 16
          Height = 16
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000C40E0000C40E0000000100000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
            E00000400000004020000040400000406000004080000040A0000040C0000040
            E00000600000006020000060400000606000006080000060A0000060C0000060
            E00000800000008020000080400000806000008080000080A0000080C0000080
            E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
            E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
            E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
            E00040000000400020004000400040006000400080004000A0004000C0004000
            E00040200000402020004020400040206000402080004020A0004020C0004020
            E00040400000404020004040400040406000404080004040A0004040C0004040
            E00040600000406020004060400040606000406080004060A0004060C0004060
            E00040800000408020004080400040806000408080004080A0004080C0004080
            E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
            E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
            E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
            E00080000000800020008000400080006000800080008000A0008000C0008000
            E00080200000802020008020400080206000802080008020A0008020C0008020
            E00080400000804020008040400080406000804080008040A0008040C0008040
            E00080600000806020008060400080606000806080008060A0008060C0008060
            E00080800000808020008080400080806000808080008080A0008080C0008080
            E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
            E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
            E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
            E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
            E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
            E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
            E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
            E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
            E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
            E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00FFFFFFFFFFF6F60707F6F6FFFFFFFFFFFFFFFFF6075D0E0E0E0E55F7F6FF
            FFFFFFFFF6A50E0E0D0D0D0D0D0E5DF6FFFFFFFFA50E0D0D0E161616160D0E55
            F6FFFF070E0D0DA6161E1F1E6F1E0E0EA5FFFF550E0EA6FF071E27AFFF07160E
            0DF6F60D0E161608FF07AEFFF65E160E0D07080D0E171F1D08FFFFF65D1F170E
            0DF7070D0E171F1EA6FFFF0715170E0E0DAEF6010E171EAEFFF6F6FF07160E0E
            0D07FF550D5FAEFFF6665EF6FFEF560E01F6FFF70156A7F6A767A79EF6A75E0D
            5DFFFFFF550DA7A7A7A7A7A7A7A74E0DF6FFFFFFF6550DA7EFEFEFEFAF560D07
            FFFFFFFFFFF6A60D569E9E560D5EF6FFFFFFFFFFFFFFFFF6EFA6A6EFF6FFFFFF
            FFFF}
          Visible = False
        end
        object Label9: TLabel
          Left = 11
          Top = 19
          Width = 118
          Height = 32
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo de Solo'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object edtSolo: TEdit
          Left = 8
          Top = 53
          Width = 121
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
        end
      end
    end
    object Metodos: TTabSheet
      Caption = 'Metodos'
      ImageIndex = 2
      object PgControlMetodos: TPageControl
        Left = 0
        Top = 0
        Width = 651
        Height = 505
        ActivePage = TabSheet7
        Align = alClient
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'Decourt'
          object Panel4: TPanel
            Left = 0
            Top = 0
            Width = 643
            Height = 65
            Align = alTop
            TabOrder = 0
            object Image5: TImage
              Left = 600
              Top = 19
              Width = 16
              Height = 16
              Picture.Data = {
                07544269746D617036050000424D360500000000000036040000280000001000
                000010000000010008000000000000010000C40E0000C40E0000000100000000
                000000000000000080000080000000808000800000008000800080800000C0C0
                C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
                E00000400000004020000040400000406000004080000040A0000040C0000040
                E00000600000006020000060400000606000006080000060A0000060C0000060
                E00000800000008020000080400000806000008080000080A0000080C0000080
                E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
                E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
                E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
                E00040000000400020004000400040006000400080004000A0004000C0004000
                E00040200000402020004020400040206000402080004020A0004020C0004020
                E00040400000404020004040400040406000404080004040A0004040C0004040
                E00040600000406020004060400040606000406080004060A0004060C0004060
                E00040800000408020004080400040806000408080004080A0004080C0004080
                E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
                E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
                E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
                E00080000000800020008000400080006000800080008000A0008000C0008000
                E00080200000802020008020400080206000802080008020A0008020C0008020
                E00080400000804020008040400080406000804080008040A0008040C0008040
                E00080600000806020008060400080606000806080008060A0008060C0008060
                E00080800000808020008080400080806000808080008080A0008080C0008080
                E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
                E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
                E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
                E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
                E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
                E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
                E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
                E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
                E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
                E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
                A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
                FF00FFFFFFFFFFF6F60707F6F6FFFFFFFFFFFFFFFFF6075D0E0E0E0E55F7F6FF
                FFFFFFFFF6A50E0E0D0D0D0D0D0E5DF6FFFFFFFFA50E0D0D0E161616160D0E55
                F6FFFF070E0D0DA6161E1F1E6F1E0E0EA5FFFF550E0EA6FF071E27AFFF07160E
                0DF6F60D0E161608FF07AEFFF65E160E0D07080D0E171F1D08FFFFF65D1F170E
                0DF7070D0E171F1EA6FFFF0715170E0E0DAEF6010E171EAEFFF6F6FF07160E0E
                0D07FF550D5FAEFFF6665EF6FFEF560E01F6FFF70156A7F6A767A79EF6A75E0D
                5DFFFFFF550DA7A7A7A7A7A7A7A74E0DF6FFFFFFF6550DA7EFEFEFEFAF560D07
                FFFFFFFFFFF6A60D569E9E560D5EF6FFFFFFFFFFFFFFFFF6EFA6A6EFF6FFFFFF
                FFFF}
              Visible = False
            end
            object Label6: TLabel
              Left = 19
              Top = 8
              Width = 142
              Height = 20
              Alignment = taCenter
              AutoSize = False
              Caption = 'Tipos de Solos'
              Color = 16763541
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object Label8: TLabel
              Left = 188
              Top = 8
              Width = 141
              Height = 21
              Alignment = taCenter
              AutoSize = False
              Caption = 'Valor de Alpha'
              Color = 16763541
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Arial'
              Font.Style = [fsBold]
              ParentColor = False
              ParentFont = False
            end
            object cbTipoSoloDecourt: TComboBox
              Left = 19
              Top = 29
              Width = 142
              Height = 21
              Style = csDropDownList
              ItemHeight = 13
              TabOrder = 0
            end
            object vlr_alphaDecourt: TRxCalcEdit
              Left = 189
              Top = 28
              Width = 140
              Height = 21
              AutoSize = False
              DisplayFormat = '0.00'
              NumGlyphs = 2
              TabOrder = 1
              OnKeyUp = vlr_alphaDecourtKeyUp
            end
          end
          object GridDecourt: TStringGrid
            Left = 0
            Top = 65
            Width = 643
            Height = 412
            Align = alClient
            BorderStyle = bsNone
            ColCount = 3
            FixedCols = 0
            RowCount = 2
            Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
            TabOrder = 1
            OnDrawCell = GridDecourtDrawCell
            OnSelectCell = GridDecourtSelectCell
            ColWidths = (
              210
              118
              64)
          end
        end
        object TabSheet8: TTabSheet
          Caption = 'Veloso'
          ImageIndex = 1
        end
        object TabSheet9: TTabSheet
          Caption = 'Aoki'
          ImageIndex = 2
        end
      end
    end
    object TabSheet1: TTabSheet
      Caption = 'Tipos de Estacas'
      ImageIndex = 3
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 105
        Align = alTop
        TabOrder = 0
        object Image1: TImage
          Left = 600
          Top = 19
          Width = 16
          Height = 16
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000C40E0000C40E0000000100000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
            E00000400000004020000040400000406000004080000040A0000040C0000040
            E00000600000006020000060400000606000006080000060A0000060C0000060
            E00000800000008020000080400000806000008080000080A0000080C0000080
            E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
            E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
            E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
            E00040000000400020004000400040006000400080004000A0004000C0004000
            E00040200000402020004020400040206000402080004020A0004020C0004020
            E00040400000404020004040400040406000404080004040A0004040C0004040
            E00040600000406020004060400040606000406080004060A0004060C0004060
            E00040800000408020004080400040806000408080004080A0004080C0004080
            E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
            E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
            E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
            E00080000000800020008000400080006000800080008000A0008000C0008000
            E00080200000802020008020400080206000802080008020A0008020C0008020
            E00080400000804020008040400080406000804080008040A0008040C0008040
            E00080600000806020008060400080606000806080008060A0008060C0008060
            E00080800000808020008080400080806000808080008080A0008080C0008080
            E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
            E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
            E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
            E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
            E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
            E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
            E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
            E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
            E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
            E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00FFFFFFFFFFF6F60707F6F6FFFFFFFFFFFFFFFFF6075D0E0E0E0E55F7F6FF
            FFFFFFFFF6A50E0E0D0D0D0D0D0E5DF6FFFFFFFFA50E0D0D0E161616160D0E55
            F6FFFF070E0D0DA6161E1F1E6F1E0E0EA5FFFF550E0EA6FF071E27AFFF07160E
            0DF6F60D0E161608FF07AEFFF65E160E0D07080D0E171F1D08FFFFF65D1F170E
            0DF7070D0E171F1EA6FFFF0715170E0E0DAEF6010E171EAEFFF6F6FF07160E0E
            0D07FF550D5FAEFFF6665EF6FFEF560E01F6FFF70156A7F6A767A79EF6A75E0D
            5DFFFFFF550DA7A7A7A7A7A7A7A74E0DF6FFFFFFF6550DA7EFEFEFEFAF560D07
            FFFFFFFFFFF6A60D569E9E560D5EF6FFFFFFFFFFFFFFFFF6EFA6A6EFF6FFFFFF
            FFFF}
          Visible = False
        end
        object Label1: TLabel
          Left = 11
          Top = 10
          Width = 121
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo de Estaca'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object cbTipoEstaca: TComboBox
          Left = 11
          Top = 32
          Width = 122
          Height = 21
          Style = csDropDownList
          ItemHeight = 0
          TabOrder = 0
        end
      end
      object StringGrid1: TStringGrid
        Left = 0
        Top = 105
        Width = 651
        Height = 400
        Align = alClient
        BorderStyle = bsNone
        ColCount = 6
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 1
        ColWidths = (
          100
          53
          55
          45
          47
          34)
      end
    end
    object Estacas: TTabSheet
      Caption = 'Diametros'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 651
        Height = 105
        Align = alTop
        TabOrder = 0
        object Image4: TImage
          Left = 600
          Top = 19
          Width = 16
          Height = 16
          Picture.Data = {
            07544269746D617036050000424D360500000000000036040000280000001000
            000010000000010008000000000000010000C40E0000C40E0000000100000000
            000000000000000080000080000000808000800000008000800080800000C0C0
            C000C0DCC000F0CAA6000020400000206000002080000020A0000020C0000020
            E00000400000004020000040400000406000004080000040A0000040C0000040
            E00000600000006020000060400000606000006080000060A0000060C0000060
            E00000800000008020000080400000806000008080000080A0000080C0000080
            E00000A0000000A0200000A0400000A0600000A0800000A0A00000A0C00000A0
            E00000C0000000C0200000C0400000C0600000C0800000C0A00000C0C00000C0
            E00000E0000000E0200000E0400000E0600000E0800000E0A00000E0C00000E0
            E00040000000400020004000400040006000400080004000A0004000C0004000
            E00040200000402020004020400040206000402080004020A0004020C0004020
            E00040400000404020004040400040406000404080004040A0004040C0004040
            E00040600000406020004060400040606000406080004060A0004060C0004060
            E00040800000408020004080400040806000408080004080A0004080C0004080
            E00040A0000040A0200040A0400040A0600040A0800040A0A00040A0C00040A0
            E00040C0000040C0200040C0400040C0600040C0800040C0A00040C0C00040C0
            E00040E0000040E0200040E0400040E0600040E0800040E0A00040E0C00040E0
            E00080000000800020008000400080006000800080008000A0008000C0008000
            E00080200000802020008020400080206000802080008020A0008020C0008020
            E00080400000804020008040400080406000804080008040A0008040C0008040
            E00080600000806020008060400080606000806080008060A0008060C0008060
            E00080800000808020008080400080806000808080008080A0008080C0008080
            E00080A0000080A0200080A0400080A0600080A0800080A0A00080A0C00080A0
            E00080C0000080C0200080C0400080C0600080C0800080C0A00080C0C00080C0
            E00080E0000080E0200080E0400080E0600080E0800080E0A00080E0C00080E0
            E000C0000000C0002000C0004000C0006000C0008000C000A000C000C000C000
            E000C0200000C0202000C0204000C0206000C0208000C020A000C020C000C020
            E000C0400000C0402000C0404000C0406000C0408000C040A000C040C000C040
            E000C0600000C0602000C0604000C0606000C0608000C060A000C060C000C060
            E000C0800000C0802000C0804000C0806000C0808000C080A000C080C000C080
            E000C0A00000C0A02000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0
            E000C0C00000C0C02000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0
            A000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00FFFFFFFFFFF6F60707F6F6FFFFFFFFFFFFFFFFF6075D0E0E0E0E55F7F6FF
            FFFFFFFFF6A50E0E0D0D0D0D0D0E5DF6FFFFFFFFA50E0D0D0E161616160D0E55
            F6FFFF070E0D0DA6161E1F1E6F1E0E0EA5FFFF550E0EA6FF071E27AFFF07160E
            0DF6F60D0E161608FF07AEFFF65E160E0D07080D0E171F1D08FFFFF65D1F170E
            0DF7070D0E171F1EA6FFFF0715170E0E0DAEF6010E171EAEFFF6F6FF07160E0E
            0D07FF550D5FAEFFF6665EF6FFEF560E01F6FFF70156A7F6A767A79EF6A75E0D
            5DFFFFFF550DA7A7A7A7A7A7A7A74E0DF6FFFFFFF6550DA7EFEFEFEFAF560D07
            FFFFFFFFFFF6A60D569E9E560D5EF6FFFFFFFFFFFFFFFFF6EFA6A6EFF6FFFFFF
            FFFF}
          Visible = False
        end
        object Label10: TLabel
          Left = 11
          Top = 10
          Width = 121
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'Tipo de Estaca'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label11: TLabel
          Left = 143
          Top = 11
          Width = 80
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fator F1'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label12: TLabel
          Left = 7
          Top = 59
          Width = 122
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Diametro'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label13: TLabel
          Left = 143
          Top = 59
          Width = 82
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Perimetro'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label14: TLabel
          Left = 231
          Top = 11
          Width = 80
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Fator F2'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object EstacaFatorF1: TRxCalcEdit
          Left = 143
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 1
        end
        object cbEstaca: TComboBox
          Left = 11
          Top = 32
          Width = 122
          Height = 21
          Style = csDropDownList
          ItemHeight = 13
          TabOrder = 0
          Items.Strings = (
            'HELICE CONTINUA'
            'ESTACA METALICA'
            'MEGA'
            'ESCAVADA'
            'CRAVADA')
        end
        object EstacaDiametro: TRxCalcEdit
          Left = 7
          Top = 78
          Width = 122
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 3
        end
        object EstacaPerimetro: TRxCalcEdit
          Left = 143
          Top = 77
          Width = 82
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          Enabled = False
          NumGlyphs = 2
          ReadOnly = True
          TabOrder = 4
        end
        object EstacaFatorF2: TRxCalcEdit
          Left = 231
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 2
        end
      end
      object GridEstaca: TStringGrid
        Left = 0
        Top = 105
        Width = 651
        Height = 400
        Align = alClient
        BorderStyle = bsNone
        ColCount = 6
        FixedCols = 0
        RowCount = 2
        Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
        TabOrder = 1
        ColWidths = (
          100
          53
          55
          45
          47
          34)
      end
    end
  end
end
