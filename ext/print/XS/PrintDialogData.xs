#############################################################################
## Name:        ext/print/XS/PrintDialogData.xs
## Purpose:     XS for Wx::PrintDialogData
## Author:      Mattia Barbon
## Modified by:
## Created:     02/06/2001
## RCS-ID:      $Id: PrintDialogData.xs,v 1.5 2005/01/09 23:57:02 mbarbon Exp $
## Copyright:   (c) 2001, 2004-2005 Mattia Barbon
## Licence:     This program is free software; you can redistribute it and/or
##              modify it under the same terms as Perl itself
#############################################################################

#include <wx/cmndata.h>

MODULE=Wx PACKAGE=Wx::PrintDialogData

wxPrintDialogData*
wxPrintDialogData::new()

void
wxPrintDialogData::Destroy()
  CODE:
    delete THIS;

void
wxPrintDialogData::EnableHelp( enable )
    bool enable

void
wxPrintDialogData::EnablePageNumbers( enable )
    bool enable

void
wxPrintDialogData::EnablePrintToFile( enable )
     bool enable

void
wxPrintDialogData::EnableSelection( enable )
    bool enable

bool
wxPrintDialogData::GetAllPages()

bool
wxPrintDialogData::GetCollate()

int
wxPrintDialogData::GetFromPage()

int
wxPrintDialogData::GetMaxPage()

int
wxPrintDialogData::GetMinPage()

int
wxPrintDialogData::GetNoCopies()

wxPrintData*
wxPrintDialogData::GetPrintData()
  CODE:
    RETVAL = &THIS->GetPrintData();
  OUTPUT:
    RETVAL

bool
wxPrintDialogData::GetPrintToFile()

bool
wxPrintDialogData::GetSelection()

int
wxPrintDialogData::GetToPage()

void
wxPrintDialogData::SetCollate( collate )
    bool collate

void
wxPrintDialogData::SetFromPage( page )
    int page

void
wxPrintDialogData::SetMaxPage( page )
    int page

void
wxPrintDialogData::SetMinPage( page )
    int page

void
wxPrintDialogData::SetNoCopies( n )
    int n

void
wxPrintDialogData::SetPrintData( printData )
    wxPrintData* printData
  CODE:
    THIS->SetPrintData( *printData );

void
wxPrintDialogData::SetPrintToFile( flag )
    bool flag

void
wxPrintDialogData::SetSelection( selection )
    bool selection

#if WXPERL_W_VERSION_GE( 2, 5, 3 ) && !defined( __WXMAC__ )

void
wxPrintDialogData::SetSetupDialog( flag )
    bool flag

#endif

void
wxPrintDialogData::SetToPage( page )
    int page
