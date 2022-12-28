/// <summary>
/// Page Egg Production Line List (ID 50103).
/// </summary>
page 50103 "Egg Production Line List"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = None;
    SourceTable = "Product Line";
    Editable = false;


    layout
    {
        area(Content)
        {
            repeater(General)
            {

                field("Chicken No."; Rec."Chicken No.")
                {
                    ToolTip = 'Specifies the value of the Chicken Number field.';
                }
                field("Chicken Description"; Rec."Chicken Description")
                {
                    ToolTip = 'Specifies the value of the Chicken Description field.';
                }
                field("Document No."; Rec."Document No.")
                {
                    ToolTip = 'Specifies the value of the Document Number field.';
                }
                field("Egg Production Date"; Rec."Egg Production Date")
                {
                    ToolTip = 'Specifies the value of the Egg Production Date field.';
                }
                field("Egg Type Code"; Rec."Egg Type Code")
                {
                    ToolTip = 'Specifies the value of the Egg Type Code field.';
                }
                field("Egg Quantity"; Rec."Egg Quantity")
                {
                    ToolTip = 'Specifies the value of the Quantity field.';
                }
            }
        }
        area(Factboxes)
        {

        }
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