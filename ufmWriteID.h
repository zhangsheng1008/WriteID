//---------------------------------------------------------------------------

#ifndef ufmWriteIDH
#define ufmWriteIDH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
#include "util.h"
#include <ExtCtrls.hpp>
//---------------------------------------------------------------------------
class TfmWriteID : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TComboBox *cmbPort;
	TLabel *Label2;
	TComboBox *cmbBaudRate;
	TLabel *Label3;
	TGroupBox *GroupBox2;
	TEdit *edtPrefix;
	TLabel *Label1;
	TEdit *edtDate;
	TButton *btWrite;
	TGroupBox *GroupBox3;
	TButton *btRead;
	TComboBox *cmbActive;
	TMemo *mmLog;
	TMemo *mmResult;
	TEdit *edtID;
	TPanel *Panel1;
	TLabel *Label4;
	TButton *Button1;
	TLabel *Label5;
	TButton *Button2;
	void __fastcall FormCreate(TObject *Sender);
	void __fastcall btWriteClick(TObject *Sender);
	void __fastcall btReadClick(TObject *Sender);
	void __fastcall Button2Click(TObject *Sender);
	void __fastcall Button1Click(TObject *Sender);
private:	// User declarations
	bool __fastcall check();

public:		// User declarations
	__fastcall TfmWriteID(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TfmWriteID *fmWriteID;
//---------------------------------------------------------------------------
#endif
