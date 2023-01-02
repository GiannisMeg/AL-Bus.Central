table 50100 Chicken       
{
    Caption ='Chicken';
    DataClassification = CustomerContent;
    
    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            DataClassification = CustomerContent;
            
        }
        field(2; Description; Text[100])
        {
            Caption = 'Description';
            DataClassification = CustomerContent;
            
        }
        field(3; "Chicken Type Code"; Code[20])
        {
            Caption = 'Chicken Type Code';
            DataClassification = CustomerContent;
            TableRelation = "Chicken Type";
            trigger OnValidate()
            begin
               Calcfields("Chicken Type Description") 
            end;
            
        }
        field(4; "Last Date Modified"; Date)
        {
            Caption = 'Last Date Modified';
            DataClassification = CustomerContent;
            
        }
        field(5; Picture; MediaSet)
        {
            Caption = 'Picture';
            DataClassification = CustomerContent;
            
        }
        field(6; "Chicken Type Description"; Text[100])
        {
            Caption = 'Chicken Type Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Chicken Type".Description
                                    where(Code = field("Chicken Type Code")));
            
        }
        // add two diff types of filters Date and egg type that can be combined in the filter section
        field(7; "Number of Egg Produced"; Decimal)
        {
            Caption= 'Number of Egg Produced';
            FieldClass = FlowField;
            CalcFormula = sum("Product Line"."Egg Quantity" 
                                where("Chicken No." = field("No."),
                                        "Egg Production Date" = field (DateFilter) , 
                                         "Egg Type Code" = field("Egg Type Filter"))); 
            Editable = false;
        }
        field(8; DateFilter; Date)
        {
            Caption = 'Date Filter';
            FieldClass = FlowFilter;
           
        }
        field(9; "Egg Type Filter"; Code[20])
        {
            Caption = 'Egg Type Filter';
            FieldClass = FlowFilter;
            TableRelation = "Egg Type";
        }

    }
    
    
       

    keys
    {
        key(PK; "No.")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown;Description,"Chicken Type Code" )
        {

        }
        fieldgroup(Brick;Description, Picture )
        {

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
    var 
     EggProductionLine : Record "Product Line";
     ChickenHasEggsErr: Label 'The Chicken %1 %2 has eggs, you can not delete it.',Comment = '%1 = Chicken No.; %2 = Chicken Description';
    begin
        // EggProductionLine.DeleteAll();
        //Clears the EggProductionLine variable
        clear(EggProductionLine);
        //Filters the EggProductionLine table on the current Chicken, using it's number
        EggProductionLine.SetRange("Chicken No.",rec."No.");
        // if its not Empty then generate an error
        if not EggProductionLine.IsEmpty then
        Error(ChickenHasEggsErr, Rec."No.",Rec.Description);
     
        exit;
        
    end;
    trigger OnRename()
    begin
        
    end;
    
}