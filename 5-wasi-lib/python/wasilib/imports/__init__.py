from .logger import Logger
from dataclasses import dataclass

@dataclass
class WasiLibImports:
    logger: Logger
