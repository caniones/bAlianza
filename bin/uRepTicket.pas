unit uRepTicket;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, uRepBase, QRExport, jpeg, QRCtrls, QuickRpt, ExtCtrls, DB,
  ZAbstractRODataset, ZDataset;

type
  TfrmRepTicket = class(TfrmRepBase)
    zroqTicket: TZReadOnlyQuery;
    DetailBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRDBText1: TQRDBText;
    zroqTicketIDTICKET: TIntegerField;
    zroqTicketFECHAHORA: TDateTimeField;
    zroqTicketIDADUANA: TIntegerField;
    zroqTicketCODIGOLOT: TStringField;
    zroqTicketNROCERTIFICADO: TStringField;
    zroqTicketFECHAVENCIMIENTO: TDateField;
    zroqTicketIDEXPORTADOR: TIntegerField;
    zroqTicketCUITEXPORTADOR: TStringField;
    zroqTicketEXPORTADOR: TStringField;
    zroqTicketIDTRANSPORTE: TIntegerField;
    zroqTicketCUITTRANSPORTE: TStringField;
    zroqTicketTRANSPORTE: TStringField;
    zroqTicketIDENTIFICADOR: TStringField;
    zroqTicketIDMERCADERIA: TIntegerField;
    zroqTicketMERCADERIA: TStringField;
    zroqTicketIDVEHICULO: TIntegerField;
    zroqTicketPATENTECHASIS: TStringField;
    zroqTicketPATENTEACOPOLADO: TStringField;
    zroqTicketDNICHOFER: TIntegerField;
    zroqTicketCHOFER: TStringField;
    zroqTicketNACIONALIDAD: TStringField;
    zroqTicketPESOTARA: TIntegerField;
    zroqTicketPESOBRUTO: TIntegerField;
    zroqTicketPESONETO: TIntegerField;
    zroqTicketIDCONTENEDOR: TIntegerField;
    zroqTicketIDENTIFICADORCONTENEDOR: TStringField;
    zroqTicketIDESTADO: TIntegerField;
    zroqTicketESTADO: TStringField;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    zroqTicketENTRADA: TDateTimeField;
    zroqTicketSALIDA: TDateTimeField;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    QRDBText19: TQRDBText;
    QRDBText20: TQRDBText;
    QRDBText21: TQRDBText;
    QRDBText22: TQRDBText;
    zroqTicketCODIGOADUANA: TStringField;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRDBText23: TQRDBText;
    procedure qrBaseBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure whereIn(sql: string); 
  end;

var
  frmRepTicket: TfrmRepTicket;

implementation

uses udmConexion;

{$R *.dfm}

{ TfrmRepTicket }

procedure TfrmRepTicket.whereIn(sql: string);
begin
  // where r.IDPAGO in (220, 223,224, 225)
  zroqTicket.SQL.Add('WHERE R.IDTICKET = '+sql);
end;

procedure TfrmRepTicket.qrBaseBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  inherited;
  zroqTicket.Close;
  zroqTicket.Open;
end;

end.
