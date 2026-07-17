REQUEST HB_CODEPAGE_UTF8

FUNCTION Soma(num1, num2)
	LOCAL nResult := num1 + num2
	QQOut(nResult)
RETURN NIL

FUNCTION Main()
    hb_cdpSelect( "UTF8" )
	Soma(10, 15)
RETURN NIL