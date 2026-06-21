.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public androidOutline:Landroid/graphics/Outline;

.field public final childDependenciesTracker:Landroidx/compose/material/ripple/StateLayer;

.field public clip:Z

.field public final clipDrawBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

.field public density:Landroidx/compose/ui/unit/Density;

.field public drawBlock:Lkotlin/jvm/internal/Lambda;

.field public final impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

.field public internalOutline:Landroidx/compose/ui/graphics/Brush;

.field public isReleased:Z

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public outlineDirty:Z

.field public outlinePath:Landroidx/compose/ui/graphics/Path;

.field public parentLayerUsages:I

.field public pathBounds:Landroid/graphics/RectF;

.field public pivotOffset:J

.field public roundRectClipPath:Landroidx/compose/ui/graphics/AndroidPath;

.field public roundRectCornerRadius:F

.field public roundRectOutlineSize:J

.field public roundRectOutlineTopLeft:J

.field public size:J

.field public softwareDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public softwareLayerPaint:Landroidx/compose/ui/graphics/AndroidPaint;

.field public topLeft:J

.field public usePathForClip:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Landroidx/compose/ui/graphics/layer/LayerManager;->$r8$clinit:I

    sget v0, Landroidx/compose/ui/graphics/layer/LayerManager;->$r8$clinit:I

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    sget-object v0, Landroidx/compose/ui/graphics/drawscope/DrawStyle;->DefaultDensity:Landroidx/compose/ui/unit/DensityImpl;

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    sget-object v0, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;->INSTANCE:Landroidx/compose/ui/graphics/layer/GraphicsLayer$drawBlock$1;

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/internal/Lambda;

    new-instance v0, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v1, 0x19

    invoke-direct {v0, v1, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clipDrawBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    new-instance v4, Landroidx/compose/material/ripple/StateLayer;

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    iput-object v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/material/ripple/StateLayer;

    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    iput-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    return-void
.end method


# virtual methods
.method public final configureOutlineAndClip()V
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_a

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-nez v3, :cond_1

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip$1()V

    goto/16 :goto_2

    :cond_1
    :goto_0
    iget-object v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v6, 0x1

    if-eqz v5, :cond_7

    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pathBounds:Landroid/graphics/RectF;

    if-nez v3, :cond_2

    new-instance v3, Landroid/graphics/RectF;

    invoke-direct {v3}, Landroid/graphics/RectF;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pathBounds:Landroid/graphics/RectF;

    :cond_2
    instance-of v7, v5, Landroidx/compose/ui/graphics/AndroidPath;

    const-string v8, "Unable to obtain android.graphics.Path"

    if-eqz v7, :cond_6

    move-object v9, v5

    check-cast v9, Landroidx/compose/ui/graphics/AndroidPath;

    iget-object v9, v9, Landroidx/compose/ui/graphics/AndroidPath;->internalPath:Landroid/graphics/Path;

    invoke-virtual {v9, v3, v4}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    iget-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    if-nez v10, :cond_3

    new-instance v10, Landroid/graphics/Outline;

    invoke-direct {v10}, Landroid/graphics/Outline;-><init>()V

    iput-object v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    :cond_3
    if-eqz v7, :cond_5

    invoke-virtual {v10, v9}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    invoke-virtual {v10}, Landroid/graphics/Outline;->canClip()Z

    move-result v7

    xor-int/2addr v7, v6

    iput-boolean v7, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    iput-object v5, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    invoke-virtual {v10, v5}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v2, v10}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip$1()V

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    if-eqz v3, :cond_4

    iget-boolean v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-eqz v3, :cond_4

    invoke-virtual {v1, v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    invoke-virtual {v2}, Landroid/graphics/RenderNode;->discardDisplayList()V

    goto/16 :goto_2

    :cond_4
    iget-boolean v2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    invoke-virtual {v1, v2}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    goto/16 :goto_2

    :cond_5
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0, v8}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    invoke-virtual {v1, v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->setClip(Z)V

    iget-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    if-nez v3, :cond_8

    new-instance v3, Landroid/graphics/Outline;

    invoke-direct {v3}, Landroid/graphics/Outline;-><init>()V

    iput-object v3, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->androidOutline:Landroid/graphics/Outline;

    :cond_8
    move-object v7, v3

    iget-wide v8, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v8

    iget-wide v10, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iget-wide v12, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    const-wide v14, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v3, v12, v14

    if-nez v3, :cond_9

    goto :goto_1

    :cond_9
    move-wide v8, v12

    :goto_1
    const/16 v3, 0x20

    shr-long v12, v10, v3

    long-to-int v5, v12

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    invoke-static {v12}, Ljava/lang/Math;->round(F)I

    move-result v12

    const-wide v13, 0xffffffffL

    and-long/2addr v10, v13

    long-to-int v10, v10

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-static {v11}, Ljava/lang/Math;->round(F)I

    move-result v11

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    move-wide v15, v13

    shr-long v13, v8, v3

    long-to-int v3, v13

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    add-float/2addr v13, v5

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v5

    invoke-static {v10}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v10

    and-long/2addr v8, v15

    long-to-int v13, v8

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v8

    add-float/2addr v8, v10

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    move v9, v11

    move v11, v8

    move v8, v12

    iget v12, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    move v10, v5

    invoke-virtual/range {v7 .. v12}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    iget v5, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    invoke-virtual {v7, v5}, Landroid/graphics/Outline;->setAlpha(F)V

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    invoke-virtual {v2, v7}, Landroid/graphics/RenderNode;->setOutline(Landroid/graphics/Outline;)Z

    iput-boolean v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip$1()V

    :cond_a
    :goto_2
    iput-boolean v4, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    return-void
.end method

.method public final discardContentIfReleasedAndHaveNoParentLayerUsages()V
    .locals 15

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-eqz v0, :cond_6

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    if-nez v0, :cond_6

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/material/ripple/StateLayer;

    iget-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    const/4 v1, 0x0

    iput-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    :cond_0
    iget-object v0, v0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v0, Landroidx/collection/MutableScatterSet;

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v2, v0, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v3, v2

    add-int/lit8 v3, v3, -0x2

    if-ltz v3, :cond_4

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    aget-wide v6, v2, v5

    not-long v8, v6

    const/4 v10, 0x7

    shl-long/2addr v8, v10

    and-long/2addr v8, v6

    const-wide v10, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v8, v10

    cmp-long v8, v8, v10

    if-eqz v8, :cond_3

    sub-int v8, v5, v3

    not-int v8, v8

    ushr-int/lit8 v8, v8, 0x1f

    const/16 v9, 0x8

    rsub-int/lit8 v8, v8, 0x8

    move v10, v4

    :goto_1
    if-ge v10, v8, :cond_2

    const-wide/16 v11, 0xff

    and-long/2addr v11, v6

    const-wide/16 v13, 0x80

    cmp-long v11, v11, v13

    if-gez v11, :cond_1

    shl-int/lit8 v11, v5, 0x3

    add-int/2addr v11, v10

    aget-object v11, v1, v11

    check-cast v11, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v11}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    :cond_1
    shr-long/2addr v6, v9

    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_2
    if-ne v8, v9, :cond_4

    :cond_3
    if-eq v5, v3, :cond_4

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    invoke-virtual {v0}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_5
    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0}, Landroid/graphics/RenderNode;->discardDisplayList()V

    :cond_6
    return-void
.end method

.method public final drawWithChildTracking(Landroidx/compose/ui/graphics/drawscope/DrawScope;)V
    .locals 13

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->childDependenciesTracker:Landroidx/compose/material/ripple/StateLayer;

    iget-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->rippleAlpha:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    iget-object v1, v0, Landroidx/compose/material/ripple/StateLayer;->interactions:Ljava/lang/Object;

    check-cast v1, Landroidx/collection/MutableScatterSet;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast v2, Landroidx/collection/MutableScatterSet;

    if-nez v2, :cond_0

    sget v2, Landroidx/collection/ScatterSetKt;->$r8$clinit:I

    new-instance v2, Landroidx/collection/MutableScatterSet;

    invoke-direct {v2}, Landroidx/collection/MutableScatterSet;-><init>()V

    iput-object v2, v0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v2, v1}, Landroidx/collection/MutableScatterSet;->plusAssign(Landroidx/collection/MutableScatterSet;)V

    invoke-virtual {v1}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/internal/Lambda;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/compose/material/ripple/StateLayer;->bounded:Z

    iget-object p1, v0, Landroidx/compose/material/ripple/StateLayer;->animatedAlpha:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    :cond_2
    iget-object p1, v0, Landroidx/compose/material/ripple/StateLayer;->currentInteraction:Ljava/lang/Object;

    check-cast p1, Landroidx/collection/MutableScatterSet;

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroidx/collection/MutableScatterSet;->isNotEmpty()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p1, Landroidx/collection/MutableScatterSet;->elements:[Ljava/lang/Object;

    iget-object v1, p1, Landroidx/collection/MutableScatterSet;->metadata:[J

    array-length v2, v1

    add-int/lit8 v2, v2, -0x2

    if-ltz v2, :cond_6

    move v3, p0

    :goto_0
    aget-wide v4, v1, v3

    not-long v6, v4

    const/4 v8, 0x7

    shl-long/2addr v6, v8

    and-long/2addr v6, v4

    const-wide v8, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v6, v8

    cmp-long v6, v6, v8

    if-eqz v6, :cond_5

    sub-int v6, v3, v2

    not-int v6, v6

    ushr-int/lit8 v6, v6, 0x1f

    const/16 v7, 0x8

    rsub-int/lit8 v6, v6, 0x8

    move v8, p0

    :goto_1
    if-ge v8, v6, :cond_4

    const-wide/16 v9, 0xff

    and-long/2addr v9, v4

    const-wide/16 v11, 0x80

    cmp-long v9, v9, v11

    if-gez v9, :cond_3

    shl-int/lit8 v9, v3, 0x3

    add-int/2addr v9, v8

    aget-object v9, v0, v9

    check-cast v9, Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {v9}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->onRemovedFromParentLayer()V

    :cond_3
    shr-long/2addr v4, v7

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_4
    if-ne v6, v7, :cond_6

    :cond_5
    if-eq v3, v2, :cond_6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Landroidx/collection/MutableScatterSet;->clear()V

    :cond_7
    return-void
.end method

.method public final getOutline()Landroidx/compose/ui/graphics/Brush;
    .locals 14

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    iget-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    if-eqz v1, :cond_1

    new-instance v0, Landroidx/compose/ui/graphics/Outline$Generic;

    invoke-direct {v0, v1}, Landroidx/compose/ui/graphics/Outline$Generic;-><init>(Landroidx/compose/ui/graphics/Path;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    return-object v0

    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v0

    iget-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iget-wide v4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    const-wide v6, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v6, v4, v6

    if-nez v6, :cond_2

    goto :goto_0

    :cond_2
    move-wide v0, v4

    :goto_0
    const/16 v4, 0x20

    shr-long v5, v2, v4

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v6

    const-wide v7, 0xffffffffL

    and-long/2addr v2, v7

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    shr-long v9, v0, v4

    long-to-int v3, v9

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    add-float/2addr v3, v6

    and-long/2addr v0, v7

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    add-float v9, v0, v2

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_3

    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rounded;

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v12, v0

    shl-long v4, v10, v4

    and-long/2addr v7, v12

    or-long v10, v4, v7

    move v7, v2

    move v8, v3

    invoke-static/range {v6 .. v11}, Landroidx/compose/ui/geometry/RoundRectKt;->RoundRect-gG7oq9Y(FFFFJ)Landroidx/compose/ui/geometry/RoundRect;

    move-result-object v0

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/Outline$Rounded;-><init>(Landroidx/compose/ui/geometry/RoundRect;)V

    goto :goto_1

    :cond_3
    move v7, v2

    move v8, v3

    new-instance v1, Landroidx/compose/ui/graphics/Outline$Rectangle;

    new-instance v0, Landroidx/compose/ui/geometry/Rect;

    invoke-direct {v0, v6, v7, v8, v9}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    invoke-direct {v1, v0}, Landroidx/compose/ui/graphics/Outline$Rectangle;-><init>(Landroidx/compose/ui/geometry/Rect;)V

    :goto_1
    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    return-object v1
.end method

.method public final onRemovedFromParentLayer()V
    .locals 1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->parentLayerUsages:I

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->discardContentIfReleasedAndHaveNoParentLayerUsages()V

    return-void
.end method

.method public final setAlpha(F)V
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    cmpg-float v0, v0, p1

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    iget-object p0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {p0, p1}, Landroid/graphics/RenderNode;->setAlpha(F)Z

    return-void
.end method

.method public final setRoundRectOutline-TNW_H78(JFJ)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    invoke-static {v0, v1, p1, p2}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-wide v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    invoke-static {v0, v1, p4, p5}, Landroidx/compose/ui/geometry/Size;->equals-impl0(JJ)Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    cmpg-float v0, v0, p3

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    iput-wide p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iput-wide p4, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    iput p3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    return-void
.end method
