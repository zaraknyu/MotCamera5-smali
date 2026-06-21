.class public abstract Landroidx/compose/foundation/layout/BoxKt;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final Cache1:Landroidx/collection/MutableScatterMap;

.field public static final Cache2:Landroidx/collection/MutableScatterMap;

.field public static final EmptyBoxMeasurePolicy:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->cacheFor(Z)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->Cache1:Landroidx/collection/MutableScatterMap;

    const/4 v0, 0x0

    invoke-static {v0}, Landroidx/compose/foundation/layout/BoxKt;->cacheFor(Z)Landroidx/collection/MutableScatterMap;

    move-result-object v0

    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->Cache2:Landroidx/collection/MutableScatterMap;

    sget-object v0, Landroidx/compose/foundation/layout/SpacerMeasurePolicy;->INSTANCE$1:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    sput-object v0, Landroidx/compose/foundation/layout/BoxKt;->EmptyBoxMeasurePolicy:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    return-void
.end method

.method public static final Box(Landroidx/compose/ui/Modifier;Landroidx/compose/runtime/ComposerImpl;I)V
    .locals 6

    const v0, -0xc96ce69

    invoke-virtual {p1, v0}, Landroidx/compose/runtime/ComposerImpl;->startRestartGroup(I)Landroidx/compose/runtime/ComposerImpl;

    and-int/lit8 v0, p2, 0x6

    const/4 v1, 0x2

    if-nez v0, :cond_1

    invoke-virtual {p1, p0}, Landroidx/compose/runtime/ComposerImpl;->changed(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    or-int/2addr v0, p2

    goto :goto_1

    :cond_1
    move v0, p2

    :goto_1
    and-int/lit8 v2, v0, 0x3

    const/4 v3, 0x1

    if-eq v2, v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    and-int/2addr v0, v3

    invoke-virtual {p1, v0, v1}, Landroidx/compose/runtime/ComposerImpl;->shouldExecute(IZ)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p1, Landroidx/compose/runtime/ComposerImpl;->compoundKeyHash:I

    invoke-static {p1, p0}, Landroidx/compose/ui/Modifier_jvmKt;->materializeModifier(Landroidx/compose/runtime/ComposerImpl;Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->currentCompositionLocalScope()Landroidx/compose/runtime/PersistentCompositionLocalMap;

    move-result-object v2

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode;->Companion:Landroidx/compose/ui/node/ComposeUiNode$Companion;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->Constructor:Landroidx/compose/ui/node/LayoutNode$Companion$Constructor$1;

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->startReusableNode()V

    iget-boolean v5, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-eqz v5, :cond_3

    invoke-virtual {p1, v4}, Landroidx/compose/runtime/ComposerImpl;->createNode(Lkotlin/jvm/functions/Function0;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->useNode()V

    :goto_3
    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetMeasurePolicy:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    sget-object v5, Landroidx/compose/foundation/layout/BoxKt;->EmptyBoxMeasurePolicy:Landroidx/compose/foundation/layout/SpacerMeasurePolicy;

    invoke-static {p1, v5, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v4, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetResolvedCompositionLocals:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, v2, v4}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v2, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetModifier:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    invoke-static {p1, v1, v2}, Landroidx/compose/runtime/AnchoredGroupPath;->set-impl(Landroidx/compose/runtime/ComposerImpl;Ljava/lang/Object;Lkotlin/jvm/functions/Function2;)V

    sget-object v1, Landroidx/compose/ui/node/ComposeUiNode$Companion;->SetCompositeKeyHash:Landroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;

    iget-boolean v2, p1, Landroidx/compose/runtime/ComposerImpl;->inserting:Z

    if-nez v2, :cond_4

    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    :cond_4
    invoke-static {v0, p1, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(ILandroidx/compose/runtime/ComposerImpl;ILandroidx/compose/ui/node/ComposeUiNode$Companion$SetModifier$1;)V

    :cond_5
    invoke-virtual {p1, v3}, Landroidx/compose/runtime/ComposerImpl;->end(Z)V

    goto :goto_4

    :cond_6
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->skipToGroupEnd()V

    :goto_4
    invoke-virtual {p1}, Landroidx/compose/runtime/ComposerImpl;->endRestartGroup()Landroidx/compose/runtime/RecomposeScopeImpl;

    move-result-object p1

    if-eqz p1, :cond_7

    new-instance v0, Landroidx/compose/foundation/layout/BoxKt$Box$2;

    const/4 v1, 0x0

    invoke-direct {v0, p2, v1, p0}, Landroidx/compose/foundation/layout/BoxKt$Box$2;-><init>(IILjava/lang/Object;)V

    iput-object v0, p1, Landroidx/compose/runtime/RecomposeScopeImpl;->block:Lkotlin/jvm/functions/Function2;

    :cond_7
    return-void
.end method

.method public static final access$placeInBox(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;Landroidx/compose/ui/layout/Measurable;Landroidx/compose/ui/unit/LayoutDirection;IILandroidx/compose/ui/BiasAlignment;)V
    .locals 7

    invoke-interface {p2}, Landroidx/compose/ui/layout/Measurable;->getParentData()Ljava/lang/Object;

    move-result-object p2

    instance-of v0, p2, Landroidx/compose/foundation/layout/BoxChildDataNode;

    if-eqz v0, :cond_0

    check-cast p2, Landroidx/compose/foundation/layout/BoxChildDataNode;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    if-eqz p2, :cond_2

    iget-object p2, p2, Landroidx/compose/foundation/layout/BoxChildDataNode;->alignment:Landroidx/compose/ui/BiasAlignment;

    if-nez p2, :cond_1

    goto :goto_1

    :cond_1
    move-object v0, p2

    goto :goto_2

    :cond_2
    :goto_1
    move-object v0, p6

    :goto_2
    iget p2, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p6, p1, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v1, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    int-to-long v3, p6

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    int-to-long v3, p4

    shl-long/2addr v3, p2

    int-to-long p4, p5

    and-long/2addr p4, v5

    or-long/2addr v3, p4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Landroidx/compose/ui/BiasAlignment;->align-KFBX0sM(JJLandroidx/compose/ui/unit/LayoutDirection;)J

    move-result-wide p2

    invoke-static {p0, p1, p2, p3}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V

    return-void
.end method

.method public static final cacheFor(Z)Landroidx/collection/MutableScatterMap;
    .locals 3

    new-instance v0, Landroidx/collection/MutableScatterMap;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Landroidx/collection/MutableScatterMap;-><init>(I)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopCenter:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->TopEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->Center:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->CenterEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->BottomStart:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->BottomCenter:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    sget-object v1, Landroidx/compose/ui/Alignment$Companion;->BottomEnd:Landroidx/compose/ui/BiasAlignment;

    new-instance v2, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v2, v1, p0}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableScatterMap;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public static final maybeCachedBoxMeasurePolicy(Landroidx/compose/ui/BiasAlignment;Z)Landroidx/compose/ui/layout/MeasurePolicy;
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->Cache1:Landroidx/collection/MutableScatterMap;

    goto :goto_0

    :cond_0
    sget-object v0, Landroidx/compose/foundation/layout/BoxKt;->Cache2:Landroidx/collection/MutableScatterMap;

    :goto_0
    invoke-virtual {v0, p0}, Landroidx/collection/MutableScatterMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/compose/ui/layout/MeasurePolicy;

    if-nez v0, :cond_1

    new-instance v0, Landroidx/compose/foundation/layout/BoxMeasurePolicy;

    invoke-direct {v0, p0, p1}, Landroidx/compose/foundation/layout/BoxMeasurePolicy;-><init>(Landroidx/compose/ui/BiasAlignment;Z)V

    :cond_1
    return-object v0
.end method
