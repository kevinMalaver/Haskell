import System.Random

aleatorio n = randomRIO (0, n)
	
escribir::String->IO ()
escribir m= do putStr m

mostrarNumero :: Int-> IO()
mostrarNumero x = do print x

			   
comparar::Int -> Int -> IO ()
comparar x y
	= do 	
	if x==y then escribir "\nEmpate\n"
	else 
		if x < y then (do 
                         escribir "\nGano el jugador 2\n" )
		else (do escribir "\nGano el jugador 1\n" )

juego :: IO ()
juego = do
	x <- randomRIO (1,6)
	y <- randomRIO (1,6)
	
	
	escribir "Jugador 1\nNumero de dado "
	mostrarNumero x
	escribir "\nJugador 2\nNumero de dado "
	mostrarNumero y
	comparar x y
