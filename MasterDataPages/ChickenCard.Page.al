page 50120 "Chicken Card"
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = "Chicken";
    Editable = true;
    
    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption ='General';
                field("Chicken Type Description"; Rec."Chicken Type Description")
                {
                     ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Chicken Type Description field.';
                }
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                     ToolTip = 'Enter the Chicken Number';
                     
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                     ToolTip = 'Enter the Chicken Description';
                     
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                     ToolTip = ' Enter the Chicken Type Code here.';
                     
                }
                field("Last Date Modified"; Rec."Last Date Modified")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Last Date Modified field.';
                }
                field(Picture; Rec.Picture)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Picture field.';
                }
                field("Number of Egg Produced"; Rec."Number of Egg Produced")
                {
                    Caption = 'Number of Egg Produced';
                     ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Egg Produced field.';
                }
            }
        }
    }
    
    actions
    {
        area(Processing)
        {
            action(ActionName)
            {
                ApplicationArea = All;
                
                trigger OnAction()
                begin
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}