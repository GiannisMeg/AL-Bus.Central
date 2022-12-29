// pageextension 70100 CustListPagExt extends "Customer List"
// {
//     layout
//     {
//         // Add changes to page layout here
//     }

//     actions
//     {
//         // Add changes to page actions here
//         addfirst("&Customer")
//         {
//             action(RunMyCodeunit)
//             {
//                 ApplicationArea = All;
//                 Caption = 'RunMyCodeunit';
//                 RunObject = codeunit MyExampleCodeunit;


//             }
//         }
//     }

//     var
//         myInt: Integer;
// }