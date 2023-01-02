permissionset 50100 ChickenManagement
{
    Assignable = true;
    Caption = 'ChickenManagement', MaxLength = 30;
    Permissions =
        table "Chicken Type" = X,
        tabledata "Chicken Type" = RMID,
        table "Egg Production Header" = X,
        tabledata "Egg Production Header" = RMID,
        table "Product Line" = X,
        tabledata "Product Line" = RMID,
        table Chicken = X,
        tabledata Chicken = RMID,
        table "Egg Type" = X,
        tabledata "Egg Type" = RMID,
        codeunit Installation = X,
        page "Chicken Management Rolecenter" = X,
        page "Egg Production Line List" = X,
        page "Egg Production List" = X,
        page "Egg Production Document" = X,
        page "Egg Production Subpage" = X,
        page "Egg Types" = X,
        page "Chicken Types" = X,
        page "Chicken List" = X,
        page "Chicken Card" = X;
}
