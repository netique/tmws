library(reticulate)

# nainstalujeme utilitu pro správu izolovaných prostředí Pythonu
install_miniconda()

# vytvoříme prostředí s názvem "topic_modeling", základem bude Python 3.11.6
conda_create("topic_modeling", python_version = "3.11.6")

# nainstalujeme do něj modul bertopic 0.15.0
conda_install("topic_modeling", "bertopic==0.15.0")

# vyžádáme specifickou verzi závislosti bertopicu, která funguje...
conda_install("topic_modeling", "transformers==4.35.2")

# použijeme nastavené prostředí
use_condaenv("topic_modeling")

# potvrdíme si, že RStudio pracuje s daným prostředím
# někdy je nutné restartovat R session
py_config()
