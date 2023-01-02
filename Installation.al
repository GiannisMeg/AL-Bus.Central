codeunit 50100 Installation
{
      Subtype = Install;

    trigger OnInstallAppPerCompany()
    begin
        InsertDefaultChickenTypes();
    end;
    
    var
        myInt: Integer;

    local procedure InsertDefaultChickenTypes()
    var
    ChickenType : Record "Chicken Type";
    begin
        Clear(ChickenType);
        //If the ChickenType table is not empty, skips the rest of the code.
        if not ChickenType.IsEmpty then exit;
        //Calls the InsertChickenType procedure to insert a Chicken Type
        //Repeats this so in total 3 Chicken Types are inserted.
                        InsertChickenType('ChickenType01', 'ChickenType01');
                        InsertChickenType('ChickenType02', 'ChickenType02');
                        InsertChickenType('ChickenType03', 'ChickenType03');
                    
                    
                    
    end;
    local procedure InsertChickenType(ChickenTypeCode: Code[20];ChickenTypeDescription: Text[50])
    var
    ChickenType: Record "Chicken Type";
    begin
        //Clears the ChickenType variable
        Clear(ChickenType);
        //Assigns the parameter ChickenTypeCode to the Code field
        ChickenType.Code := ChickenTypeCode;
        //Assigns the parameter ChickenTypeDescription to the Description field
        ChickenType.Description := ChickenTypeDescription;
        //Inserts the record in the Chicken Type table
        ChickenType.Insert();

    end;
}