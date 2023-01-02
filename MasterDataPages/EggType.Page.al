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
        area(Creation)
        {
            action(InsertDefaultEggTypes)
            {
                ApplicationArea = All;
                ToolTip ='Insert the default Egg Types';
                Image = Action;
                
                trigger OnAction()
                var
                EggType : Record "Egg Type";
                EggTypeNotEmptyErr: Label 'There are already Egg Types in the table.';
                begin
                    if EggType.IsEmpty then begin
                        rec.InsertEggType('EggType01', 'Egg Type01');
                        rec.InsertEggType('EggType02', 'Egg Type02');
                        rec.InsertEggType('EggType03', 'Egg Type03');
                    end
                    else
                    
                    Error(EggTypeNotEmptyErr);
                    
                end;
            }
        }
    }
    
    var
        myInt: Integer;
}