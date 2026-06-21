.class public abstract Lkotlin/text/CharsKt;
.super Ljava/lang/Object;


# direct methods
.method public static final SemanticsNode(Landroidx/compose/ui/node/LayoutNode;Z)Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/Modifier$Node;

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v1, v1, 0x8

    const/4 v2, 0x0

    if-eqz v1, :cond_8

    :goto_0
    if-eqz v0, :cond_8

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_7

    move-object v1, v0

    move-object v3, v2

    :goto_1
    if-eqz v1, :cond_7

    instance-of v4, v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v4, :cond_0

    move-object v2, v1

    goto :goto_4

    :cond_0
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v4, v4, 0x8

    if-eqz v4, :cond_6

    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_6

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    :goto_2
    const/4 v6, 0x1

    if-eqz v4, :cond_5

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v7, v7, 0x8

    if-eqz v7, :cond_4

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_1

    move-object v1, v4

    goto :goto_3

    :cond_1
    if-nez v3, :cond_2

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v6, 0x10

    new-array v6, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_3
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_5
    if-ne v5, v6, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_1

    :cond_7
    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_8

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_8
    :goto_4
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v2, Landroidx/compose/ui/node/SemanticsModifierNode;

    check-cast v2, Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getSemanticsConfiguration()Landroidx/compose/ui/semantics/SemanticsConfiguration;

    move-result-object v1

    if-nez v1, :cond_9

    new-instance v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v1}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    :cond_9
    new-instance v2, Landroidx/compose/ui/semantics/SemanticsNode;

    invoke-direct {v2, v0, p1, p0, v1}, Landroidx/compose/ui/semantics/SemanticsNode;-><init>(Landroidx/compose/ui/Modifier$Node;ZLandroidx/compose/ui/node/LayoutNode;Landroidx/compose/ui/semantics/SemanticsConfiguration;)V

    return-object v2
.end method

.method public static checkRadix(I)V
    .locals 5

    const/4 v0, 0x2

    if-gt v0, p0, :cond_0

    const/16 v1, 0x25

    if-ge p0, v1, :cond_0

    return-void

    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "radix "

    const-string v3, " was not in valid range "

    invoke-static {v2, p0, v3}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    new-instance v2, Lkotlin/ranges/IntRange;

    const/16 v3, 0x24

    const/4 v4, 0x1

    invoke-direct {v2, v0, v3, v4}, Lkotlin/ranges/IntProgression;-><init>(III)V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static final equals(CCZ)Z
    .locals 2

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p2, :cond_1

    return v1

    :cond_1
    invoke-static {p0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toUpperCase(C)C

    move-result p1

    if-eq p0, p1, :cond_3

    invoke-static {p0}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p0

    invoke-static {p1}, Ljava/lang/Character;->toLowerCase(C)C

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_0
    return v0
.end method

.method public static final getOuterMergingSemantics(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/SemanticsModifierNode;
    .locals 7

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v0, v0, 0x8

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    :goto_0
    if-eqz p0, :cond_8

    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_7

    move-object v0, p0

    move-object v2, v1

    :goto_1
    if-eqz v0, :cond_7

    instance-of v3, v0, Landroidx/compose/ui/node/SemanticsModifierNode;

    if-eqz v3, :cond_0

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/SemanticsModifierNode;

    invoke-interface {v3}, Landroidx/compose/ui/node/SemanticsModifierNode;->getShouldMergeDescendantSemantics()Z

    move-result v3

    if-eqz v3, :cond_6

    move-object v1, v0

    goto :goto_4

    :cond_0
    iget v3, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    instance-of v3, v0, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v3, :cond_6

    move-object v3, v0

    check-cast v3, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v3, v3, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v4, 0x0

    :goto_2
    const/4 v5, 0x1

    if-eqz v3, :cond_5

    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_4

    add-int/lit8 v4, v4, 0x1

    if-ne v4, v5, :cond_1

    move-object v0, v3

    goto :goto_3

    :cond_1
    if-nez v2, :cond_2

    new-instance v2, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v5, 0x10

    new-array v5, v5, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v2, v5}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v2, v0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v0, v1

    :cond_3
    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v3, v3, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_5
    if-ne v4, v5, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v2}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    goto :goto_1

    :cond_7
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_8
    :goto_4
    check-cast v1, Landroidx/compose/ui/node/SemanticsModifierNode;

    return-object v1
.end method

.method public static isWhitespace(C)Z
    .locals 1

    invoke-static {p0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method
