.class public final Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $rippleAlpha:Landroidx/compose/runtime/MutableState;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/runtime/MutableState;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 1

    iget v0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemProvider;

    return-object p0

    :pswitch_1
    new-instance v0, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/grid/LazyGridIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :pswitch_2
    new-instance v0, Landroidx/compose/foundation/lazy/LazyListIntervalContent;

    iget-object p0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/jvm/functions/Function1;

    invoke-direct {v0, p0}, Landroidx/compose/foundation/lazy/LazyListIntervalContent;-><init>(Lkotlin/jvm/functions/Function1;)V

    return-object v0

    :pswitch_3
    iget-object p0, p0, Landroidx/compose/material/ripple/RippleIndicationInstance$stateLayer$1;->$rippleAlpha:Landroidx/compose/runtime/MutableState;

    invoke-interface {p0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/compose/material/ripple/RippleAlpha;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
