import ctypes
image_path="C:\\Users\\Denise\\Documents\\GitHub\\ScriptKiddieStarterKit\\raw scripts\\taylorSwiftFaceQuote.jpg"
SPI_SETDESKWALLPAPER = 20
fWinIni = 3
ctypes.windll.user32.SystemParametersInfoA(SPI_SETDESKWALLPAPER, 0, image_path, fWinIni)

