object FrmConfiguracoes: TFrmConfiguracoes
  Left = 620
  Top = 153
  Width = 499
  Height = 540
  Caption = '[ Tabelas Padrao ] - Configura'#231#245'es'
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
    Width = 483
    Height = 473
    ActivePage = TabMetodosValores
    Align = alClient
    TabOrder = 0
    object TabSolos: TTabSheet
      Caption = 'Solos'
      object GridSolos: TDBGrid
        Left = 0
        Top = 65
        Width = 475
        Height = 380
        Align = alClient
        DataSource = dsSolos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridSolosCellClick
        OnDrawColumnCell = GridSolosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 372
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = '[ Excluir ]'
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 475
        Height = 65
        Align = alTop
        TabOrder = 1
        object Image2: TImage
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
        object Label3: TLabel
          Left = 11
          Top = 11
          Width = 118
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'Solo'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object TxtSolo: TEdit
          Left = 133
          Top = 11
          Width = 119
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = TxtSoloKeyPress
        end
      end
    end
    object TabEstacas: TTabSheet
      Caption = 'Tipos de Estacas'
      ImageIndex = 3
      object GridEstacasTipos: TDBGrid
        Left = 0
        Top = 65
        Width = 475
        Height = 380
        Align = alClient
        DataSource = dsEstacas_Tipos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridEstacasTiposCellClick
        OnDrawColumnCell = GridEstacasTiposDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 372
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = '[ Excluir ]'
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 475
        Height = 65
        Align = alTop
        TabOrder = 1
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
          Top = 11
          Width = 118
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
        object txtEstacaTipo: TEdit
          Left = 133
          Top = 11
          Width = 276
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = txtEstacaTipoKeyPress
        end
        object KeyTiposEstacas: TDBEdit
          Left = 16
          Top = 40
          Width = 121
          Height = 21
          DataField = 'id'
          DataSource = dsEstacas_Tipos
          TabOrder = 1
          Visible = False
          OnChange = KeyTiposEstacasChange
        end
      end
    end
    object TabDiametros: TTabSheet
      Caption = 'Diametros'
      ImageIndex = 1
      object Panel3: TPanel
        Left = 0
        Top = 0
        Width = 475
        Height = 65
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
          Width = 174
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
          Left = 296
          Top = 11
          Width = 81
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
          Left = 199
          Top = 11
          Width = 81
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Diametro (CM)'
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
          Left = 391
          Top = 11
          Width = 81
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
          Left = 295
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 2
          OnKeyPress = EstacaFatorF1KeyPress
        end
        object EstacaDiametro: TRxCalcEdit
          Left = 199
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0'
          NumGlyphs = 2
          TabOrder = 1
          OnKeyPress = EstacaDiametroKeyPress
        end
        object EstacaFatorF2: TRxCalcEdit
          Left = 391
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 3
          OnKeyPress = EstacaFatorF2KeyPress
        end
        object txtEstacas_Diametros: TDBLookupComboBox
          Left = 8
          Top = 32
          Width = 177
          Height = 21
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dsEstacas_Tipos
          TabOrder = 0
          OnKeyPress = txtEstacas_DiametrosKeyPress
        end
      end
      object GridEstacas_Diametros: TDBGrid
        Left = 0
        Top = 65
        Width = 475
        Height = 380
        Align = alClient
        DataSource = dsEstacas_diametros
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridEstacas_DiametrosCellClick
        OnDrawColumnCell = GridEstacas_DiametrosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id_estacas_tipos'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 173
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'diametro'
            Width = 51
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'perimetro'
            Width = 53
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fator_f1'
            Width = 46
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'fator_f2'
            Width = 48
            Visible = True
          end
          item
            Alignment = taCenter
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = '[ Excluir ]'
            Visible = True
          end>
      end
    end
    object TabMetodos: TTabSheet
      Caption = 'M'#233'todos'
      ImageIndex = 4
      object GridMetodos: TDBGrid
        Left = 0
        Top = 65
        Width = 475
        Height = 380
        Align = alClient
        DataSource = dsMetodos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridMetodosCellClick
        OnDrawColumnCell = GridMetodosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Title.Caption = 'Descri'#231#227'o'
            Width = 349
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = '[ Excluir ]'
            Visible = True
          end>
      end
      object Panel4: TPanel
        Left = 0
        Top = 0
        Width = 475
        Height = 65
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
        object Label2: TLabel
          Left = 11
          Top = 11
          Width = 118
          Height = 20
          Alignment = taCenter
          AutoSize = False
          Caption = 'M'#233'todo'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object txtMetodo: TEdit
          Left = 133
          Top = 11
          Width = 276
          Height = 28
          CharCase = ecUpperCase
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -16
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 0
          OnKeyPress = txtMetodoKeyPress
        end
        object KeyMetodo: TDBEdit
          Left = 16
          Top = 40
          Width = 121
          Height = 21
          DataField = 'id'
          DataSource = dsMetodos
          TabOrder = 1
          Visible = False
          OnChange = KeyMetodoChange
        end
      end
    end
    object TabMetodosValores: TTabSheet
      Caption = 'M'#233'todos Valores'
      ImageIndex = 4
      object GridMetodosSolos: TDBGrid
        Left = 0
        Top = 65
        Width = 475
        Height = 380
        Align = alClient
        DataSource = dsMetodos_Solos
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'MS Sans Serif'
        TitleFont.Style = []
        OnCellClick = GridMetodosSolosCellClick
        OnDrawColumnCell = GridMetodosSolosDrawColumnCell
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id_metodos'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'id_solos'
            Visible = False
          end
          item
            Expanded = False
            FieldName = 'descricao'
            Width = 272
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'vlr_alpha'
            Visible = True
          end
          item
            Expanded = False
            Title.Alignment = taCenter
            Title.Caption = '[ Excluir ]'
            Width = 70
            Visible = True
          end>
      end
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 475
        Height = 65
        Align = alTop
        TabOrder = 1
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
        object Label4: TLabel
          Left = 11
          Top = 10
          Width = 174
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'M'#233'todo'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label6: TLabel
          Left = 383
          Top = 11
          Width = 81
          Height = 19
          Alignment = taCenter
          AutoSize = False
          Caption = 'Valor Alpha'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object Label5: TLabel
          Left = 195
          Top = 10
          Width = 174
          Height = 21
          Alignment = taCenter
          AutoSize = False
          Caption = 'Solo'
          Color = 16763541
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
        end
        object MetodoValores_Alpha: TRxCalcEdit
          Left = 383
          Top = 30
          Width = 81
          Height = 23
          AutoSize = False
          DisplayFormat = '####0.00'
          NumGlyphs = 2
          TabOrder = 2
          OnKeyPress = MetodoValores_AlphaKeyPress
        end
        object cbMetodoValores1: TDBLookupComboBox
          Left = 8
          Top = 32
          Width = 177
          Height = 21
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dsMetodos
          TabOrder = 0
          OnKeyPress = cbMetodoValores1KeyPress
        end
        object cbMetodoValores2: TDBLookupComboBox
          Left = 192
          Top = 32
          Width = 177
          Height = 21
          KeyField = 'id'
          ListField = 'descricao'
          ListSource = dsSolos
          TabOrder = 1
          OnKeyPress = cbMetodoValores2KeyPress
        end
      end
    end
  end
  object pnAviso: TPanel
    Left = 0
    Top = 473
    Width = 483
    Height = 29
    Align = alBottom
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object TxtAviso: TLabel
      Left = 1
      Top = 1
      Width = 481
      Height = 27
      Align = alClient
      Alignment = taCenter
    end
  end
  object dsSolos: TDataSource
    DataSet = solos
    Left = 60
    Top = 240
  end
  object metodos: TZQuery
    Connection = DM.Conn
    SQL.Strings = (
      
        'select id,cast( descricao as char(50)) as descricao from metodos' +
        ' order by descricao;')
    Params = <>
    Left = 92
    Top = 208
  end
  object dsMetodos: TDataSource
    DataSet = metodos
    Left = 92
    Top = 240
  end
  object estacas_tipos: TZQuery
    Connection = DM.Conn
    SQL.Strings = (
      
        'select id,cast( descricao as char(50)) as descricao from estacas' +
        '_tipos order by descricao;')
    Params = <>
    Left = 132
    Top = 208
  end
  object dsEstacas_Tipos: TDataSource
    DataSet = estacas_tipos
    OnDataChange = dsEstacas_TiposDataChange
    Left = 132
    Top = 240
  end
  object solos: TZQuery
    Connection = DM.Conn
    SQL.Strings = (
      
        'select id,cast( descricao as char(50)) as descricao from solos o' +
        'rder by descricao;')
    Params = <>
    Left = 60
    Top = 208
  end
  object TimerAviso: TTimer
    Enabled = False
    Interval = 2500
    OnTimer = TimerAvisoTimer
    Left = 44
    Top = 456
  end
  object TimerAvisoBlink: TTimer
    Enabled = False
    Interval = 100
    OnTimer = TimerAvisoBlinkTimer
    Left = 88
    Top = 456
  end
  object estacas_diametros: TZQuery
    Connection = DM.Conn
    SQL.Strings = (
      'SELECT '
      ' ed.*,'
      ' cast(et.descricao as char(50)) as descricao'
      'FROM'
      ' estacas_diametros ed '
      ' INNER JOIN  estacas_tipos et ON et.id=ed.id_estacas_tipos'
      'WHERE '
      ' et.id=:id'
      'ORDER BY'
      ' et.id,'
      ' ed.id_estacas_tipos,ed.diametro '
      ' '
      ' ')
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    Left = 172
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    object estacas_diametrosid: TIntegerField
      FieldName = 'id'
    end
    object estacas_diametrosid_estacas_tipos: TIntegerField
      FieldName = 'id_estacas_tipos'
      Required = True
    end
    object estacas_diametrosdiametro: TFloatField
      FieldName = 'diametro'
      Required = True
      DisplayFormat = '###0.00'
    end
    object estacas_diametrosperimetro: TFloatField
      FieldName = 'perimetro'
      Required = True
      DisplayFormat = '###0.00'
    end
    object estacas_diametrosfator_f1: TFloatField
      FieldName = 'fator_f1'
      Required = True
      DisplayFormat = '###0.00'
    end
    object estacas_diametrosfator_f2: TFloatField
      FieldName = 'fator_f2'
      Required = True
      DisplayFormat = '###0.00'
    end
    object estacas_diametrosdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 1020
    end
  end
  object dsEstacas_diametros: TDataSource
    DataSet = estacas_diametros
    Left = 172
    Top = 240
  end
  object metodos_solos: TZQuery
    Connection = DM.Conn
    SQL.Strings = (
      'select'
      ' ms.id,'
      ' ms.id_metodos,'
      ' ms.id_solos,'
      ' cast(s.descricao as char(100)) as descricao,'
      ' ms.vlr_alpha'
      'from '
      ' metodos_solos ms'
      ' inner join solos s on s.id=ms.id_solos'
      'where '
      ' ms.id_metodos=:id'
      'ORDER BY'
      ' ms.id_metodos,'
      ' s.descricao,'
      ' ms.id ')
    Params = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    Left = 212
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'id'
        ParamType = ptUnknown
        Value = '1'
      end>
    object metodos_solosid: TIntegerField
      FieldName = 'id'
    end
    object metodos_solosid_metodos: TIntegerField
      FieldName = 'id_metodos'
      Required = True
    end
    object metodos_solosid_solos: TIntegerField
      FieldName = 'id_solos'
      Required = True
    end
    object metodos_solosdescricao: TStringField
      FieldName = 'descricao'
      ReadOnly = True
      Size = 1020
    end
    object metodos_solosvlr_alpha: TFloatField
      FieldName = 'vlr_alpha'
      Required = True
    end
  end
  object dsMetodos_Solos: TDataSource
    DataSet = metodos_solos
    Left = 212
    Top = 240
  end
end
