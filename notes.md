## Table relations using TableRelation property

## FILTRED table relation limit records by put one more filter on the table records

## Table relation who is called through an other table relation the fields groups used to define wich filed the linked table should be displayed on user in the Drop-Down // and tiles layout in Brick

// At the end you can defined the fieldgroups, where DropDown is used when this table is used in a TableRelation, and the Brick is used on a List page when you set the layout to a tile layout.

\*\*\* Building CARD LAYOUTS

structure file - metadata > Layout ( Area(content) > group(GroupName - we can have FactBoxes if we want) > field(Name; NameSource)) - actions - programming if we want

--- every group in the cardpage gonna become a Fasttap

\*\*\* Building List LAYOUTS

Structure o f a list page is actually the same the only differences are :

-  area(content) is a repeater() instead of group
-  all the fields in the repeater become a column instead

\*\*\* CALCULATED FIELDS

-  Calculated fields can be implemented by using a special field property, the FieldClass property

-  FlowFields display the result of the calculation described in the CalcFormula Property

-  When we want the flowfields refreshed earlier and we dont want to w8 till the page is refreshed ;
   We can accomplish this by using CALCFIELDS() //CalcFields updates FlowFields.

## field(6; "Chicken Type Description"; text[100])

        {
            Caption = 'Chicken Type Description';
            Editable = false;
            FieldClass = FlowField;
            CalcFormula = lookup("Chicken Type".Description
                                    where(Code = field("Chicken Type Code")));
            // Code  = the field from the table you re using to lookup
            // field("Chicken Type Code") = the field of the table u re using as a link
            // where(Code = field("Chicken Type Code") = LINK from the one to another table
        }

\*\*\* WORK WITH DATA FROM DATABASE

When you're working with data from the database in AL, you'll need to use other statements that are used on fields, such as:

CalcFields

CalcSums

FieldError

Init

TestField

Validate

-- Outside the until statement, the FlowFields are no longer calculated, only within their scope. we can use # CALCFIELDS()

-- If you always want to calculate certain FlowFields (within the function scope), you can use the #SetAutoCalcFields().

\*\*\* Round Function
syntax : NewNumber := Round(Number [, Precision] [, Direction])

'=' - Rounds up or down to the nearest value (default). Values of five or greater are rounded up. Values less than five are rounded down.

'>' - Rounds up

'<' - Rounds down

\*\*\* Documents Tables

> Document Header > No. - Code[20] ==> Pk
> Document Line >
> Document No. - Code[20]==> PK
> Line No. - Integer ===> PK (In one Header we can have multiple lined thats why we need the second PK number)

[field] - "Document Type" for non POSTED documents - Option (DataType) > come in both side Header and Lines

[BC-SECTIONS]

Navigation menus -- You define this area with an area(Sections) control in the page code.

Navigation Bar -- You define this area with an area(embedding) control in the page code.

Action Bar -- You can define the actions by using the three different area() controls that are described in the next section.

[ActionBarAreaControl]
area(creation) --  display an plus sign

area(processing) -- actions in the control will appear > you can group action by using group control (taget pages associated wiht work flow for processing documents such payments or sales)

area(reporting) -- displayed by a default report icon (target report objects)

[ContentArea]
-Headline - Wide data cues -Data cues -Action Cues -Chart -CardPart or List part page -Control add-in

[UsageCategory] ; Search obj by adding UsageCategory property // The UsageCategory property sets the category for a searched page or report. You can select one of following categories:

Administration (SetupPages)

Documents

History (PostedPages)

Lists

None ( used for cardPages)

Reports and Analysis

Tasks

[AdditionalSearchTerms] ; search for a page but with different terms than the name of the page //Users can search for "item," but can also search for "product" or "merchandise."

# [UsageCategory] property is used together with the [ApplicationArea] property

# To create a Role Center page, you need to set the PageType property to [RoleCenter]

//
[ACTIONS]

Actions are displayed at the top of each page

# Under the navigation bar is the command bar. these actions are defined on the CARD and LIST page

{DEFINE ACTIONS IN AL}

- **Navigation** - Corresponds with the Navigate menu.

- **Creation** - Corresponds with the New Document menu in the Actions menu.

- **Reporting** - Corresponds with the Report menu.

- **Processing** - Corresponds with the Process menu.

[Promoted] property; Push action at the start of the bar // Promoted=true; PromotedCategory = category7;
[PromotedCategory] ; has fixed values; -- New, Process, Report, and Category4 through Category20
[PromotedOnly] boolean property ; Promoted but not showing up
[PromotedIsBig] ; change the order of the displayed actions // appear before others

ActionProperties ; -ID -NAME -CAPTION -IMAGE(display an image in the actions)


[OnAction] trigger ; open a page or run code when a user selects an action 
[RunObject] ; same as OnAction trigger // runs the following objects
Page

Report

XMLPort

Codeunit

[RunPageLink];[RunPageMode];[RunPageView];properties use them if u run a page

[RunPageLink]property is used to create a connection between two SOURCE tables of two PAGES
(for example connect he customers card with the sales orders page)

[RunPageMode]; witch mode the page you are running should open// VIEw - EDIT or CREATE
 [InsertAllowed] property is set to [No], running your page in Create mode won't work.
 [RunPageView] ; allows you to put a table filter on your page and to have a filtered result.


 STRUCTURE OF ACTIONS ; ACTIONS > AREA > (ACTIONS or GROUP or SEPARATORS)

 [Importance] property ; value(promoted) ===> used for make visible the fields after a task is collapsed.
                         value(additional) ===> show more / show less button

[PROFILE-OBJECT] ;  allows you to build an individual experience for each user profile



###                                          //////////// IMPORTANT CONCEPT AL ////////////////


identifiers = programming element
variable = local data storage
 !! WE cant declare two variables with the same identifier
 !! When you are defining a variable by an identifier, the first character is preferably an underscore or a letter
 !! Start identifiers with PascalCase (first letter uppercase)

Variables need to have ;

Have an identifier

Have a scope

Have a data type

Be initialized

 -- [Rec]  gives access to the current record and [xRec] to the previous

 -- Declare multiple variables of the same type in the same line, using a comma to separate variable names.

-- [Protected-Variables] ; can be used to make variables accessible between tables and table extensions and between pages and page extensions



