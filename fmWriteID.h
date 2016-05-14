//---------------------------------------------------------------------------

#ifndef fmWriteIDH
#define fmWriteIDH
//---------------------------------------------------------------------------
#include <Classes.hpp>
#include <Controls.hpp>
#include <StdCtrls.hpp>
#include <Forms.hpp>
//---------------------------------------------------------------------------
class TForm1 : public TForm
{
__published:	// IDE-managed Components
	TGroupBox *GroupBox1;
	TComboBox *cmbPort;
	TLabel *Label2;
	TComboBox *ComboBox1;
	TLabel *Label3;
	TGroupBox *GroupBox2;
	TEdit *edtPrefix;
	TLabel *Label1;
	TEdit *edtID;
	TButton *btWrite;
	TGroupBox *GroupBox3;
	TButton *btRead;
	TComboBox *cmbActive;
	TMemo *mmResult;
private:	// User declarations
public:		// User declarations
	__fastcall TForm1(TComponent* Owner);
};
//---------------------------------------------------------------------------
extern PACKAGE TForm1 *Form1;
//---------------------------------------------------------------------------
#endif
