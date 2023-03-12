from abc import abstractmethod
from typing import Protocol

class Logger(Protocol):
    @abstractmethod
    def print(self, s: str) -> None:
        raise NotImplementedError

