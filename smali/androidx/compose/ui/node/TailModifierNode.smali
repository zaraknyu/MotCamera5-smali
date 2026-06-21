.class public final Landroidx/compose/ui/node/TailModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"


# instance fields
.field public attachHasBeenRun:Z


# virtual methods
.method public final onAttach()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public final onDetach()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/TailModifierNode;->attachHasBeenRun:Z

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    const-string p0, "<tail>"

    return-object p0
.end method
