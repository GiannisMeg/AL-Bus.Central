// page 70100 MyExamplePage
// {
//     PageType = Card;
//     ApplicationArea = All;
//     UsageCategory = Administration;
//     Caption = 'MyExamplePage';

//     layout
//     {
//         area(Content)
//         {
//             group(Input)
//             {
//                 Caption = 'Input';
//                 field(FisrstValue; FirstValue)
//                 {
//                     ApplicationArea = All;

//                 }
//                 field(SecondValue; SecondValue)
//                 {
//                     ApplicationArea = All;

//                 }
//             }
//             group(Output)
//             {
//                 Caption = 'Output';
//                 field(Result; Result)
//                 {
//                     ApplicationArea = All;

//                 }
//                 field(IsBigger; IsBigger)
//                 {
//                     ApplicationArea = All;

//                 }
//                 field(IsSmaller; IsSmaller)
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
//             action(Plus)
//             {
//                 ApplicationArea = All;
//                 Caption = '+';
//                 Image = Calculate;

//                 trigger OnAction()
//                 begin
//                     Result := FirstValue + SecondValue;
//                 end;
//             }
//         }
//     }

//     var
//         myInt: Integer;
//         // declare a variable for every textbos
//         FirstValue, SecondValue, Result : Integer;
//         IsBigger, IsSmaller : Boolean; 
// }