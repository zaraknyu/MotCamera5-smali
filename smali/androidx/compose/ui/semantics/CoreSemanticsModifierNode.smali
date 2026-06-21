.class public final Landroidx/compose/ui/semantics/CoreSemanticsModifierNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/SemanticsModifierNode;


# instance fields
.field public mergeDescendants:Z

.field public properties:Lkotlin/jvm/functions/Function1;


# virtual methods
.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/semantics/CoreSemanticsModifierNode;->properties:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final getShouldClearDescendantSemantics()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getShouldMergeDescendantSemantics()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/semantics/CoreSemanticsModifierNode;->mergeDescendants:Z

    return p0
.end method
