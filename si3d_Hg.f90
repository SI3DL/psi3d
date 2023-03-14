!************************************************************************
                          MODULE si3d_Hg
!************************************************************************
!
!  Purpose: Procedures that implement routines related to the modelling
!           of ecological processees for mercury
!
!-------------------------------------------------------------------------

  USE si3d_types
  USE si3d_ecomod
  USE si3d_sed

  IMPLICIT NONE
  SAVE

CONTAINS

!*********************************************************************
SUBROUTINE sourceHg(kwq,lwq)
!********************************************************************
!
!  Purpose: if dissolved oxygen is modeled, this subroutine
!  calculates source and sink terms that depend on dissolved
!  oxygen concentrations
!
!-----------------------------------------------------------------------

  ! ... Arguments
  INTEGER, INTENT (IN) :: kwq,lwq

  !. . . Local Variables
  REAL		::	 Tk, lnOS, OS, ln_Pwv, Pwv, theta2, Patm

  !Try









!************************************************************************
                        END MODULE si3d_Hg
!************************************************************************