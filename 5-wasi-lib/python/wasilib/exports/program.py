from ..intrinsics import _clamp
from dataclasses import dataclass
import wasmtime

from typing import TYPE_CHECKING
if TYPE_CHECKING:
  from .. import WasiLib

@dataclass
class Valueobject:
    x: int
    y: int

class Program:
    component: 'WasiLib'
    
    def __init__(self, component: 'WasiLib') -> None:
        self.component = component
    def add(self, caller: wasmtime.Store, o: Valueobject) -> int:
        record = o
        field = record.x
        field0 = record.y
        ret = self.component.lift_callee0(caller, _clamp(field, 0, 4294967295), _clamp(field0, 0, 4294967295))
        assert(isinstance(ret, int))
        return ret & 0xffffffff
    def run(self, caller: wasmtime.Store) -> None:
        self.component.lift_callee1(caller)
