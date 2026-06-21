.class public final Landroidx/compose/ui/node/BackwardsCompatNode;
.super Landroidx/compose/ui/Modifier$Node;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/LayoutModifierNode;
.implements Landroidx/compose/ui/node/DrawModifierNode;
.implements Landroidx/compose/ui/node/SemanticsModifierNode;
.implements Landroidx/compose/ui/node/PointerInputModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalModifierNode;
.implements Landroidx/compose/ui/modifier/ModifierLocalReadScope;
.implements Landroidx/compose/ui/node/ParentDataModifierNode;
.implements Landroidx/compose/ui/node/LayoutAwareModifierNode;
.implements Landroidx/compose/ui/node/GlobalPositionAwareModifierNode;
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/compose/ui/draw/BuildDrawCacheParams;
.implements Landroidx/compose/ui/node/DelegatableNode;


# instance fields
.field public _providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

.field public element:Landroidx/compose/ui/Modifier$Element;

.field public readValues:Ljava/util/HashSet;


# virtual methods
.method public final applyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string p1, "applyFocusProperties called on wrong node"

    invoke-static {p1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final applySemantics(Landroidx/compose/ui/semantics/SemanticsConfiguration;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v0, v0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v2, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsModifier"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    new-instance v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;

    invoke-direct {v2}, Landroidx/compose/ui/semantics/SemanticsConfiguration;-><init>()V

    iget-boolean v3, v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->mergeDescendants:Z

    iput-boolean v3, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    iget-object v0, v0, Landroidx/compose/ui/semantics/AppendedSemanticsElement;->properties:Lkotlin/jvm/functions/Function1;

    invoke-interface {v0, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.semantics.SemanticsConfiguration"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    iget-boolean v3, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    iput-boolean v4, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isMergingSemanticsOfDescendants:Z

    :cond_0
    iget-boolean v3, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    if-eqz v3, :cond_1

    iput-boolean v4, v1, Landroidx/compose/ui/semantics/SemanticsConfiguration;->isClearingSemantics:Z

    :cond_1
    iget-object v1, v2, Landroidx/compose/ui/semantics/SemanticsConfiguration;->props:Landroidx/collection/MutableScatterMap;

    iget-object v2, v1, Landroidx/collection/MutableScatterMap;->keys:[Ljava/lang/Object;

    iget-object v3, v1, Landroidx/collection/MutableScatterMap;->values:[Ljava/lang/Object;

    iget-object v1, v1, Landroidx/collection/MutableScatterMap;->metadata:[J

    array-length v4, v1

    add-int/lit8 v4, v4, -0x2

    if-ltz v4, :cond_8

    const/4 v6, 0x0

    :goto_0
    aget-wide v7, v1, v6

    not-long v9, v7

    const/4 v11, 0x7

    shl-long/2addr v9, v11

    and-long/2addr v9, v7

    const-wide v11, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v9, v11

    cmp-long v9, v9, v11

    if-eqz v9, :cond_7

    sub-int v9, v6, v4

    not-int v9, v9

    ushr-int/lit8 v9, v9, 0x1f

    const/16 v10, 0x8

    rsub-int/lit8 v9, v9, 0x8

    const/4 v11, 0x0

    :goto_1
    if-ge v11, v9, :cond_6

    const-wide/16 v12, 0xff

    and-long/2addr v12, v7

    const-wide/16 v14, 0x80

    cmp-long v12, v12, v14

    if-gez v12, :cond_5

    shl-int/lit8 v12, v6, 0x3

    add-int/2addr v12, v11

    aget-object v13, v2, v12

    aget-object v12, v3, v12

    check-cast v13, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterMap;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_2

    invoke-virtual {v0, v13, v12}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    :cond_2
    instance-of v14, v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    if-eqz v14, :cond_5

    invoke-virtual {v0, v13}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    const-string v15, "null cannot be cast to non-null type androidx.compose.ui.semantics.AccessibilityAction<*>"

    invoke-static {v14, v15}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v14, Landroidx/compose/ui/semantics/AccessibilityAction;

    new-instance v15, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object v5, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    if-nez v5, :cond_3

    move-object v5, v12

    check-cast v5, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object v5, v5, Landroidx/compose/ui/semantics/AccessibilityAction;->label:Ljava/lang/String;

    :cond_3
    iget-object v14, v14, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    if-nez v14, :cond_4

    check-cast v12, Landroidx/compose/ui/semantics/AccessibilityAction;

    iget-object v14, v12, Landroidx/compose/ui/semantics/AccessibilityAction;->action:Lkotlin/Function;

    :cond_4
    invoke-direct {v15, v5, v14}, Landroidx/compose/ui/semantics/AccessibilityAction;-><init>(Ljava/lang/String;Lkotlin/Function;)V

    invoke-virtual {v0, v13, v15}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_5
    :goto_2
    shr-long/2addr v7, v10

    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    :cond_6
    if-ne v9, v10, :cond_8

    :cond_7
    if-eq v6, v4, :cond_8

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_8
    return-void
.end method

.method public final draw(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.draw.DrawModifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/foundation/IndicationModifier;

    iget-object p0, p0, Landroidx/compose/foundation/IndicationModifier;->indicationInstance:Landroidx/compose/foundation/IndicationInstance;

    invoke-interface {p0, p1}, Landroidx/compose/foundation/IndicationInstance;->drawIndication(Landroidx/compose/ui/node/LayoutNodeDrawScope;)V

    return-void
.end method

.method public final getCurrent(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "visitAncestors called on an unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_b

    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v1, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/Modifier$Node;

    iget v1, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/lit8 v1, v1, 0x20

    const/4 v2, 0x0

    if-eqz v1, :cond_9

    :goto_1
    if-eqz v0, :cond_9

    iget v1, v0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_8

    move-object v1, v0

    move-object v3, v2

    :goto_2
    if-eqz v1, :cond_8

    instance-of v4, v1, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    if-eqz v4, :cond_1

    check-cast v1, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;

    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-interface {v1}, Landroidx/compose/ui/modifier/ModifierLocalModifierNode;->getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/modifier/ModifierLocalMap;->get$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    :cond_1
    iget v4, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v4, v4, 0x20

    if-eqz v4, :cond_7

    instance-of v4, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v4, :cond_7

    move-object v4, v1

    check-cast v4, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v4, v4, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v5, 0x0

    :goto_3
    const/4 v6, 0x1

    if-eqz v4, :cond_6

    iget v7, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v7, v7, 0x20

    if-eqz v7, :cond_5

    add-int/lit8 v5, v5, 0x1

    if-ne v5, v6, :cond_2

    move-object v1, v4

    goto :goto_4

    :cond_2
    if-nez v3, :cond_3

    new-instance v3, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v6, 0x10

    new-array v6, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v3, v6}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_4
    iget-object v4, v4, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_6
    if-ne v5, v6, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v3}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_2

    :cond_8
    iget-object v0, v0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_9
    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    if-eqz p0, :cond_a

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    if-eqz v0, :cond_a

    iget-object v0, v0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/node/TailModifierNode;

    goto/16 :goto_0

    :cond_a
    move-object v0, v2

    goto/16 :goto_0

    :cond_b
    iget-object p0, p1, Landroidx/compose/ui/modifier/ProvidableModifierLocal;->defaultFactory:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p0

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getProvidedValues()Landroidx/compose/ui/modifier/ModifierLocalMap;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    sget-object p0, Landroidx/compose/ui/modifier/EmptyMap;->INSTANCE:Landroidx/compose/ui/modifier/EmptyMap;

    return-object p0
.end method

.method public final getSize-NH-jbRc()J
    .locals 2

    const/16 v0, 0x80

    invoke-static {p0, v0}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p0

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final initializeModifier(Z)V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string v0, "initializeModifier called on unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_4

    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v1, :cond_2

    new-instance v1, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;I)V

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    iget-object v2, v2, Landroidx/compose/ui/platform/AndroidComposeView;->endApplyChangesListeners:Landroidx/collection/MutableObjectList;

    invoke-virtual {v2, v1}, Landroidx/collection/MutableObjectList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-ltz v3, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v2, v1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    :cond_2
    :goto_0
    instance-of v1, v0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    if-eqz v1, :cond_4

    move-object v1, v0

    check-cast v1, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    iget-object v2, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v3, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->contains$ui_release(Landroidx/compose/ui/modifier/ProvidableModifierLocal;)Z

    move-result v4

    if-eqz v4, :cond_3

    iput-object v1, v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v2, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    goto :goto_1

    :cond_3
    new-instance v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v1, v2, Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;->element:Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    iput-object v2, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->_providedValues:Landroidx/compose/ui/modifier/BackwardsCompatLocalMap;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v2

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v1, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-object v3, v2, Landroidx/compose/ui/modifier/ModifierLocalManager;->inserted:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v3, v2, Landroidx/compose/ui/modifier/ModifierLocalManager;->insertedLocal:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    invoke-virtual {v2}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    :cond_4
    :goto_1
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x4

    const/4 v2, 0x2

    if-eqz v1, :cond_5

    if-nez p1, :cond_5

    invoke-static {p0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_5
    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v1, v2

    if-eqz v1, :cond_7

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    move-object v3, v1

    check-cast v3, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;

    invoke-virtual {v3, p0}, Landroidx/compose/ui/node/LayoutModifierNodeCoordinator;->setLayoutModifierNode$ui_release(Landroidx/compose/ui/node/LayoutModifierNode;)V

    iget-object v1, v1, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    :cond_6
    if-nez p1, :cond_7

    invoke-static {p0, v2}, Landroidx/compose/ui/node/HitTestResultKt;->requireCoordinator-64DMado(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_7
    instance-of p1, v0, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    if-eqz p1, :cond_8

    move-object p1, v0

    check-cast p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v1

    iget v2, p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->$r8$classId:I

    packed-switch v2, :pswitch_data_0

    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p1, Landroidx/compose/foundation/lazy/grid/LazyGridState;

    iput-object v1, p1, Landroidx/compose/foundation/lazy/grid/LazyGridState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_2

    :pswitch_0
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p1, Landroidx/compose/foundation/lazy/LazyListState;

    iput-object v1, p1, Landroidx/compose/foundation/lazy/LazyListState;->remeasurement:Landroidx/compose/ui/node/LayoutNode;

    goto :goto_2

    :pswitch_1
    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerState$remeasurementModifier$1;->this$0:Landroidx/compose/foundation/gestures/ScrollableState;

    check-cast p1, Landroidx/compose/foundation/pager/PagerState;

    iget-object p1, p1, Landroidx/compose/foundation/pager/PagerState;->remeasurement$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p1, v1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    :cond_8
    :goto_2
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit16 p1, p1, 0x100

    if-eqz p1, :cond_9

    instance-of p1, v0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    if-eqz p1, :cond_9

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->access$isChainUpdate(Landroidx/compose/ui/node/BackwardsCompatNode;)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/LayoutNode;->invalidateMeasurements$ui_release()V

    :cond_9
    iget p1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_a

    instance-of v1, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    if-eqz v1, :cond_a

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object v0, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    iget-object v1, p0, Landroidx/compose/ui/Modifier$Node;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iput-object v1, v0, Landroidx/core/view/MenuHostHelper;->mOnInvalidateMenuCallback:Ljava/lang/Object;

    :cond_a
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_b

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    :cond_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public final interceptOutOfBoundsChildEvents()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    return-void
.end method

.method public final isValidOwnerScope()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    return p0
.end method

.method public final measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.layout.LayoutModifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/layout/LayoutModifier;

    invoke-interface {p0, p1, p2, p3, p4}, Landroidx/compose/ui/layout/LayoutModifier;->measure-3p2s80s(Landroidx/compose/ui/node/LookaheadCapablePlaceable;Landroidx/compose/ui/layout/Measurable;J)Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    return-object p0
.end method

.method public final modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string p1, "null cannot be cast to non-null type androidx.compose.ui.layout.ParentDataModifier"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/layout/ParentDataModifier;

    invoke-interface {p0}, Landroidx/compose/ui/layout/ParentDataModifier;->modifyParentData()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public final onAttach()V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/BackwardsCompatNode;->initializeModifier(Z)V

    return-void
.end method

.method public final onCancelPointerInput()V
    .locals 11

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    iget-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iget-object v1, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Dispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-ne v0, v2, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    move-wide v5, v3

    invoke-static/range {v3 .. v10}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/MotionEvent;->setSource(I)V

    invoke-virtual {v1}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->getOnTouchEvent()Lkotlin/jvm/functions/Function1;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-virtual {v3, v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    sget-object v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Unknown:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object v0, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-boolean v2, v1, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    :cond_0
    return-void
.end method

.method public final onDensityChange()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    instance-of v0, v0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->onCancelPointerInput()V

    :cond_0
    return-void
.end method

.method public final onDetach()V
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/BackwardsCompatNode;->unInitializeModifier()V

    return-void
.end method

.method public final onFocusEvent()V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "onFocusEvent called on wrong node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance p0, Ljava/lang/ClassCastException;

    invoke-direct {p0}, Ljava/lang/ClassCastException;-><init>()V

    throw p0
.end method

.method public final onGloballyPositioned(Landroidx/compose/ui/node/NodeCoordinator;)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string p1, "null cannot be cast to non-null type androidx.compose.ui.layout.OnGloballyPositionedModifier"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;

    iget-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->wasPositioned:Z

    if-nez p1, :cond_1

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->wasPositioned:Z

    iget-object p1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    if-eqz p1, :cond_0

    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    invoke-virtual {p1, v0}, Lkotlinx/coroutines/CancellableContinuationImpl;->resumeWith(Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/AwaitFirstLayoutModifier;->continuation:Lkotlinx/coroutines/CancellableContinuationImpl;

    :cond_1
    return-void
.end method

.method public final onMeasureResultChanged()V
    .locals 0

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->invalidateDraw(Landroidx/compose/ui/node/DrawModifierNode;)V

    return-void
.end method

.method public final onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V
    .locals 0

    return-void
.end method

.method public final onPointerEvent-H0pRuoY(Landroidx/compose/ui/input/pointer/PointerEvent;Landroidx/compose/ui/input/pointer/PointerEventPass;J)V
    .locals 5

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string p3, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-object p3, p1, Landroidx/compose/ui/input/pointer/PointerEvent;->changes:Ljava/lang/Object;

    iget-object p4, p0, Landroidx/core/view/MenuHostHelper;->mProviderToLifecycleContainers:Ljava/lang/Object;

    check-cast p4, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-boolean v0, p4, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    const/4 v1, 0x0

    if-nez v0, :cond_2

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result v0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-interface {p3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerId;->changedToDownIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v4

    if-nez v4, :cond_2

    invoke-static {v3}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x1

    :goto_2
    iget-object v2, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    check-cast v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    sget-object v3, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->NotDispatching:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    if-eq v2, v3, :cond_4

    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Initial:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v2, :cond_3

    if-eqz v0, :cond_3

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_3
    sget-object v2, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, v2, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Landroidx/core/view/MenuHostHelper;->dispatchToView(Landroidx/compose/ui/input/pointer/PointerEvent;)V

    :cond_4
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerEventPass;->Final:Landroidx/compose/ui/input/pointer/PointerEventPass;

    if-ne p2, p1, :cond_7

    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    move p2, v1

    :goto_3
    if-ge p2, p1, :cond_6

    invoke-interface {p3, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/input/pointer/PointerInputChange;

    invoke-static {v0}, Landroidx/compose/ui/input/pointer/PointerId;->changedToUpIgnoreConsumed(Landroidx/compose/ui/input/pointer/PointerInputChange;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_4

    :cond_5
    add-int/lit8 p2, p2, 0x1

    goto :goto_3

    :cond_6
    sget-object p1, Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;->Unknown:Landroidx/compose/ui/input/pointer/PointerInteropFilter$DispatchToViewState;

    iput-object p1, p0, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iput-boolean v1, p4, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->disallowIntercept:Z

    :cond_7
    :goto_4
    return-void
.end method

.method public final onRemeasured-ozmzZPI(J)V
    .locals 0

    return-void
.end method

.method public final sharePointerInputWithSiblings()Z
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.input.pointer.PointerInputModifier"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->pointerInputFilter:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final unInitializeModifier()V
    .locals 5

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "unInitializeModifier called on unattached node"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->element:Landroidx/compose/ui/Modifier$Element;

    iget v1, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    check-cast v1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v1}, Landroidx/compose/ui/platform/AndroidComposeView;->getModifierLocalManager()Landroidx/compose/ui/modifier/ModifierLocalManager;

    move-result-object v1

    move-object v2, v0

    check-cast v2, Landroidx/compose/foundation/layout/InsetsPaddingModifier;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v2, Landroidx/compose/foundation/layout/WindowInsetsPaddingKt;->ModifierLocalConsumedWindowInsets:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    iget-object v3, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->removed:Landroidx/compose/runtime/collection/MutableVector;

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireLayoutNode(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/LayoutNode;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    iget-object v3, v1, Landroidx/compose/ui/modifier/ModifierLocalManager;->removedLocal:Landroidx/compose/runtime/collection/MutableVector;

    invoke-virtual {v3, v2}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    invoke-virtual {v1}, Landroidx/compose/ui/modifier/ModifierLocalManager;->invalidate()V

    :cond_1
    instance-of v1, v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    if-eqz v1, :cond_2

    check-cast v0, Landroidx/compose/ui/modifier/ModifierLocalConsumer;

    sget-object v1, Landroidx/compose/ui/node/HitTestResultKt;->DetachedModifierLocalReadScope:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    invoke-interface {v0, v1}, Landroidx/compose/ui/modifier/ModifierLocalConsumer;->onModifierLocalsUpdated(Landroidx/compose/ui/modifier/ModifierLocalReadScope;)V

    :cond_2
    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->onSemanticsChange()V

    :cond_3
    return-void
.end method

.method public final updateModifierLocalConsumer()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/BackwardsCompatNode;->readValues:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->clear()V

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->requireOwner(Landroidx/compose/ui/node/DelegatableNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v0

    sget-object v1, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$1:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    new-instance v2, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Landroidx/compose/ui/node/BackwardsCompatNode$initializeModifier$2;-><init>(Landroidx/compose/ui/node/BackwardsCompatNode;I)V

    invoke-virtual {v0, p0, v1, v2}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    :cond_0
    return-void
.end method
