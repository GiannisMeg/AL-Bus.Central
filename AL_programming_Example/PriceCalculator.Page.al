page 70102 PriceCalculator
{
    PageType = Card;
    ApplicationArea = All;
    UsageCategory = Administration;


    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                // field(Calculator; "Calculator")
                // {
                //     ApplicationArea = All;

                // }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Execute)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    if Quantity = 0 then
                        exit;
                    Result := Quantity * Price;
                    GrandTotal += Result;
                    if Result < 0 then
                        TotalCredits += Result
                    else
                        TotalSales += Result;
                end;
            }
            action(Clear)
            {
                ApplicationArea = All;

                trigger OnAction()
                begin
                    ClearAll();
                end;
            }
        }
    }

    var
        Quantity, Price, Result, TotalSales, TotalCredits, GrandTotal : Decimal;
}