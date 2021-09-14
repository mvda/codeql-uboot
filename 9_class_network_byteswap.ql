import cpp

class NetworkByteSwap extends Expr {
    NetworkByteSwap() {
        exists(MacroInvocation call |
            call.getMacro() instanceof NothMacro and
            call.getExpr() = this
            )
    }
}

class NothMacro extends Macro {
    NothMacro() {
        this.getName().prefix(4) = "ntoh"
    }
}

from NetworkByteSwap expr
select expr


