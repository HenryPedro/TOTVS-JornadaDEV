PROCEDURE Main()
    SET PROCEDURE TO matematica.prg

    CLS
    QOut("==========================================")
    QOut("     TESTE DA BIBLIOTECA MATEMATICA       ")
    QOut("==========================================")
    QOut("")

    QOut("--- Fatorial ---")
    QOut("Fatorial de 5: " + AllTrim(Str(FatorialN(5))))
    QOut("")

    QOut("--- Numeros Primos ---")
    QOut("7 e primo? : " + Transform(EhPrimo(7), "@Y"))
    QOut("10 e primo? : " + Transform(EhPrimo(10), "@Y"))
    QOut("")

    QOut("--- MDC ---")
    QOut("MDC de 48 e 18: " + AllTrim(Str(MDC(48, 18))))
    QOut("")

    QOut("--- MMC ---")
    QOut("MMC de 12 e 18: " + AllTrim(Str(MMC(12, 18))))
    QOut("")

    QOut("==========================================")
    QOut("Pressione qualquer tecla para fechar...")
    Inkey(0)
RETURN