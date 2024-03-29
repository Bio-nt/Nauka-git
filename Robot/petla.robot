
*** Variables ***
${string}    piesek
@{list}    pierwszy    drugi    trzeci    czwarty    piaty
@{list_of_numbers}   1   2    3    4    5
&{dictionary}    slowo=${string}    numer=30    lista=@{list}
@{imiona}    Kamil    Marta    Augusto    Marek
@{nazwiska}    Kowalski    malinowski    Nowak    nijaki
*** Test Cases ***
Nest Loops
    @{letters}    Create List    a    b    c    d
    Log    ${letters}
    @{numbers}    Create List    ${1}    ${2}    ${3}
    Log    ${numbers}
    FOR    ${letter}   IN    @{letters}
        FOR    ${number}    IN    @{numbers}
            Log    ${letter} ${number}
        END
    END
For Loop In Dictionary
    Log    ${dictionary}
    FOR   ${keys_and_values}    IN    &{dictionary}
        Log     ${keys_and_values}
    END
For Loop In Range With Index
    FOR    ${i}    IN RANGE    4
        Log    ${imiona}[${i}] ${nazwiska}[${i}]
    END
For Loop in List
    FOR   ${item}   IN    @{list_of_numbers}
        IF    ${item} == 3    Log    ${item}
    END

For Loop1
    FOR  ${name}  IN    @{imiona}
        IF   $name == 'Augusto'  Log   ${name}
    END

For Loop2
    @{my_list}  create list   Mama  Tata    Pies    Kot   Ptak   I coś jeszcze
    FOR    ${name}  IN   @{my_list}
        IF  $name == 'Pies'   BREAK
        Log   ${name}
     END

For Loop3
    @{my_list}  create list   Mama  Tata    Pies    Kot   Ptak   I coś jeszcze
    FOR    ${name}  IN   @{my_list}
        IF  $name == 'Pies'   CONTINUE
        Log   ${name}
     END

While loop
    ${index}   set variable  10
    WHILE   ${index} > 0
        Log   ${index}
        ${index}  evaluate  ${index} - 1
    END

For Loop In Range 10
    FOR    ${i}    IN RANGE    10
        Log    ${i}
    END
For Loop In Range 4 10
    FOR    ${i}    IN RANGE    4    10
        Log    ${i}
    END
For Loop In Range 4 30 3
    FOR    ${i}    IN RANGE    4    30    3
        Log    ${i}
    END