table 50101 "Chicken Type"
{
    Caption= 'Chicken Type';
    DrillDownPageId = "Chicken Types";
    LookupPageId = "Chicken Types";
    DataClassification = CustomerContent;
    
    fields
    {
        field(1;"Code"; Code[20])
        {
            Caption='Chicken Type Code';
            DataClassification = CustomerContent;
            
        }
        field(2;Description; Text[100])
        {
            Caption='Description';
            DataClassification = CustomerContent;
            
        }
    }
    
    keys
    {
        key(PK; "Code")
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