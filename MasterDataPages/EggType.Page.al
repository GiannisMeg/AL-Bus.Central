page  50123 "Egg Types"
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = "Egg Type";
    
    layout
    {
        area(Content)
        {
            repeater(Group)
            {
                // Caption = 'General';
                field("Code"; Rec.Code)
                {
                    ApplicationArea = All;
                     ToolTip = 'Enter the Egg Code';
                    
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the  Egg Type Description field.';
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