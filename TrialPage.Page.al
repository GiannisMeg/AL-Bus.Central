// page  50110 "PLA Customer Card"
// {
//     Caption = 'Customer Card';
//     PageType = Card;
//     // AppArea has to do with licencing
//     // otions basic & suite (basic and pre,iums licencies)
//     ApplicationArea = All; // 1.replace MenuSuites 2. When you provide it to a page tyou are able to search for it BC 
//     UsageCategory = Administration;  // determines where is to be found under wich category
//     SourceTable = Customer;
//     Editable = true; // card page always true the main card Fasle

//     layout
//     {
//         area(Content)
//         {
//             group(General)
//             {
//                 Caption='General'
//                 field(Name; Name)
//                 {
//                     ApplicationArea = All;

//                 }
//                 // Mostly we give the name of the control the same of the field
//                 field("No."; "No.")
//                 {
//                     ApplicationArea = All;

//                 }
//             }
//         }
//     }

//     actions
//     {
//         area(Processing)
//         {
//             action(ActionName)
//             {
//                 ApplicationArea = All;

//                 trigger OnAction()
//                 begin

//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
// }


// XLIFF file for translate to different laguages (Customizarion properties)

// <xliff version="1.2" xmlns="urn:oasis:names:tc:xliff:document:1.2" xmlns:xsi="https://www.w3.org/2001/XMLSchema-instance" xsi:schemaLocation="urn:oasis:names:tc:xliff:document:1.2 xliff-core-1.2-transitional.xsd">
//   <file datatype="xml" source-language="en-US" target-language="da-DK" original="profiles">
//     <body>
//       <group id="body">
//         <trans-unit id="Profile 3523819904 - Property 4111922599" size-unit="char" translate="yes" xml:space="preserve">
//           <source>The Boss</source>
//           <target>Chefen</target>
//           <note from="Developer" annotates="general" priority="2"></note>
//           <note from="Xliff Generator" annotates="general" priority="3">Profile TheBoss - Property ProfileDescription</note>
//         </trans-unit>
//         <trans-unit id="Profile 3523819904 - Property 2879900210" size-unit="char" translate="yes" xml:space="preserve">
//           <source>Boss</source>
//           <target>Chef</target>
//           <note from="Developer" annotates="general" priority="2"></note>
//           <note from="Xliff Generator" annotates="general" priority="3">Profile TheBoss - Property Caption</note>
//       </group>
//     </body>
//   </file>
// </xliff>