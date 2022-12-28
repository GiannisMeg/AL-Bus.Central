//6. Make sure you link the Chicken List page to the Chicken Card page via the appropriate property

page 50121 "Chicken List"
{
    //corresponding link CardPageId property
    CardPageID = "Chicken Card";
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Chicken";
    Editable=false;
    
    layout
    {
        area(Content)
        {
           repeater(Group)
            {
                
                // Caption ='General';
                field("No."; Rec."No.")
                {
                    ApplicationArea = All;
                     ToolTip = 'Enter the Chicken Number';
                     
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description or Name.';
                }
                field("Chicken Type Code"; Rec."Chicken Type Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'This is a Chicken Type.';
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