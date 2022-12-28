/// <summary>
/// Page Egg Production Subpage (ID 50102).
/// </summary>
page 50102 "Egg Production Subpage"
{
    PageType = ListPart;
    ApplicationArea = All;
    SourceTable = "Product Line";
    AutoSplitKey = true;
    DelayedInsert = true;


    layout
    {
        area(Content)
        {
            repeater(General)
            {
                Caption = 'General';

                field("Chicken No."; Rec."Chicken No.")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken No.';
                    ToolTip = 'Specifies the value of the Chicken Number field.';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Description';
                    ToolTip = 'Specifies the value of the Chicken Description field.';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ApplicationArea = All;
                    Caption = 'Production Date';
                    ToolTip = 'Specifies the value of the Egg Production Date field.';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ApplicationArea = All;
                    Caption = 'Egg Type Code';
                    ToolTip = 'Specifies the value of the Egg Type Code field.';
                }
                field("Egg Quantity"; Rec."Egg Quantity")
                {
                    ApplicationArea = All;
                    Caption = 'Quantity';
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
            }
        }
        // area(Factboxes)
        // {

        // }
    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;

                trigger OnAction();
                begin

                end;
            }
        }
    }
}