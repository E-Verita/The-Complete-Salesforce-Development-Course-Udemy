/*          1. Variable and Datatype Challenge

Category:Apex
Posts:
    1. Demistify Apex Collections
    2. Datatypes and variables in Apex

Category:Lightning
Posts:
    1. Events in Aura framework
    2. Developing reusable components

    You need to print all these posts and their respective categories

*/

// 1. Create and populate set for each category 
Set <String> apexSet = new Set <String>{'Demistify Apex Collections', 'Datatypes and variables in Apex' };
System.debug(apexSet);

Set <String> lightningSet = new Set <String>{'Events in Aura framework', 'Developing reusable components'};
System.debug(lightningSet);


// 2. Create a map with categories as keys and post sets as values
Map<String, Set<String>> categoriesMap = new Map <String, Set<String>>{'Apex' => apexSet, 'Lightning' => lightningSet};

// 3. Print key/value pairs of maps
System.debug(categoriesMap);
