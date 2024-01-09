pragma Ada_2012;
with Ada.Text_IO; use Ada.Text_IO;
package body CaseHashi is

   --------------------
   -- ConstruireCase --
   --------------------
   
   function ConstruireCase(C: in Type_Coordonnee) return Type_CaseHashi is
      ca : Type_CaseHashi;
   begin
      ca.C := C;
      ca.T := MER;
      return ca;
   end ConstruireCase;

   ---------------------
   -- ObtenirTypeCase --
   ---------------------
   
   function ObtenirTypeCase(C: in Type_CaseHashi) return Type_TypeCase is
   begin
      return C.T;
   end ObtenirTypeCase;

   -----------------------
   -- ObtenirCoordonnee --
   -----------------------
   
   function ObtenirCoordonnee(C: in Type_CaseHashi) return Type_Coordonnee is
   begin
      return C.C;
   end ObtenirCoordonnee;

   -----------------
   -- ObtennirIle --
   -----------------
   
   function ObtenirIle(C: in Type_CaseHashi) return Type_Ile is
   begin
      if C.T = NOEUD then
         return C.I;
      else
         raise TYPE_INCOMPATIBLE;
      end if;
   end ObtenirIle;

   -----------------
   -- ObtenirPont --
   -----------------
   
   function ObtenirPont(C: in Type_CaseHashi) return Type_Pont is
   begin
      if C.T = ARETE then
         return C.P;
      else
         raise TYPE_INCOMPATIBLE;
      end if;
   end ObtenirPont;

   -----------------
   -- modifierIle --
   -----------------
   
   function modifierIle(C: in Type_CaseHashi; I: in Type_Ile) return Type_CaseHashi is
   begin
      
      
      
      if C.T = NOEUD then
         
         return (C.C, C.T, I, C.P);
      else
         Put("dest");
         raise TYPE_INCOMPATIBLE;
      end if;
   end modifierIle;

   ------------------
   -- modifierPont --
   ------------------
   
   function modifierPont(C: in Type_CaseHashi; P: in Type_Pont) return Type_CaseHashi is
   begin
      if C.T = ARETE then
         return (C.C, C.T, C.I, P);
      else
         raise TYPE_INCOMPATIBLE;
      end if;
   end modifierPont;

   ---------
   -- "=" --
   ---------
   
   function "="(C1: in Type_CaseHashi; C2: in Type_CaseHashi) return Boolean is
   begin
      return C1.C = C2.C and C1.T = C2.T and C1.I = C2.I and C1.P = C2.P;
   end "=";

end CaseHashi;
