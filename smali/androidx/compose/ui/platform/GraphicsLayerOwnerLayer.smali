.class public final Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;


# instance fields
.field public final context:Landroidx/compose/ui/graphics/GraphicsContext;

.field public density:Landroidx/compose/ui/unit/Density;

.field public drawBlock:Lkotlin/jvm/functions/Function2;

.field public drawnWithEnabledZ:Z

.field public graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public invalidateParentLayer:Lkotlin/jvm/functions/Function0;

.field public inverseMatrixCache:[F

.field public isDestroyed:Z

.field public isDirty:Z

.field public isIdentity:Z

.field public isInverseMatrixDirty:Z

.field public isMatrixDirty:Z

.field public layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public final matrixCache:[F

.field public mutatedFields:I

.field public outline:Landroidx/compose/ui/graphics/Brush;

.field public final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

.field public final recordLambda:Lcom/tinder/StateMachine$Matcher$predicates$1;

.field public final scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public size:J

.field public transformOrigin:J


# direct methods
.method public constructor <init>(Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/ui/platform/AndroidComposeView;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p3, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p4, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p5, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const p1, 0x7fffffff

    int-to-long p1, p1

    const/16 p3, 0x20

    shl-long p3, p1, p3

    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    or-long/2addr p1, p3

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {}, Landroidx/compose/ui/unit/DensityKt;->Density$default()Landroidx/compose/ui/unit/DensityImpl;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    sget-object p1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    new-instance p1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {p1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    new-instance p1, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/4 p2, 0x4

    invoke-direct {p1, p2, p0}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->recordLambda:Lcom/tinder/StateMachine$Matcher$predicates$1;

    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 3

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-interface {v0, v2}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    invoke-virtual {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)V

    :cond_1
    return-void
.end method

.method public final drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->updateDisplayList()V

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->scope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v1, v0, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v1, p1}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    iput-object p2, v1, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-static {v0, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerKt;->drawLayer(Landroidx/compose/ui/graphics/drawscope/DrawScope;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void
.end method

.method public final getInverseMatrix-3i98HWw()[F
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    if-nez v0, :cond_0

    invoke-static {}, Landroidx/compose/ui/graphics/Brush;->constructor-impl$default()[F

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    :cond_0
    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-nez v1, :cond_1

    aget p0, v0, v2

    invoke-static {p0}, Ljava/lang/Float;->isNaN(F)Z

    move-result p0

    if-eqz p0, :cond_3

    return-object v3

    :cond_1
    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object v1

    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-eqz p0, :cond_2

    return-object v1

    :cond_2
    invoke-static {v1, v0}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p0

    if-eqz p0, :cond_4

    :cond_3
    return-object v0

    :cond_4
    const/high16 p0, 0x7fc00000    # Float.NaN

    aput p0, v0, v2

    return-object v3
.end method

.method public final getMatrix-sQKQjiQ()[F
    .locals 26

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    if-eqz v1, :cond_2

    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v3, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    const-wide v5, 0x7fffffff7fffffffL

    and-long/2addr v5, v3

    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    iget-wide v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v3

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/SizeKt;->getCenter-uvyYCjk(J)J

    move-result-wide v3

    :cond_0
    const/16 v5, 0x20

    shr-long v5, v3, v5

    long-to-int v5, v5

    invoke-static {v5}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v5

    const-wide v6, 0xffffffffL

    and-long/2addr v3, v6

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    iget v4, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    iget v6, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    iget v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    const/4 v7, 0x0

    float-to-double v8, v7

    const-wide v10, 0x3f91df46a2529d39L    # 0.017453292519943295

    mul-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    double-to-float v12, v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v13

    double-to-float v13, v13

    neg-float v14, v12

    mul-float v15, v7, v13

    const/high16 v16, 0x3f800000    # 1.0f

    mul-float v17, v16, v12

    sub-float v15, v15, v17

    mul-float v17, v7, v12

    mul-float v18, v16, v13

    add-float v18, v18, v17

    move/from16 v17, v7

    move-wide/from16 v19, v8

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    double-to-float v7, v7

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    double-to-float v8, v8

    neg-float v9, v7

    mul-float v19, v12, v7

    mul-float/2addr v12, v8

    mul-float v20, v13, v7

    mul-float v21, v13, v8

    mul-float v22, v17, v8

    mul-float v23, v18, v7

    add-float v23, v23, v22

    const/high16 v22, -0x80000000

    mul-float v22, v22, v7

    mul-float v18, v18, v8

    add-float v18, v18, v22

    move-wide/from16 v24, v10

    float-to-double v10, v4

    mul-double v10, v10, v24

    move v7, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v3

    double-to-float v3, v3

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    double-to-float v4, v10

    neg-float v10, v3

    mul-float v11, v10, v8

    mul-float v22, v4, v19

    add-float v22, v22, v11

    mul-float/2addr v8, v4

    mul-float v19, v19, v3

    add-float v19, v19, v8

    mul-float v8, v3, v13

    mul-float/2addr v13, v4

    mul-float/2addr v10, v9

    mul-float v11, v4, v12

    add-float/2addr v11, v10

    mul-float/2addr v4, v9

    mul-float/2addr v3, v12

    add-float/2addr v3, v4

    mul-float v19, v19, v6

    mul-float/2addr v8, v6

    mul-float/2addr v3, v6

    mul-float v22, v22, v1

    mul-float/2addr v13, v1

    mul-float/2addr v11, v1

    mul-float v20, v20, v16

    mul-float v14, v14, v16

    mul-float v21, v21, v16

    array-length v1, v2

    const/16 v4, 0x10

    const/4 v6, 0x0

    if-ge v1, v4, :cond_1

    goto :goto_0

    :cond_1
    aput v19, v2, v6

    const/4 v1, 0x1

    aput v8, v2, v1

    const/4 v1, 0x2

    aput v3, v2, v1

    const/4 v1, 0x3

    aput v17, v2, v1

    const/4 v1, 0x4

    aput v22, v2, v1

    const/4 v1, 0x5

    aput v13, v2, v1

    const/4 v1, 0x6

    aput v11, v2, v1

    const/4 v1, 0x7

    aput v17, v2, v1

    const/16 v1, 0x8

    aput v20, v2, v1

    const/16 v1, 0x9

    aput v14, v2, v1

    const/16 v1, 0xa

    aput v21, v2, v1

    const/16 v1, 0xb

    aput v17, v2, v1

    neg-float v1, v5

    mul-float v19, v19, v1

    mul-float v4, v7, v22

    sub-float v19, v19, v4

    add-float v19, v19, v23

    add-float v19, v19, v5

    const/16 v4, 0xc

    aput v19, v2, v4

    mul-float/2addr v8, v1

    mul-float v4, v7, v13

    sub-float/2addr v8, v4

    add-float/2addr v8, v15

    add-float/2addr v8, v7

    const/16 v4, 0xd

    aput v8, v2, v4

    mul-float/2addr v1, v3

    mul-float v3, v7, v11

    sub-float/2addr v1, v3

    add-float v1, v1, v18

    const/16 v3, 0xe

    aput v1, v2, v3

    const/16 v1, 0xf

    aput v16, v2, v1

    :goto_0
    iput-boolean v6, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    invoke-static {v2}, Landroidx/compose/ui/graphics/Brush;->isIdentity-58bKbWc([F)Z

    move-result v1

    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    :cond_2
    return-object v2
.end method

.method public final getUnderlyingMatrix-sQKQjiQ()[F
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p0

    return-object p0
.end method

.method public final invalidate()V
    .locals 3

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    iget-boolean v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    const/4 v2, 0x1

    if-eq v2, v1, :cond_0

    iput-boolean v2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {v0, p0, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method public final isInLayer-k-4lQ0M(J)Z
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean p2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->getOutline()Landroidx/compose/ui/graphics/Brush;

    move-result-object p0

    invoke-static {p0, v0, p1}, Landroidx/compose/ui/platform/InvertMatrixKt;->isInOutline(Landroidx/compose/ui/graphics/Brush;FF)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public final mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 0

    if-eqz p2, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p2

    :goto_0
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-nez p0, :cond_2

    if-nez p2, :cond_1

    const/4 p0, 0x0

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void

    :cond_1
    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Brush;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_2
    return-void
.end method

.method public final mapOffset-8S9VItk(JZ)J
    .locals 0

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getInverseMatrix-3i98HWw()[F

    move-result-object p3

    if-nez p3, :cond_1

    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    return-wide p0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->getMatrix-sQKQjiQ()[F

    move-result-object p3

    :cond_1
    iget-boolean p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    if-eqz p0, :cond_2

    return-wide p1

    :cond_2
    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final move--gyyYBs(J)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    invoke-static {v1, v2, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_0

    iput-wide p1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    iget-wide v1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-object v0, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    const/16 v3, 0x20

    shr-long v4, p1, v3

    long-to-int v4, v4

    const-wide v5, 0xffffffffL

    and-long/2addr p1, v5

    long-to-int p1, p1

    iget-object p2, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    shr-long v7, v1, v3

    long-to-int v3, v7

    add-int/2addr v3, v4

    and-long/2addr v5, v1

    long-to-int v5, v5

    add-int/2addr v5, p1

    invoke-virtual {p2, v4, p1, v3, v5}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-static {v1, v2}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide p1

    iput-wide p1, v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, p0, p0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public final resize-ozmzZPI(J)V
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v0

    if-nez v0, :cond_0

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-nez p1, :cond_0

    iget-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    if-nez p1, :cond_0

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    iget-boolean p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    const/4 v0, 0x1

    if-eq v0, p2, :cond_0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    invoke-virtual {p1, p0, v0}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method

.method public final reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->context:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v0, :cond_2

    iget-object v1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->isReleased:Z

    if-nez v1, :cond_0

    const-string v1, "layer should have been released before reuse"

    invoke-static {v1}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {v0}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object v0

    iput-object v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDestroyed:Z

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isIdentity:Z

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->matrixCache:[F

    invoke-static {p1}, Landroidx/compose/ui/graphics/Brush;->reset-impl([F)V

    iget-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->inverseMatrixCache:[F

    if-eqz p1, :cond_1

    invoke-static {p1}, Landroidx/compose/ui/graphics/Brush;->reset-impl([F)V

    :cond_1
    sget-wide p1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    iput-boolean v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    const p1, 0x7fffffff

    int-to-long p1, p1

    const/16 v1, 0x20

    shl-long v1, p1, v1

    const-wide v3, 0xffffffffL

    and-long/2addr p1, v3

    or-long/2addr p1, v1

    iput-wide p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Brush;

    iput v0, p0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    return-void

    :cond_2
    const-string p0, "currently reuse is only supported when we manage the layer lifecycle"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0
.end method

.method public final updateDisplayList()V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eqz v1, :cond_3

    iget-wide v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    sget-wide v3, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v1

    const-wide v2, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v4, 0xffffffffL

    const/16 v6, 0x20

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-wide v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v7

    iget-wide v8, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    shr-long/2addr v8, v6

    long-to-int v8, v8

    int-to-float v8, v8

    mul-float/2addr v7, v8

    iget-wide v8, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v8, v9}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v8

    iget-wide v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    and-long/2addr v9, v4

    long-to-int v9, v9

    int-to-float v9, v9

    mul-float/2addr v8, v9

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v9, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    int-to-long v7, v7

    shl-long/2addr v9, v6

    and-long/2addr v7, v4

    or-long/2addr v7, v9

    iget-wide v9, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_1

    iput-wide v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v1, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const-wide v9, 0x7fffffff7fffffffL

    and-long/2addr v9, v7

    cmp-long v9, v9, v2

    if-nez v9, :cond_0

    invoke-virtual {v1}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_0

    :cond_0
    shr-long v9, v7, v6

    long-to-int v9, v9

    invoke-static {v9}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v9

    invoke-virtual {v1, v9}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    and-long/2addr v7, v4

    long-to-int v7, v7

    invoke-static {v7}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v7

    invoke-virtual {v1, v7}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    :cond_1
    :goto_0
    iget-object v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v7, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    iget-object v8, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v9, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    iget-wide v11, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-object v13, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    invoke-static {v11, v12, v9, v10}, Landroidx/compose/ui/unit/IntSize;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_2

    iput-wide v9, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->size:J

    iget-wide v11, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->topLeft:J

    shr-long v14, v11, v6

    long-to-int v14, v14

    and-long/2addr v11, v4

    long-to-int v11, v11

    iget-object v12, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    move-wide v15, v2

    shr-long v2, v9, v6

    long-to-int v2, v2

    add-int/2addr v2, v14

    and-long v3, v9, v4

    long-to-int v3, v3

    add-int/2addr v3, v11

    invoke-virtual {v12, v14, v11, v2, v3}, Landroid/graphics/RenderNode;->setPosition(IIII)Z

    invoke-static {v9, v10}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v2

    iput-wide v2, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    iget-wide v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    cmp-long v2, v2, v15

    if-nez v2, :cond_2

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    :cond_2
    iput-object v7, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->density:Landroidx/compose/ui/unit/Density;

    iput-object v8, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->recordLambda:Lcom/tinder/StateMachine$Matcher$predicates$1;

    iput-object v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->drawBlock:Lkotlin/jvm/internal/Lambda;

    iget-object v2, v1, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clipDrawBlock:Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    iget-object v3, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    iget-object v4, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->beginRecording()Landroid/graphics/RecordingCanvas;

    move-result-object v5

    :try_start_0
    iget-object v6, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    iget-object v9, v6, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v9, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v10, v9, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iput-object v5, v9, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iget-object v5, v3, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;->drawContext:Landroidx/core/view/MenuHostHelper;

    invoke-virtual {v5, v7}, Landroidx/core/view/MenuHostHelper;->setDensity(Landroidx/compose/ui/unit/Density;)V

    invoke-virtual {v5, v8}, Landroidx/core/view/MenuHostHelper;->setLayoutDirection(Landroidx/compose/ui/unit/LayoutDirection;)V

    iput-object v1, v5, Landroidx/core/view/MenuHostHelper;->mMenuProviders:Ljava/lang/Object;

    iget-wide v7, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    invoke-virtual {v5, v7, v8}, Landroidx/core/view/MenuHostHelper;->setSize-uvyYCjk(J)V

    invoke-virtual {v5, v9}, Landroidx/core/view/MenuHostHelper;->setCanvas(Landroidx/compose/ui/graphics/Canvas;)V

    invoke-virtual {v2, v3}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, v6, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iput-object v10, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->endRecording()V

    iget-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isDirty:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v0, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    return-void

    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/graphics/RenderNode;->endRecording()V

    throw v0

    :cond_3
    return-void
.end method

.method public final updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iget v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    or-int/2addr v2, v3

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->density:Landroidx/compose/ui/unit/Density;

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_0

    iget-wide v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    iput-wide v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    :cond_0
    and-int/lit8 v4, v2, 0x1

    if-eqz v4, :cond_2

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_1

    goto :goto_0

    :cond_1
    iput v5, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleX(F)Z

    :cond_2
    :goto_0
    and-int/lit8 v4, v2, 0x2

    if-eqz v4, :cond_4

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    cmpg-float v6, v6, v5

    if-nez v6, :cond_3

    goto :goto_1

    :cond_3
    iput v5, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v5}, Landroid/graphics/RenderNode;->setScaleY(F)Z

    :cond_4
    :goto_1
    and-int/lit8 v4, v2, 0x4

    if-eqz v4, :cond_5

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v5, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    invoke-virtual {v4, v5}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    :cond_5
    and-int/lit8 v4, v2, 0x8

    if-eqz v4, :cond_6

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    :cond_6
    and-int/lit8 v4, v2, 0x10

    if-eqz v4, :cond_7

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    :cond_7
    and-int/lit8 v4, v2, 0x20

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_9

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    iget-object v8, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v9, v8, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    cmpg-float v9, v9, v7

    if-nez v9, :cond_8

    goto :goto_2

    :cond_8
    iput v7, v8, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->shadowElevation:F

    iget-object v8, v8, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v8, v7}, Landroid/graphics/RenderNode;->setElevation(F)Z

    iput-boolean v6, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v4}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    :goto_2
    iget v4, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    cmpl-float v4, v4, v5

    if-lez v4, :cond_9

    iget-boolean v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->drawnWithEnabledZ:Z

    if-nez v4, :cond_9

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v4, :cond_9

    invoke-interface {v4}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_9
    and-int/lit8 v4, v2, 0x40

    if-eqz v4, :cond_a

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-wide v9, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_a

    iput-wide v7, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/RenderNode;->setAmbientShadowColor(I)Z

    :cond_a
    and-int/lit16 v4, v2, 0x80

    if-eqz v4, :cond_b

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-wide v9, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    invoke-static {v7, v8, v9, v10}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v9

    if-nez v9, :cond_b

    iput-wide v7, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-static {v7, v8}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/graphics/RenderNode;->setSpotShadowColor(I)Z

    :cond_b
    and-int/lit16 v4, v2, 0x400

    if-eqz v4, :cond_d

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v8, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_c

    goto :goto_3

    :cond_c
    iput v7, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->rotationZ:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v7}, Landroid/graphics/RenderNode;->setRotationZ(F)Z

    :cond_d
    :goto_3
    and-int/lit16 v4, v2, 0x100

    if-eqz v4, :cond_e

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    :cond_e
    and-int/lit16 v4, v2, 0x200

    if-eqz v4, :cond_f

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    :cond_f
    and-int/lit16 v4, v2, 0x800

    if-eqz v4, :cond_11

    iget-object v4, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v8, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    cmpg-float v8, v8, v7

    if-nez v8, :cond_10

    goto :goto_4

    :cond_10
    iput v7, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    iget-object v4, v4, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v4, v7}, Landroid/graphics/RenderNode;->setCameraDistance(F)Z

    :cond_11
    :goto_4
    const-wide v7, 0x7fc000007fc00000L    # 2.247117487993712E307

    const-wide v9, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v3, :cond_14

    iget-wide v11, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    sget-wide v13, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    invoke-static {v11, v12, v13, v14}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v3

    if-eqz v3, :cond_12

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v11, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v11, v12, v7, v8}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v11

    if-nez v11, :cond_14

    iput-wide v7, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_5

    :cond_12
    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-wide v11, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v11, v12}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v11

    iget-wide v12, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    shr-long/2addr v12, v4

    long-to-int v12, v12

    int-to-float v12, v12

    mul-float/2addr v11, v12

    iget-wide v12, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->transformOrigin:J

    invoke-static {v12, v13}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v12

    iget-wide v13, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->size:J

    and-long/2addr v13, v9

    long-to-int v13, v13

    int-to-float v13, v13

    mul-float/2addr v12, v13

    invoke-static {v11}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v13, v11

    invoke-static {v12}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v11

    int-to-long v11, v11

    shl-long/2addr v13, v4

    and-long/2addr v11, v9

    or-long/2addr v11, v13

    iget-wide v13, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    invoke-static {v13, v14, v11, v12}, Landroidx/compose/ui/geometry/Offset;->equals-impl0(JJ)Z

    move-result v13

    if-nez v13, :cond_14

    iput-wide v11, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->pivotOffset:J

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const-wide v13, 0x7fffffff7fffffffL

    and-long/2addr v13, v11

    cmp-long v13, v13, v7

    if-nez v13, :cond_13

    invoke-virtual {v3}, Landroid/graphics/RenderNode;->resetPivot()Z

    goto :goto_5

    :cond_13
    shr-long v13, v11, v4

    long-to-int v13, v13

    invoke-static {v13}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v13

    invoke-virtual {v3, v13}, Landroid/graphics/RenderNode;->setPivotX(F)Z

    and-long/2addr v11, v9

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v11

    invoke-virtual {v3, v11}, Landroid/graphics/RenderNode;->setPivotY(F)Z

    :cond_14
    :goto_5
    and-int/lit16 v3, v2, 0x4000

    if-eqz v3, :cond_15

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-boolean v11, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    iget-boolean v12, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    if-eq v12, v11, :cond_15

    iput-boolean v11, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->clip:Z

    iput-boolean v6, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    :cond_15
    const/high16 v3, 0x20000

    and-int/2addr v3, v2

    const/4 v11, 0x0

    if-eqz v3, :cond_17

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v12, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget-object v13, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

    invoke-static {v13, v12}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_17

    iput-object v12, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    if-eqz v12, :cond_16

    invoke-virtual {v12}, Landroidx/compose/ui/graphics/BlurEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object v12

    goto :goto_6

    :cond_16
    move-object v12, v11

    :goto_6
    invoke-virtual {v3, v12}, Landroid/graphics/RenderNode;->setRenderEffect(Landroid/graphics/RenderEffect;)Z

    :cond_17
    const v3, 0x8000

    and-int/2addr v3, v2

    const/4 v12, 0x0

    if-eqz v3, :cond_1b

    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->impl:Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;

    iget v13, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    if-nez v13, :cond_18

    goto :goto_8

    :cond_18
    iput v12, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    iget-object v13, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    iget v14, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    const/4 v15, 0x3

    if-ne v14, v15, :cond_1a

    iget-object v3, v3, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

    if-eqz v3, :cond_19

    goto :goto_7

    :cond_19
    invoke-static {v13, v12}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    goto :goto_8

    :cond_1a
    :goto_7
    invoke-static {v13, v6}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    :cond_1b
    :goto_8
    and-int/lit16 v3, v2, 0x1f1b

    if-eqz v3, :cond_1c

    iput-boolean v6, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isMatrixDirty:Z

    iput-boolean v6, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->isInverseMatrixDirty:Z

    :cond_1c
    iget-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Brush;

    iget-object v13, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Brush;

    invoke-static {v3, v13}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_21

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Brush;

    iput-object v3, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->outline:Landroidx/compose/ui/graphics/Brush;

    if-nez v3, :cond_1d

    goto/16 :goto_9

    :cond_1d
    iget-object v13, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->graphicsLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    instance-of v14, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    if-eqz v14, :cond_1e

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rectangle;

    iget-object v3, v3, Landroidx/compose/ui/graphics/Outline$Rectangle;->rect:Landroidx/compose/ui/geometry/Rect;

    iget v5, v3, Landroidx/compose/ui/geometry/Rect;->left:F

    iget v7, v3, Landroidx/compose/ui/geometry/Rect;->top:F

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v14, v8

    shl-long/2addr v11, v4

    and-long/2addr v14, v9

    or-long/2addr v14, v11

    iget v8, v3, Landroidx/compose/ui/geometry/Rect;->right:F

    sub-float/2addr v8, v5

    iget v3, v3, Landroidx/compose/ui/geometry/Rect;->bottom:F

    sub-float/2addr v3, v7

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v7, v5

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v11, v3

    shl-long v3, v7, v4

    and-long v7, v11, v9

    or-long v17, v3, v7

    const/16 v16, 0x0

    invoke-virtual/range {v13 .. v18}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRoundRectOutline-TNW_H78(JFJ)V

    goto/16 :goto_9

    :cond_1e
    instance-of v14, v3, Landroidx/compose/ui/graphics/Outline$Generic;

    move-wide v15, v9

    const-wide/16 v9, 0x0

    if-eqz v14, :cond_1f

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Generic;

    iget-object v3, v3, Landroidx/compose/ui/graphics/Outline$Generic;->path:Landroidx/compose/ui/graphics/Path;

    iput-object v11, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    iput-wide v7, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    iput-wide v9, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iput v5, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    iput-boolean v6, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    iput-boolean v12, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    iput-object v3, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    goto :goto_9

    :cond_1f
    instance-of v14, v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    if-eqz v14, :cond_22

    check-cast v3, Landroidx/compose/ui/graphics/Outline$Rounded;

    iget-object v14, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRectPath:Landroidx/compose/ui/graphics/AndroidPath;

    if-eqz v14, :cond_20

    iput-object v11, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->internalOutline:Landroidx/compose/ui/graphics/Brush;

    iput-wide v7, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineSize:J

    iput-wide v9, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectOutlineTopLeft:J

    iput v5, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->roundRectCornerRadius:F

    iput-boolean v6, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlineDirty:Z

    iput-boolean v12, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->usePathForClip:Z

    iput-object v14, v13, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->outlinePath:Landroidx/compose/ui/graphics/Path;

    invoke-virtual {v13}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->configureOutlineAndClip()V

    goto :goto_9

    :cond_20
    iget-object v3, v3, Landroidx/compose/ui/graphics/Outline$Rounded;->roundRect:Landroidx/compose/ui/geometry/RoundRect;

    iget v5, v3, Landroidx/compose/ui/geometry/RoundRect;->left:F

    iget v7, v3, Landroidx/compose/ui/geometry/RoundRect;->top:F

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v8, v5

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    shl-long v7, v8, v4

    and-long v9, v10, v15

    or-long/2addr v7, v9

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getWidth()F

    move-result v5

    invoke-virtual {v3}, Landroidx/compose/ui/geometry/RoundRect;->getHeight()F

    move-result v9

    invoke-static {v5}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    int-to-long v10, v5

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v5

    move v9, v4

    int-to-long v4, v5

    shl-long/2addr v10, v9

    and-long/2addr v4, v15

    or-long v17, v10, v4

    iget-wide v3, v3, Landroidx/compose/ui/geometry/RoundRect;->bottomLeftCornerRadius:J

    shr-long/2addr v3, v9

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v16

    move-wide v14, v7

    invoke-virtual/range {v13 .. v18}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setRoundRectOutline-TNW_H78(JFJ)V

    goto :goto_9

    :cond_21
    move v6, v12

    :cond_22
    :goto_9
    iget v1, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iput v1, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->mutatedFields:I

    if-nez v2, :cond_23

    if-eqz v6, :cond_24

    :cond_23
    iget-object v0, v0, Landroidx/compose/ui/platform/GraphicsLayerOwnerLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_24

    invoke-interface {v1, v0, v0}, Landroid/view/ViewParent;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    :cond_24
    return-void
.end method
