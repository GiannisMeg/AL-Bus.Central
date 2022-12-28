/// <summary>
/// Page Chicken Management Rolecenter (ID 50125).
/// </summary>
page 50125 "Chicken Management Rolecenter"
{
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            part(HeadLineOrderProcessor; "Headline RC Order Processor")
            {
                ApplicationArea = All;

            }
            part(O365CustomerActivity; "O365 Customer Activity Page")
            {
                ApplicationArea = All;

            }
            part(O365Activities; "O365 Activities")
            {
                ApplicationArea = All;

            }

        }
    }

    actions
    {
        area(Processing)
        {
            // action(ActionName)
            // {
            //     ApplicationArea = All;

            //     trigger OnAction()
            //     begin

            //     end;
            // }
        }
        area(Sections)
        {
            group(MasterData)
            {
                Caption = 'Master Data';
                Image = RegisteredDocs;

                action(ChickenList)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken List';
                    RunObject = page "Chicken List";
                    // Image = Image;
                }
                action(ChickenTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Chicken Types';
                    RunObject = page "Chicken Types";
                    // Image = Image;
                }
            }
            group(Documents)
            {
                Caption = 'Documents';
                Image = List;

                action(EggProductionDocument)
                {
                    ApplicationArea = All;
                    Caption = 'Egg Production';
                    RunObject = page "Egg Production Document";
                    // Image = Image;
                }
                action(EggTypes)
                {
                    ApplicationArea = All;
                    Caption = 'Egg Types';
                    RunObject = page "Egg Types";
                    // Image = Image;
                }
            }
        }
        area(Embedding)
        {
            action(eChickenList)
            {
                ApplicationArea = All;
                Caption = 'Chicken List';
                RunObject = page "Chicken List";
                // Image = Image;

            }
            action(eChickenTypes)
            {
                ApplicationArea = All;
                Caption = 'Chicken Types';
                RunObject = page "Chicken Types";
                // Image = Image;

            }
            action(eEggProduction)
            {
                ApplicationArea = All;
                Caption = 'Egg Production';
                RunObject = page "Egg Production Document";
                // Image = Image;

            }
            action(eEggTypes)
            {
                ApplicationArea = All;
                Caption = 'Egg Types';
                RunObject = page "Egg Types";
                // Image = Image;

            }
        }
    }

    var
        myInt: Integer;
}