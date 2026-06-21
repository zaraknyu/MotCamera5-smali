.class public interface abstract Landroidx/compose/foundation/Indication;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public rememberUpdatedInstance(Landroidx/compose/foundation/interaction/MutableInteractionSourceImpl;Landroidx/compose/runtime/ComposerImpl;)Landroidx/compose/foundation/IndicationInstance;
    .locals 0

    const p0, 0x4af582f5    # 8044922.5f

    invoke-virtual {p2, p0}, Landroidx/compose/runtime/ComposerImpl;->startReplaceGroup(I)V

    sget-object p0, Landroidx/compose/foundation/NoIndicationInstance;->INSTANCE:Landroidx/compose/foundation/NoIndicationInstance;

    const/4 p1, 0x0

    invoke-virtual {p2, p1}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    return-object p0
.end method
