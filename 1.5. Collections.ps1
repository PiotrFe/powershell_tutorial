#-------------------------------
#Array
$arr = 0, 1, 2, 3, 4
$arr.GetType()

$arr2 = @(10, 12, 13, 14, 15)

$arr2 | Get-Member
$arr2.Length #get length
$arr2[2] #get item
$arr2[0..2] #get range

$arr_total = $arr + $arr2
$arr_total.Length
$arr_total.Contains(2)
$arr_total.IndexOf(1)
$arr_total.IsFixedSize

#-------------------------------
#ArrayList

#Use case: frequently add and remove items
#Class: System.Collections.ArrayList

$student_list = New-Object System.Collections.ArrayList
$student_list.Add("Peter")
$student_list.AddRange(("Marie", "Jenna"))

$student_list | Get-Member

#-------------------------------
#HashTable - optimized for sarching

$simple_hash = @{
    "key1" = "value1";
    "key2" = "value2";
    "key3" = "value3";
}

$simple_hash.Count
$simple_hash.Keys
$simple_hash.Values

$simple_hash.key1
$simple_hash["key1"]
$simple_hash.IsFixedSize

$simple_hash.add("key4", "value4")
$simple_hash.remove("key4")

#storing in order
[hashtable]$hash = [ordered]@{
    1 = "value";
    3 = "value3";
    2 = "value2"

}



