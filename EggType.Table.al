table 50102 "Egg Type"
{
    Caption = 'Egg Type';
    // DrillDownPageId = "Egg Type";
    // LookupPageId = "Egg Type";
    DataClassification = CustomerContent;
    

    
    fields
    {
        field(1;"Code"; Code[20])
        {
            Caption= 'Egg Type Code';
            DataClassification = CustomerContent;
            
        }
        field(2;Description; Text[100])
        {
            Caption= ' Egg Type Description';
            DataClassification = CustomerContent;
            
        }
    }
    
    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
    
    var
        myInt: Integer;
    
    trigger OnInsert()
    begin
        
    end;
    
    trigger OnModify()
    begin
        
    end;
    
    trigger OnDelete()
    begin
        
    end;
    
    trigger OnRename()
    begin
        
    end;
    
}