
import cpp

class NothMacro extends Macro {
    NothMacro() {
        this.getName().prefix(4) = "ntoh"
    }
}

from MacroInvocation call
where call.getMacro() instanceof NothMacro
select call.getExpr(), "ntoh* macro invocation"

