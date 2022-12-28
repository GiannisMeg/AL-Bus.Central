/// <summary>
/// Table Product Line (ID 50104).
/// </summary>
table 50104 "Product Line"
{
    Caption = 'Product Line';
    DataClassification = CustomerContent;
    DrillDownPageId = "Egg Production Line List";

    fields
    {
        field(1; "Document No."; Code[20])
        {
            Caption = 'Document Number';
            DataClassification = CustomerContent;

        }
        field(2; "Line No."; Integer)
        {
            Caption = 'Line Number';
            DataClassification = CustomerContent;

        }
        field(3; "Chicken No."; Code[20])
        {
            Caption = 'Chicken Number';
            TableRelation = Chicken;
            DataClassification = CustomerContent;

        }
        field(4; "Chicken Description"; Text[100])
        {
            Caption = 'Chicken Description';
            FieldClass = FlowField;
            CalcFormula = lookup(Chicken.Description where("No." = field("Chicken No.")));
            Editable = false;


        }
        field(5; "Egg Production Date"; Date)
        {
            Caption = 'Egg Production Date';
            DataClassification = CustomerContent;

        }
        field(6; "Egg Type Code"; Code[20])
        {
            Caption = 'Egg Type Code';
            DataClassification = CustomerContent;

        }
        field(7; "Egg Type Description"; Text[100])
        {
            Caption = 'Egg Type Description';
            // Editable = false;
            // FieldClass = FlowField;
            // CalcFormula = lookup("Egg Type".Description where(Code = field("Egg Type Code")));

        }
        field(8; "Egg Quantity"; Decimal)
        {
            Caption = 'Quantity';
            DataClassification = CustomerContent;


        }

    }

    keys
    {
        key(PK; "Document No.", "Line No.")
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