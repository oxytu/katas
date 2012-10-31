Feature: Specification of a text-based tree and the corresponding parser

  Scenario: A simple tree with properties only on nodes
    Given a tree structure <Structure>
    Then  it should be converted to a ruby <DataType>

    Examples:

      Structure

        +- A [name: "A node"]
        |  +- B [name: "Child of A node"]
        |  +- C [name: "Another child of A node"]
        |     +- D [name: "And a child on third level"]
        +- E
        +- F

      DataType

        [ [ "A",
            { name: "A node" },
            [ [ "B",
                { name: "Child of A node" } ],
              [ "C",
                { name: "Another child of A node" },
                [  [ "D",
                     { name: "And a child on third level" }
                ]  ]
              ]
            ]
          ]
        ]




+-[name: "Root edge"]- A [name: "Vehicle"]
  +-[name: "extends"]- B [name: "Car"]
  | +-[name: "extends"]- C [name: "BMW"]
  | +-[name: "extends"]- D [name: "Mercedes"]
  |   +-[name: "extends"]- E [name: "A-Class"]
  |   +-[name: "extends"]- F [name: "B-Class"]
  |   +-[name: "extends"]- G [name: "C-Class"]
  +-[name: "extends"]- H [name: "Bicycle"]

