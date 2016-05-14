//---------------------------------------------------------------------------

#include <vcl.h>
#pragma hdrstop

#include "ufmWriteID.h"
//---------------------------------------------------------------------------
#pragma package(smart_init)
#pragma resource "*.dfm"
TfmWriteID *fmWriteID;
//---------------------------------------------------------------------------
__fastcall TfmWriteID::TfmWriteID(TComponent* Owner)
	: TForm(Owner)
{
}
//---------------------------------------------------------------------------
void __fastcall TfmWriteID::FormCreate(TObject *Sender)
{
	for (int i = 1; i <= 50; i++) {
		String port = "\\\\.\\COM" +  IntToStr(i);
		HANDLE hCom = CreateFile(port.t_str(), GENERIC_READ | GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, 0);
		if (hCom == INVALID_HANDLE_VALUE) {
			continue;
		}
		CloseHandle(hCom);
		cmbPort->Items->Add(IntToStr(i));
	}
	cmbPort->ItemIndex = 0;
}
//---------------------------------------------------------------------------
void __fastcall TfmWriteID::btWriteClick(TObject *Sender)
{
	String cmd = "FF FE 0B 01";
	String prefix = Trim(edtPrefix->Text);
	WideChar *c = prefix.w_str();
	for (int i = 0; i < prefix.Length(); i++) {
	   cmd = cmd + " " + IntToHex(c[i], 2);
	}
	String date = Trim(edtDate->Text);
	for (int i = 0; i < date.Length()-1; i=i+2) {
	   cmd = cmd + " " + IntToHex(StrToInt(date.SubString(i+1, 2)), 2);
	}

	cmd = cmd + " " + IntToHex(StrToInt(Trim(edtID->Text)), 4);
	mmLog->Lines->Add(DateTimeToStr(Now()) + " Send:" + cmd);

	unsigned int len;
	unsigned char *command = convertHexCommand(cmd, &len);
	unsigned char result[4096];
	unsigned int result_len = 4096;
	if (check()) {
		sendCmdToComPort(cmbPort->Text, StrToInt(cmbBaudRate->Text), command, len, result, result_len);
	}
	delete command;
	mmLog->Lines->Add(DateTimeToStr(Now()) + " Recieve:" + convertHexResult(result, result_len));

}
//---------------------------------------------------------------------------

bool __fastcall TfmWriteID::check()
{
	if (cmbPort->Text == "") {
	   ShowMessage("端口号不能为空");
	   return false;
	}
	return true;
}
//---------------------------------------------------------------------------
void __fastcall TfmWriteID::btReadClick(TObject *Sender)
{
	String sendCommand = "FF FE 02 00 00";
	if (check()) {
		unsigned int len;
		String result_str;
		char* command = convertHexCommand(sendCommand, &len);
		mmLog->Lines->Add(DateTimeToStr(Now()) + " Send:" + sendCommand);
		char result[4096];
		unsigned int result_size;
		sendCmdToComPort(cmbPort->Text, StrToInt(cmbBaudRate->Text), command, len, result, result_size);
		delete command;
		if (cmbActive->ItemIndex == 1) {
			result_str = convertHexResult(result, result_size);
		} else {
			for (unsigned int i = 0;i < result_size && result_size <= 4096; i++) {
			   result_str = result_str + (char)(result[i]);
			}
		}
		mmLog->Lines->Add(DateTimeToStr(Now()) + " Recieve:" + result_str);
		mmResult->Lines->Add(DateTimeToStr(Now()) + " read ModNo:" + parseModNo(result_str));
	}
}
//---------------------------------------------------------------------------

void __fastcall TfmWriteID::Button2Click(TObject *Sender)
{
	mmResult->Clear();
}
//---------------------------------------------------------------------------

void __fastcall TfmWriteID::Button1Click(TObject *Sender)
{
	mmLog->Clear();
}
//---------------------------------------------------------------------------

