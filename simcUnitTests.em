macro runAllUnitTests()
{
    unitTest_str_lstrip()
    unitTest_str_rstrip()
    unitTest_str_contain()
    unitTest_str_only_contain()
    unitTest_str_strip()
    unitTest_str_begin_with()
    unitTest_str_end_with()
    unitTest_str_rep()
    unitTest_str_padding()
    unitTest_str_subtract()
}
            
macro unitTest_str_subtract()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_subtract(cat("success", sSub), sSub)

    if s == "success"
       inf("__str_subtract() passed")
    else
       err("__str_subtract() failed")    
}

macro unitTest_str_padding()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_padding(sSub, strlen(sSub)+3)

    if s == cat(sSub, "   ")
       inf("__str_padding() passed")
    else
       err("__str_padding() failed")
}

macro unitTest_str_rep()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_rep(sSub, 3)

    if s == cat(cat(sSub, sSub), sSub)
       inf("__str_rep() passed")
    else
       err("__str_rep() failed")    
}

macro unitTest_str_begin_with()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_begin_with(cat(sSub, "success"), sSub)

    if s
       inf("__str_begin_with() passed")
    else
       err("__str_begin_with() failed")    
}

macro unitTest_str_end_with()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_end_with(cat("success", sSub), sSub)

    if s
       inf("__str_end_with() passed")
    else
       err("__str_end_with() failed")    
}


macro unitTest_str_lstrip()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_lstrip(cat(sSub, "success"), sSub)
    
    if s == "success"
       inf("__str_lstrip() passed")
    else
       err("__str_lstrip() failed")    
}

macro unitTest_str_rstrip()
{
    sSub = " * #include <IfAaSrio.h>"
    
    s = __str_rstrip(cat("success", sSub), sSub)

    if s == "success"
       inf("__str_rstrip() passed")
    else
       err("__str_rstrip() failed")    
}

macro unitTest_str_contain()
{
    sStr = ">"
    sSubStr = ">"
    if !__str_contain(sStr, sSubStr)
        err("__str_contain() failed")
        
    sStr = " * #include <IfAaSrio.h>"
    sSubStr = " * #incl >"
    if __str_contain(sStr, sSubStr)
        err("__str_contain() failed")

    inf("__str_contain() passed")
}

macro unitTest_str_only_contain()
{
    sStr = "> !#$%%^&&*()"
    sSubStr = ")(*&^%$#! >"
    
    if !__str_only_contain(sStr, sSubStr)
        err("__str_only_contain() failed")
        
    sStr = " * #include <IfAaSrio.h>"
    sSubStr = " * #incl <"
    if __str_contain(sStr, sSubStr)
        err("__str_only_contain() failed")

    inf("__str_only_contain() passed")

}
macro unitTest_str_strip()
{
    tag = " * #/<>"
    s = cat(cat(tag, "success"), tag)
    
    s = __str_strip(s, tag)
    
    if s == "success"
       inf("__str_strip() passed")
    else
       err("__str_strip() failed")    

}

macro inf(message)
{
    msg(message)
}
macro err(message)
{
    msg(message)
    stop
}
