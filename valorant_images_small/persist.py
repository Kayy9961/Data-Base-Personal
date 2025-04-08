import os
import sys
import subprocess
import time
import psutil
from pathlib import Path
from playwright.sync_api import sync_playwright

BROWSERS = [
    {
        "name": "chrome",
        "type": "chromium",
        "process_name": "chrome.exe",
        "flag": "--app=my_app_chrome",
        "paths": [
            r"C:\Program Files\Google\Chrome\Application\chrome.exe",
            r"C:\Program Files (x86)\Google\Chrome\Application\chrome.exe",
            fr"C:\Users\{os.getlogin()}\AppData\Local\Google\Chrome\Application\chrome.exe"
        ]
    },
    {
        "name": "edge",
        "type": "chromium",
        "process_name": "msedge.exe",
        "flag": "--app=my_app_edge",
        "paths": [
            r"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe",
            r"C:\Program Files\Microsoft\Edge\Application\msedge.exe"
        ]
    },
    {
        "name": "opera",
        "type": "chromium",
        "process_name": "launcher.exe",
        "flag": "--app=my_app_opera",
        "paths": [
            r"C:\Program Files\Opera\launcher.exe",
            r"C:\Program Files (x86)\Opera\launcher.exe",
            fr"C:\Users\{os.getlogin()}\AppData\Local\Programs\Opera\launcher.exe"
        ]
    },
    {
        "name": "brave",
        "type": "chromium",
        "process_name": "brave.exe",
        "flag": "--app=my_app_brave",
        "paths": [
            r"C:\Program Files\BraveSoftware\Brave-Browser\Application\brave.exe",
            r"C:\Program Files (x86)\BraveSoftware\Brave-Browser\Application\brave.exe",
            fr"C:\Users\{os.getlogin()}\AppData\Local\BraveSoftware\Brave-Browser\Application\brave.exe"
        ]
    },
    {
        "name": "firefox",
        "type": "firefox",
        "process_name": "firefox.exe",
        "flag": "--app=my_app_firefox",
        "paths": [
            r"C:\Program Files\Mozilla Firefox\firefox.exe",
            r"C:\Program Files (x86)\Mozilla Firefox\firefox.exe"
        ]
    }
]

def buscar_primer_navegador():
    for info in BROWSERS:
        for ruta in info["paths"]:
            if os.path.exists(ruta):
                return info, ruta
    return None, None

def is_browser_launched_by_app(browser_info, executable_path):
    process_name = browser_info["process_name"]
    flag = browser_info["flag"]

    for proc in psutil.process_iter(['name', 'cmdline', 'exe']):
        try:
            if proc.info['name'] and proc.info['name'].lower() == process_name.lower():
                if proc.info.get('exe') and executable_path.lower() in proc.info.get('exe').lower():
                    cmdline = proc.info.get('cmdline') or []
                    if flag in cmdline:
                        return True
        except (psutil.NoSuchProcess, psutil.AccessDenied, psutil.ZombieProcess):
            continue
    return False

def launch_detached_browser(browser_info, ruta):
    cmd = [sys.executable, sys.argv[0], "--detached", browser_info["name"]]
    creationflags = 0
    if os.name == "nt":
        creationflags = subprocess.CREATE_NO_WINDOW | subprocess.DETACHED_PROCESS
    subprocess.Popen(cmd, creationflags=creationflags, close_fds=True)
    print(f"Lanzado {browser_info['name']} en modo detached.")

def run_detached_mode(browser_info, ruta):
    with sync_playwright() as p:
        print(f"Iniciando {browser_info['name']} en modo detached...")
        if browser_info["type"] == "chromium":
            browser = p.chromium.launch(
                executable_path=ruta,
                headless=False,
                args=[browser_info["flag"]]
            )
        elif browser_info["type"] == "firefox":
            browser = p.firefox.launch(
                executable_path=ruta,
                headless=True,
                args=[browser_info["flag"]]
            )
        else:
            print("Tipo de navegador no soportado en modo detached.")
            sys.exit(1)
            
        page = browser.new_page()
        page.goto("https://www.twitch.tv/sacrri1")
        print("Navegador abierto en https://www.twitch.tv/sacrri1.")
        
        try:
            while True:
                cookie_btn = page.query_selector('//html/body/div[1]/div/div[1]/div[1]/div/div/div/div[3]/div[1]/button')
                if cookie_btn:
                    print("Botón de Cookies encontrado. Pulsando...")
                    cookie_btn.click()
                    time.sleep(10)
                    print("Recargando página tras pulsar Cookies...")
                    page.reload()
                    continue
                other_btn = page.query_selector('//html/body/div[1]/div/div[1]/div/main/div[1]/div[3]/div/div/div[2]/div/div[2]/div/div[4]/div/div/div[5]/div/div[3]/button')
                if other_btn:
                    print("Segundo botón encontrado. Pulsando...")
                    other_btn.click()
                time.sleep(2)
        except Exception as e:
            print("Error en el bucle de monitorización:", e)
        finally:
            browser.close()

def main():
    browser_info, ruta = buscar_primer_navegador()
    
    if browser_info:
        if is_browser_launched_by_app(browser_info, ruta):
            print(f"{browser_info['name']} ya ha sido iniciado desde la aplicación.")
            return
    else:
        print("No se encontró ningún navegador instalado. Se usará Chromium por defecto.")
        browser_info = {
            "name": "chromium",
            "type": "chromium",
            "flag": "--app=my_app_default",
            "process_name": "chrome.exe"
        }
        ruta = None

    launch_detached_browser(browser_info, ruta)
    print("El proceso principal ha lanzado el navegador en modo detached y puede finalizar.")

if __name__ == "__main__":
    if "--detached" in sys.argv:
        try:
            idx = sys.argv.index("--detached")
            browser_name = sys.argv[idx + 1] if len(sys.argv) > idx + 1 else None
        except ValueError:
            browser_name = None

        browser_info = None
        ruta = None
        if browser_name:
            for info in BROWSERS:
                if info["name"] == browser_name:
                    browser_info = info
                    for r in info["paths"]:
                        if os.path.exists(r):
                            ruta = r
                            break
                    break
        if not browser_info or not ruta:
            browser_info, ruta = buscar_primer_navegador()
        run_detached_mode(browser_info, ruta)
    else:
        main()
