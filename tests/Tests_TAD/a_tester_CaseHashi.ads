with CaseHashi; use CaseHashi;
-- bibliothèque de gestion de chaînes de caractères
with Ada.Strings.Unbounded; use Ada.Strings.Unbounded;
-- types utilisés pour les tests
with Types_Tests; use Types_Tests;

package a_tester_CaseHashi is

   -- tests TAD CaseHashi
   function Test_CaseHashi_P1 return Boolean; --1
   function Test_CaseHashi_P2 return Boolean; --2
   function Test_CaseHashi_P3 return Boolean; --3
   function Test_CaseHashi_P4 return Boolean; --4
   function Test_CaseHashi_P5 return Boolean; --5
   function Test_CaseHashi_P6 return Boolean; --6
   function Test_CaseHashi_P7 return Boolean; --7
   function Test_CaseHashi_P8 return Boolean; --8
   function Test_CaseHashi_P9a return Boolean; --9
   function Test_CaseHashi_P9b return Boolean; --10
   function Test_CaseHashi_P10a return Boolean; --11
   function Test_CaseHashi_P10b return Boolean; --12
   function Test_CaseHashi_P11a return Boolean; --13
   function Test_CaseHashi_P11b return Boolean; --14
   function Test_CaseHashi_Exception_1 return Boolean; --15
   function Test_CaseHashi_Exception_2 return Boolean; --16
   function Test_CaseHashi_Exception_3 return Boolean; --17
   function Test_CaseHashi_Exception_4 return Boolean; --18

   Les_Tests : constant array (Positive range <>) of Test_Unitaire :=
     ((Test_CaseHashi_P1'Access,
       To_Unbounded_String ("echec de la propriete 1 CaseHashi")),
      (Test_CaseHashi_P2'Access,
       To_Unbounded_String ("echec de la propriete 2 CaseHashi")),
      (Test_CaseHashi_P3'Access,
       To_Unbounded_String ("echec de la propriete 3 CaseHashi")),
      (Test_CaseHashi_P4'Access,
       To_Unbounded_String ("echec de la propriete 4 CaseHashi")),
      (Test_CaseHashi_P5'Access,
       To_Unbounded_String ("echec de la propriete 5 CaseHashi")),
      (Test_CaseHashi_P6'Access,
       To_Unbounded_String ("echec de la propriete 6 CaseHashi")),
      (Test_CaseHashi_P7'Access,
       To_Unbounded_String ("echec de la propriete 7 CaseHashi")),
      (Test_CaseHashi_P8'Access,
       To_Unbounded_String ("echec de la propriete 8 CaseHashi")),
     (Test_CaseHashi_P9a'Access,
       To_Unbounded_String ("echec de la propriete 9a CaseHashi")),
     (Test_CaseHashi_P9b'Access,
       To_Unbounded_String ("echec de la propriete 9b CaseHashi")),
    (Test_CaseHashi_P10a'Access,
       To_Unbounded_String ("echec de la propriete 10a CaseHashi")),
    (Test_CaseHashi_P10b'Access,
       To_Unbounded_String ("echec de la propriete 10b CaseHashi")),
     (Test_CaseHashi_P11a'Access,
       To_Unbounded_String ("echec de la propriete 11a CaseHashi")),
     (Test_CaseHashi_P11b'Access,
       To_Unbounded_String ("echec de la propriete 11b CaseHashi")),
      (Test_CaseHashi_Exception_1'Access,
       To_Unbounded_String ("echec de l'exception 1 CaseHashi")),
      (Test_CaseHashi_Exception_2'Access,
       To_Unbounded_String ("echec de l'exception 2 CaseHashi")),
      (Test_CaseHashi_Exception_3'Access,
       To_Unbounded_String ("echec de l'exception 3 CaseHashi")),
      (Test_CaseHashi_Exception_4'Access,
       To_Unbounded_String ("echec de l'exception 4 CaseHashi"))
     );

   Resultats : array (Les_Tests'Range) of Boolean;

end a_tester_CaseHashi;
