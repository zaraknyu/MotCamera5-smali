.class public abstract Landroidx/compose/ui/node/NodeCoordinator;
.super Landroidx/compose/ui/node/LookaheadCapablePlaceable;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/Measurable;
.implements Landroidx/compose/ui/layout/LayoutCoordinates;
.implements Landroidx/compose/ui/node/OwnerScope;


# static fields
.field public static final PointerInputSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

.field public static final SemanticsSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

.field public static final graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

.field public static final tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;


# instance fields
.field public _drawBlock:Landroidx/compose/material3/ButtonKt$Button$2$1;

.field public _measureResult:Landroidx/compose/ui/layout/MeasureResult;

.field public _rectCache:Landroidx/compose/ui/geometry/MutableRect;

.field public drawBlockCanvas:Landroidx/compose/ui/graphics/Canvas;

.field public drawBlockParentLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public final invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

.field public isClipping:Z

.field public lastLayerAlpha:F

.field public lastLayerDrawingWasSkipped:Z

.field public layer:Landroidx/compose/ui/node/OwnedLayer;

.field public layerBlock:Lkotlin/jvm/functions/Function1;

.field public layerDensity:Landroidx/compose/ui/unit/Density;

.field public layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

.field public layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

.field public final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field public oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

.field public position:J

.field public released:Z

.field public wrapped:Landroidx/compose/ui/node/NodeCoordinator;

.field public wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

.field public zIndex:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    iput v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    iput v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    sget-wide v1, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    const/high16 v1, 0x41000000    # 8.0f

    iput v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    sget-wide v1, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    sget-object v1, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    iput-object v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    const-wide v1, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    invoke-static {}, Landroidx/compose/ui/unit/DensityKt;->Density$default()Landroidx/compose/ui/unit/DensityImpl;

    move-result-object v1

    iput-object v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v1, v0, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    new-instance v0, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v0}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    new-instance v0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->PointerInputSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    new-instance v0, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/node/NodeCoordinator;->SemanticsSource:Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/LayoutNode;)V
    .locals 2

    invoke-direct {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, p1, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    iget-object p1, p1, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    const p1, 0x3f4ccccd    # 0.8f

    iput p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    new-instance p1, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;I)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    return-void
.end method


# virtual methods
.method public final ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 4

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    const/16 p1, 0x20

    shr-long v2, v0, p1

    long-to-int v2, v2

    iget v3, p2, Landroidx/compose/ui/geometry/MutableRect;->left:F

    int-to-float v2, v2

    sub-float/2addr v3, v2

    iput v3, p2, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v3, p2, Landroidx/compose/ui/geometry/MutableRect;->right:F

    sub-float/2addr v3, v2

    iput v3, p2, Landroidx/compose/ui/geometry/MutableRect;->right:F

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    long-to-int v0, v0

    iget v1, p2, Landroidx/compose/ui/geometry/MutableRect;->top:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p2, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget v1, p2, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    sub-float/2addr v1, v0

    iput v1, p2, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    invoke-interface {v0, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v0, :cond_2

    if-eqz p3, :cond_2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    shr-long p0, v0, p1

    long-to-int p0, p0

    int-to-float p0, p0

    and-long/2addr v0, v2

    long-to-int p1, v0

    int-to-float p1, p1

    const/4 p3, 0x0

    invoke-virtual {p2, p3, p3, p0, p1}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    :cond_2
    :goto_0
    return-void
.end method

.method public final ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;J)J
    .locals 2

    if-ne p1, p0, :cond_0

    return-wide p2

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v0, :cond_2

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide p0

    return-wide p0

    :cond_2
    :goto_0
    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final calculateMinimumTouchTargetPadding-E7KxVPU(J)J
    .locals 6

    const/16 v0, 0x20

    shr-long v1, p1, v0

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    const-wide v2, 0xffffffffL

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float/2addr p1, p0

    const/high16 p0, 0x40000000    # 2.0f

    div-float/2addr v1, p0

    const/4 p2, 0x0

    invoke-static {p2, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    div-float/2addr p1, p0

    invoke-static {p2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v4, p0

    shl-long p0, p1, v0

    and-long v0, v4, v2

    or-long/2addr p0, v0

    return-wide p0
.end method

.method public final distanceInMinimumTouchTarget-tz77jQw(JJ)F
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v0

    int-to-float v0, v0

    const/16 v1, 0x20

    shr-long v2, p3, v1

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    cmpl-float v0, v0, v2

    const-wide v2, 0xffffffffL

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    and-long v4, p3, v2

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    cmpl-float v0, v0, v4

    if-ltz v0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0, p3, p4}, Landroidx/compose/ui/node/NodeCoordinator;->calculateMinimumTouchTargetPadding-E7KxVPU(J)J

    move-result-wide p3

    shr-long v4, p3, v1

    long-to-int v0, v4

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    and-long/2addr p3, v2

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    shr-long v4, p1, v1

    long-to-int p4, v4

    invoke-static {p4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p4

    const/4 v4, 0x0

    cmpg-float v5, p4, v4

    if-gez v5, :cond_1

    neg-float p4, p4

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr p4, v5

    :goto_0
    invoke-static {v4, p4}, Ljava/lang/Math;->max(FF)F

    move-result p4

    and-long/2addr p1, v2

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    cmpg-float p2, p1, v4

    if-gez p2, :cond_2

    neg-float p0, p1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result p0

    int-to-float p0, p0

    sub-float p0, p1, p0

    :goto_1
    invoke-static {v4, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    invoke-static {p4}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v5, p0

    shl-long p0, p1, v1

    and-long/2addr v5, v2

    or-long/2addr p0, v5

    cmpl-float p2, v0, v4

    if-gtz p2, :cond_3

    cmpl-float p2, p3, v4

    if-lez p2, :cond_4

    :cond_3
    shr-long v4, p0, v1

    long-to-int p2, v4

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpg-float p2, p2, v0

    if-gtz p2, :cond_4

    and-long v0, p0, v2

    long-to-int p2, v0

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    cmpg-float p2, p2, p3

    if-gtz p2, :cond_4

    invoke-static {p0, p1}, Landroidx/compose/ui/geometry/Offset;->getDistanceSquared-impl(J)F

    move-result p0

    return p0

    :cond_4
    :goto_2
    const/high16 p0, 0x7f800000    # Float.POSITIVE_INFINITY

    return p0
.end method

.method public final draw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 5

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    int-to-float v2, v2

    const-wide v3, 0xffffffffL

    and-long/2addr v0, v3

    long-to-int v0, v0

    int-to-float v0, v0

    invoke-interface {p1, v2, v0}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    neg-float p0, v2

    neg-float p2, v0

    invoke-interface {p1, p0, p2}, Landroidx/compose/ui/graphics/Canvas;->translate(FF)V

    return-void
.end method

.method public final drawContainedDrawModifiers(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 11

    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-nez v1, :cond_0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void

    :cond_0
    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2}, Landroidx/compose/ui/platform/AndroidComposeView;->getSharedDrawScope()Landroidx/compose/ui/node/LayoutNodeDrawScope;

    move-result-object v3

    iget-wide v4, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v4, v5}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    move-object v10, v2

    :goto_0
    if-eqz v1, :cond_8

    instance-of v4, v1, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v4, :cond_1

    move-object v8, v1

    check-cast v8, Landroidx/compose/ui/node/DrawModifierNode;

    move-object v7, p0

    move-object v4, p1

    move-object v9, p2

    invoke-virtual/range {v3 .. v9}, Landroidx/compose/ui/node/LayoutNodeDrawScope;->drawDirect-eZhPAX0$ui_release(Landroidx/compose/ui/graphics/Canvas;JLandroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/node/DrawModifierNode;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    goto :goto_4

    :cond_1
    move-object v7, p0

    move-object v4, p1

    move-object v9, p2

    iget p0, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr p0, v0

    if-eqz p0, :cond_7

    instance-of p0, v1, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz p0, :cond_7

    move-object p0, v1

    check-cast p0, Landroidx/compose/ui/node/DelegatingNode;

    iget-object p0, p0, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 p1, 0x0

    :goto_1
    const/4 p2, 0x1

    if-eqz p0, :cond_6

    iget v8, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v8, v0

    if-eqz v8, :cond_5

    add-int/lit8 p1, p1, 0x1

    if-ne p1, p2, :cond_2

    move-object v1, p0

    goto :goto_2

    :cond_2
    if-nez v10, :cond_3

    new-instance v10, Landroidx/compose/runtime/collection/MutableVector;

    const/16 p2, 0x10

    new-array p2, p2, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v10, p2}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-virtual {v10, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v1, v2

    :cond_4
    invoke-virtual {v10, p0}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_5
    :goto_2
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_6
    if-ne p1, p2, :cond_7

    :goto_3
    move-object p1, v4

    move-object p0, v7

    move-object p2, v9

    goto :goto_0

    :cond_7
    :goto_4
    invoke-static {v10}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    goto :goto_3

    :cond_8
    return-void
.end method

.method public abstract ensureLookaheadDelegateCreated()V
.end method

.method public final findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;
    .locals 5

    iget-object v0, p1, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    iget-object v2, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-boolean v2, v2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v2, :cond_0

    const-string/jumbo v2, "visitLocalAncestors called on an unattached node"

    invoke-static {v2}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    :goto_0
    if-eqz v1, :cond_7

    iget v2, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    if-ne v1, v0, :cond_1

    goto :goto_4

    :cond_1
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_2
    :goto_1
    iget v2, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget v3, v1, Landroidx/compose/ui/node/LayoutNode;->depth:I

    if-le v2, v3, :cond_3

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    move-object v2, v1

    :goto_2
    iget v3, v2, Landroidx/compose/ui/node/LayoutNode;->depth:I

    iget v4, v0, Landroidx/compose/ui/node/LayoutNode;->depth:I

    if-le v3, v4, :cond_4

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    :goto_3
    if-eq v0, v2, :cond_6

    invoke-virtual {v0}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v0

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->getParent$ui_release()Landroidx/compose/ui/node/LayoutNode;

    move-result-object v2

    if-eqz v0, :cond_5

    if-eqz v2, :cond_5

    goto :goto_3

    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "layouts are not part of the same hierarchy"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_6
    if-ne v2, v1, :cond_8

    :cond_7
    return-object p0

    :cond_8
    iget-object p0, p1, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-ne v0, p0, :cond_9

    :goto_4
    return-object p1

    :cond_9
    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    return-object p0
.end method

.method public final fromParentPosition-8S9VItk(J)J
    .locals 6

    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    const/16 v2, 0x20

    shr-long v3, p1, v2

    long-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    shr-long v4, v0, v2

    long-to-int v4, v4

    int-to-float v4, v4

    sub-float/2addr v3, v4

    const-wide v4, 0xffffffffL

    and-long/2addr p1, v4

    long-to-int p1, p1

    invoke-static {p1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p1

    and-long/2addr v0, v4

    long-to-int p2, v0

    int-to-float p2, p2

    sub-float/2addr p1, p2

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v0, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    shl-long/2addr v0, v2

    and-long/2addr p1, v4

    or-long/2addr p1, v0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    invoke-interface {p0, p1, p2, v0}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide p0

    return-wide p0

    :cond_0
    return-wide p1
.end method

.method public final getChild()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 0

    return-object p0
.end method

.method public final getDensity()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getDensity()F

    move-result p0

    return p0
.end method

.method public final getDrawBlock()Lkotlin/jvm/functions/Function2;
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_drawBlock:Landroidx/compose/material3/ButtonKt$Button$2$1;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;-><init>(Landroidx/compose/ui/node/NodeCoordinator;I)V

    new-instance v1, Landroidx/compose/material3/ButtonKt$Button$2$1;

    const/16 v2, 0xc

    invoke-direct {v1, v2, p0, v0}, Landroidx/compose/material3/ButtonKt$Button$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->_drawBlock:Landroidx/compose/material3/ButtonKt$Button$2$1;

    return-object v1

    :cond_0
    return-object v0
.end method

.method public final getFontScale()F
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {p0}, Landroidx/compose/ui/unit/Density;->getFontScale()F

    move-result p0

    return p0
.end method

.method public final getHasMeasureResult()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final getLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    return-object p0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public abstract getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;
.end method

.method public final getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "Asking for measurement result of unmeasured layout modifier"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public final getMinimumTouchTargetSize-NH-jbRc()J
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->viewConfiguration:Landroidx/compose/ui/platform/ViewConfiguration;

    invoke-interface {p0}, Landroidx/compose/ui/platform/ViewConfiguration;->getMinimumTouchTargetSize-MYxV2XQ()J

    move-result-wide v1

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/unit/Density;->toSize-XkaWNTQ(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public final getParent()Landroidx/compose/ui/node/LookaheadCapablePlaceable;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getParentData()Ljava/lang/Object;
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v1, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Landroidx/compose/ui/node/NodeChain;->has-H91voCI$ui_release(I)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_9

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    iget-object p0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->tail:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/TailModifierNode;

    move-object v1, v3

    :goto_0
    if-eqz p0, :cond_8

    iget v4, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v4, v2

    if-eqz v4, :cond_7

    move-object v4, p0

    move-object v5, v3

    :goto_1
    if-eqz v4, :cond_7

    instance-of v6, v4, Landroidx/compose/ui/node/ParentDataModifierNode;

    if-eqz v6, :cond_0

    check-cast v4, Landroidx/compose/ui/node/ParentDataModifierNode;

    iget-object v6, v0, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-interface {v4, v6, v1}, Landroidx/compose/ui/node/ParentDataModifierNode;->modifyParentData(Landroidx/compose/ui/unit/Density;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_4

    :cond_0
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v2

    if-eqz v6, :cond_6

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_6

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    :goto_2
    const/4 v8, 0x1

    if-eqz v6, :cond_5

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v2

    if-eqz v9, :cond_4

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_1

    move-object v4, v6

    goto :goto_3

    :cond_1
    if-nez v5, :cond_2

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_2
    if-eqz v4, :cond_3

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_3
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_5
    if-ne v7, v8, :cond_6

    goto :goto_1

    :cond_6
    :goto_4
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_1

    :cond_7
    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    goto :goto_0

    :cond_8
    return-object v1

    :cond_9
    return-object v3
.end method

.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    return-object p0
.end method

.method public final getPosition-nOcc-ac()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    return-wide v0
.end method

.method public final getSize-YbymL2g()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    return-wide v0
.end method

.method public abstract getTail()Landroidx/compose/ui/Modifier$Node;
.end method

.method public final head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    invoke-static {p1}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v1, :cond_1

    goto :goto_2

    :cond_1
    :goto_0
    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    :goto_1
    if-eqz p0, :cond_3

    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_3

    iget v0, p0, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_2

    return-object p0

    :cond_2
    if-eq p0, v1, :cond_3

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_3
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public final headNode(Z)Landroidx/compose/ui/Modifier$Node;
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object v1, v0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/node/NodeCoordinator;

    if-ne v1, p0, :cond_0

    iget-object p0, v0, Landroidx/compose/ui/node/NodeChain;->head:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/Modifier$Node;

    return-object p0

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    return-object p0

    :cond_1
    return-object v0

    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    return-object p0

    :cond_3
    return-object v0
.end method

.method public final hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 7

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object v4, p5

    move v5, p6

    move v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void

    :cond_0
    iget v0, p5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    iget-object v1, p5, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    add-int/lit8 v2, v0, 0x1

    iget v3, v1, Landroidx/collection/MutableObjectList;->_size:I

    invoke-virtual {p5, v2, v3}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    iget v2, p5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v1, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    iget-object v1, p5, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndFlags:Landroidx/collection/MutableLongList;

    const/high16 v2, -0x40800000    # -1.0f

    const/4 v3, 0x0

    invoke-static {v2, p7, v3}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->add(J)V

    invoke-virtual {p2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v1

    invoke-static {p1, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object p1

    invoke-virtual/range {p0 .. p7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    iput v0, p5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public final hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZF)V
    .locals 11

    if-nez p1, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-wide v2, p3

    move-object/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p7

    invoke-virtual/range {v0 .. v6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void

    :cond_0
    move-object/from16 v4, p5

    iget v10, v4, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    iget-object v0, v4, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    add-int/lit8 v1, v10, 0x1

    iget v2, v0, Landroidx/collection/MutableObjectList;->_size:I

    invoke-virtual {v4, v1, v2}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    iget v1, v4, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v4, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v0, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    iget-object v0, v4, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndFlags:Landroidx/collection/MutableLongList;

    const/4 v1, 0x0

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static {v8, v7, v1}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroidx/collection/MutableLongList;->add(J)V

    invoke-virtual {p2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v0

    invoke-static {p1, v0}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v9, 0x1

    move-object v0, p0

    move-object v2, p2

    move/from16 v6, p6

    move-object v5, v4

    move-wide v3, p3

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    move-object v4, v5

    iput v10, v4, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void
.end method

.method public final hitTest-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 14

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    invoke-virtual {p1}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v0

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->head-H91voCI(I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    invoke-virtual {p0, v3, v4}, Landroidx/compose/ui/node/NodeCoordinator;->withinLayerBounds-k-4lQ0M(J)Z

    move-result v0

    const/4 v8, 0x0

    const/high16 v9, 0x7f800000    # Float.POSITIVE_INFINITY

    const v10, 0x7fffffff

    const/4 v11, 0x1

    if-nez v0, :cond_2

    if-ne v6, v11, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v11

    invoke-virtual {p0, v3, v4, v11, v12}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    and-int/2addr v2, v10

    if-ge v2, v9, :cond_1

    iget v2, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v7

    if-ne v2, v7, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {v0, v8, v8}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v7

    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-fn2tFes()J

    move-result-wide v9

    invoke-static {v9, v10, v7, v8}, Landroidx/compose/ui/node/HitTestResultKt;->compareTo-9YPOF3E(JJ)I

    move-result v2

    if-lez v2, :cond_1

    :goto_0
    const/4 v7, 0x0

    move-object v2, p1

    move v8, v0

    move-object v0, p0

    invoke-virtual/range {v0 .. v8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    :cond_1
    return-void

    :cond_2
    if-nez v1, :cond_3

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void

    :cond_3
    const/16 v0, 0x20

    shr-long v2, p2, v0

    long-to-int v0, v2

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v2, 0xffffffffL

    and-long v2, p2, v2

    long-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v2

    const/4 v3, 0x0

    cmpl-float v4, v0, v3

    if-ltz v4, :cond_4

    cmpl-float v3, v2, v3

    if-ltz v3, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_4

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_4

    move-object v0, p0

    move-object v2, p1

    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    invoke-virtual/range {v0 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hit-5ShdDok(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void

    :cond_4
    move-wide/from16 v3, p2

    move-object/from16 v5, p4

    move/from16 v6, p5

    if-ne v6, v11, :cond_5

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide v12

    invoke-virtual {p0, v3, v4, v12, v13}, Landroidx/compose/ui/node/NodeCoordinator;->distanceInMinimumTouchTarget-tz77jQw(JJ)F

    move-result v2

    goto :goto_1

    :cond_5
    const/high16 v2, 0x7f800000    # Float.POSITIVE_INFINITY

    :goto_1
    invoke-static {v2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v7

    and-int/2addr v7, v10

    if-ge v7, v9, :cond_7

    iget v7, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v9

    if-ne v7, v9, :cond_6

    move/from16 v7, p6

    goto :goto_2

    :cond_6
    move/from16 v7, p6

    invoke-static {v2, v7, v8}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v9

    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-fn2tFes()J

    move-result-wide v12

    invoke-static {v12, v13, v9, v10}, Landroidx/compose/ui/node/HitTestResultKt;->compareTo-9YPOF3E(JJ)I

    move-result v9

    if-lez v9, :cond_8

    :goto_2
    move v9, v11

    :goto_3
    move-object v0, p0

    move v8, v2

    move-object v2, p1

    goto :goto_4

    :cond_7
    move/from16 v7, p6

    :cond_8
    move v9, v8

    goto :goto_3

    :goto_4
    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    return-void
.end method

.method public hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrapped:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_0

    invoke-virtual {p0, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->fromParentPosition-8S9VItk(J)J

    move-result-wide p2

    invoke-virtual/range {p0 .. p6}, Landroidx/compose/ui/node/NodeCoordinator;->hitTest-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    :cond_0
    return-void
.end method

.method public final invalidateLayer()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_1
    return-void
.end method

.method public final isAttached()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    return p0
.end method

.method public final isTransparent()Z
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->isTransparent()Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public final isValidOwnerScope()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->released:Z

    if-nez v0, :cond_0

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 7

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->isAttached()Z

    move-result v0

    if-nez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LayoutCoordinates "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " is not attached!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_1
    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_2

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_3

    iget-object v0, v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez v0, :cond_4

    :cond_3
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_4
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object v1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    if-nez v2, :cond_5

    new-instance v2, Landroidx/compose/ui/geometry/MutableRect;

    invoke-direct {v2}, Landroidx/compose/ui/geometry/MutableRect;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->_rectCache:Landroidx/compose/ui/geometry/MutableRect;

    :cond_5
    const/4 v3, 0x0

    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->top:F

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    const/16 v5, 0x20

    shr-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    iput v3, v2, Landroidx/compose/ui/geometry/MutableRect;->right:F

    invoke-interface {p1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    long-to-int p1, v3

    int-to-float p1, p1

    iput p1, v2, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    :goto_1
    if-eq v0, v1, :cond_7

    const/4 p1, 0x0

    invoke-virtual {v0, v2, p2, p1}, Landroidx/compose/ui/node/NodeCoordinator;->rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V

    invoke-virtual {v2}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p0, Landroidx/compose/ui/geometry/Rect;->Zero:Landroidx/compose/ui/geometry/Rect;

    return-object p0

    :cond_6
    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1, v2, p2}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/geometry/MutableRect;Z)V

    new-instance p0, Landroidx/compose/ui/geometry/Rect;

    iget p1, v2, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget p2, v2, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget v0, v2, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iget v1, v2, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    invoke-direct {p0, p1, p2, v0, v1}, Landroidx/compose/ui/geometry/Rect;-><init>(FFFF)V

    return-object p0
.end method

.method public final localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 3

    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    iget-object v0, v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    const-wide v0, -0x7fffffff80000000L    # -1.0609978955E-314

    xor-long/2addr p2, v0

    check-cast p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    invoke-virtual {p1, p0, p2, p3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    xor-long/2addr p0, v0

    return-wide p0

    :cond_0
    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    iget-object v0, v0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez v0, :cond_3

    :cond_2
    const-string v0, "null cannot be cast to non-null type androidx.compose.ui.node.NodeCoordinator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/node/NodeCoordinator;

    :cond_3
    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    invoke-virtual {p0, v0}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    :goto_1
    if-eq v0, p1, :cond_5

    iget-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v1, :cond_4

    const/4 v2, 0x0

    invoke-interface {v1, p2, p3, v2}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide p2

    :cond_4
    iget-wide v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide p2

    iget-object v0, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->ancestorToLocal-S_NoaFU(Landroidx/compose/ui/node/NodeCoordinator;J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final localToRoot-MK-Hz9U(J)J
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v0

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    :goto_0
    if-eqz p0, :cond_2

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide p1

    :cond_1
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-static {p1, p2, v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide p1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    goto :goto_0

    :cond_2
    return-wide p1
.end method

.method public final localToWindow-MK-Hz9U(J)J
    .locals 0

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide p1

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {p0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recalculateWindowPosition()V

    iget-object p0, p0, Landroidx/compose/ui/platform/AndroidComposeView;->viewToWindowMatrix:[F

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    return-wide p0
.end method

.method public final onAttach()V
    .locals 7

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-static {v0}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDrawBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v2

    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v5, 0x0

    const/16 v6, 0x8

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    invoke-static/range {v1 .. v6}, Landroidx/compose/ui/node/Owner;->createLayer$default(Landroidx/compose/ui/node/Owner;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ZI)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object v0

    iget-wide v1, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    iget-wide v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-interface {v0, v1, v2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    invoke-interface {v0}, Landroidx/compose/ui/node/OwnedLayer;->invalidate()V

    iput-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    :cond_0
    return-void
.end method

.method public final onCoordinatesUsed$ui_release()V
    .locals 3

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v0, v0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->layoutState:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    const/4 v2, 0x1

    if-eq v0, v1, :cond_0

    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_2

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-boolean v1, v1, Landroidx/compose/ui/node/MeasurePassDelegate;->layingOutChildren:Z

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setCoordinatesAccessedDuringPlacement(Z)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setCoordinatesAccessedDuringModifierPlacement(Z)V

    :cond_2
    :goto_0
    sget-object v1, Landroidx/compose/ui/node/LayoutNode$LayoutState;->LookaheadLayingOut:Landroidx/compose/ui/node/LayoutNode$LayoutState;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->lookaheadPassDelegate:Landroidx/compose/ui/node/LookaheadPassDelegate;

    if-eqz v0, :cond_3

    iget-boolean v0, v0, Landroidx/compose/ui/node/LookaheadPassDelegate;->layingOutChildren:Z

    if-ne v0, v2, :cond_3

    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setLookaheadCoordinatesAccessedDuringPlacement(Z)V

    return-void

    :cond_3
    invoke-virtual {p0, v2}, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->setLookaheadCoordinatesAccessedDuringModifierPlacement(Z)V

    :cond_4
    return-void
.end method

.method public final onMeasured()V
    .locals 13

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eqz v2, :cond_c

    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->node:Landroidx/compose/ui/Modifier$Node;

    iget v2, v2, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_c

    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->getCurrentThreadSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/compose/runtime/snapshots/Snapshot;->getReadObserver()Lkotlin/jvm/functions/Function1;

    move-result-object v4

    goto :goto_0

    :cond_0
    move-object v4, v3

    :goto_0
    invoke-static {v2}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->makeCurrentNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;)Landroidx/compose/runtime/snapshots/Snapshot;

    move-result-object v5

    if-eqz v1, :cond_1

    :try_start_0
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_8

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v6, :cond_2

    goto/16 :goto_7

    :cond_2
    :goto_1
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_2
    if-eqz v1, :cond_b

    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_b

    iget v7, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v0

    if-eqz v7, :cond_a

    move-object v7, v1

    move-object v8, v3

    :goto_3
    if-eqz v7, :cond_a

    instance-of v9, v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v9, :cond_3

    check-cast v7, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    iget-wide v9, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-interface {v7, v9, v10}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onRemeasured-ozmzZPI(J)V

    goto :goto_6

    :cond_3
    iget v9, v7, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_9

    instance-of v9, v7, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v9, :cond_9

    move-object v9, v7

    check-cast v9, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v9, v9, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v10, 0x0

    :goto_4
    const/4 v11, 0x1

    if-eqz v9, :cond_8

    iget v12, v9, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v12, v0

    if-eqz v12, :cond_7

    add-int/lit8 v10, v10, 0x1

    if-ne v10, v11, :cond_4

    move-object v7, v9

    goto :goto_5

    :cond_4
    if-nez v8, :cond_5

    new-instance v8, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v11, 0x10

    new-array v11, v11, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v8, v11}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_5
    if-eqz v7, :cond_6

    invoke-virtual {v8, v7}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v7, v3

    :cond_6
    invoke-virtual {v8, v9}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_7
    :goto_5
    iget-object v9, v9, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_8
    if-ne v10, v11, :cond_9

    goto :goto_3

    :cond_9
    :goto_6
    invoke-static {v8}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v7

    goto :goto_3

    :cond_a
    if-eq v1, v6, :cond_b

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :cond_b
    :goto_7
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    return-void

    :goto_8
    invoke-static {v2, v5, v4}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->restoreNonObservable(Landroidx/compose/runtime/snapshots/Snapshot;Landroidx/compose/runtime/snapshots/Snapshot;Lkotlin/jvm/functions/Function1;)V

    throw p0

    :cond_c
    return-void
.end method

.method public final onPlaced()V
    .locals 10

    const/16 v0, 0x80

    invoke-static {v0}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v2

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, v2, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v2, :cond_1

    goto/16 :goto_6

    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    :goto_1
    if-eqz v1, :cond_a

    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_a

    iget v3, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v3, v0

    if-eqz v3, :cond_9

    const/4 v3, 0x0

    move-object v4, v1

    move-object v5, v3

    :goto_2
    if-eqz v4, :cond_9

    instance-of v6, v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    if-eqz v6, :cond_2

    check-cast v4, Landroidx/compose/ui/node/LayoutAwareModifierNode;

    invoke-interface {v4, p0}, Landroidx/compose/ui/node/LayoutAwareModifierNode;->onPlaced(Landroidx/compose/ui/layout/LayoutCoordinates;)V

    goto :goto_5

    :cond_2
    iget v6, v4, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v6, v0

    if-eqz v6, :cond_8

    instance-of v6, v4, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_8

    move-object v6, v4

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    const/4 v7, 0x0

    :goto_3
    const/4 v8, 0x1

    if-eqz v6, :cond_7

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v0

    if-eqz v9, :cond_6

    add-int/lit8 v7, v7, 0x1

    if-ne v7, v8, :cond_3

    move-object v4, v6

    goto :goto_4

    :cond_3
    if-nez v5, :cond_4

    new-instance v5, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v8, 0x10

    new-array v8, v8, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v5, v8}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_4
    if-eqz v4, :cond_5

    invoke-virtual {v5, v4}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v4, v3

    :cond_5
    invoke-virtual {v5, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_6
    :goto_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_3

    :cond_7
    if-ne v7, v8, :cond_8

    goto :goto_2

    :cond_8
    :goto_5
    invoke-static {v5}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v4

    goto :goto_2

    :cond_9
    if-eq v1, v2, :cond_a

    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_1

    :cond_a
    :goto_6
    return-void
.end method

.method public final outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V
    .locals 20

    move-object/from16 v0, p1

    if-nez v0, :cond_0

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v1 .. v7}, Landroidx/compose/ui/node/NodeCoordinator;->hitTestChild-qzLsGqo(Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZ)V

    return-void

    :cond_0
    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    const/4 v2, 0x0

    const/4 v10, 0x1

    const/4 v4, 0x3

    if-ne v6, v4, :cond_1

    goto :goto_0

    :cond_1
    const/4 v8, 0x4

    if-ne v6, v8, :cond_11

    :goto_0
    move-object v8, v0

    const/4 v9, 0x0

    :goto_1
    if-eqz v8, :cond_11

    instance-of v11, v8, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v11, :cond_a

    check-cast v8, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {v8}, Landroidx/compose/ui/node/PointerInputModifierNode;->getTouchBoundsExpansion-RZrCHBk()J

    move-result-wide v8

    const/16 v11, 0x20

    shr-long v11, p3, v11

    long-to-int v11, v11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v12

    move-object/from16 v13, p0

    iget-object v14, v13, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v15, v14, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    sget v16, Landroidx/compose/ui/node/TouchBoundsExpansion;->$r8$clinit:I

    const-wide/high16 v16, -0x8000000000000000L

    and-long v16, v8, v16

    const-wide/16 v18, 0x0

    cmp-long v16, v16, v18

    const/4 v3, 0x2

    if-eqz v16, :cond_3

    const/16 v18, 0x10

    sget-object v1, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v15, v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-static {v3, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v1

    goto :goto_3

    :cond_3
    const/16 v18, 0x10

    :goto_2
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v1

    :goto_3
    neg-int v1, v1

    int-to-float v1, v1

    cmpl-float v1, v12, v1

    if-ltz v1, :cond_11

    invoke-static {v11}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getMeasuredWidth()I

    move-result v11

    iget-object v12, v14, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eqz v16, :cond_5

    sget-object v14, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    if-ne v12, v14, :cond_4

    goto :goto_4

    :cond_4
    invoke-static {v2, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v3

    goto :goto_5

    :cond_5
    :goto_4
    invoke-static {v3, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v3

    :goto_5
    add-int/2addr v11, v3

    int-to-float v3, v11

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    const-wide v11, 0xffffffffL

    and-long v11, p3, v11

    long-to-int v1, v11

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v3

    invoke-static {v10, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v11

    neg-int v11, v11

    int-to-float v11, v11

    cmpl-float v3, v3, v11

    if-ltz v3, :cond_11

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-virtual {v13}, Landroidx/compose/ui/layout/Placeable;->getMeasuredHeight()I

    move-result v3

    invoke-static {v4, v8, v9}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->access$unpack(IJ)I

    move-result v4

    add-int/2addr v4, v3

    int-to-float v3, v4

    cmpg-float v1, v1, v3

    if-gez v1, :cond_11

    iget-object v1, v5, Landroidx/compose/ui/node/HitTestResult;->distanceFromEdgeAndFlags:Landroidx/collection/MutableLongList;

    iget-object v2, v5, Landroidx/compose/ui/node/HitTestResult;->values:Landroidx/collection/MutableObjectList;

    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v4

    const/4 v11, 0x0

    if-ne v3, v4, :cond_6

    iget v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v3, v12, 0x1

    iget v4, v2, Landroidx/collection/MutableObjectList;->_size:I

    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/2addr v3, v10

    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-static {v11, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->add(J)V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v8, p8

    move/from16 v9, p9

    move-object v0, v13

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void

    :cond_6
    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-fn2tFes()J

    move-result-wide v3

    iget v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-static {v3, v4}, Landroidx/compose/ui/node/HitTestResultKt;->isInExpandedBounds-impl(J)Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-static {v5}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v13

    iput v13, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v3, v13, 0x1

    iget v4, v2, Landroidx/collection/MutableObjectList;->_size:I

    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/2addr v3, v10

    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-static {v11, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->add(J)V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    iput v13, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v5}, Landroidx/compose/ui/node/HitTestResult;->findBestHitDistance-fn2tFes()J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->getDistance-impl(J)F

    move-result v0

    cmpg-float v0, v0, v11

    if-gez v0, :cond_7

    add-int/lit8 v0, v12, 0x1

    iget v1, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/2addr v1, v10

    invoke-virtual {v5, v0, v1}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    :cond_7
    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    return-void

    :cond_8
    invoke-static {v3, v4}, Landroidx/compose/ui/node/HitTestResultKt;->getDistance-impl(J)F

    move-result v3

    cmpl-float v3, v3, v11

    if-lez v3, :cond_9

    iget v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/lit8 v3, v12, 0x1

    iget v4, v2, Landroidx/collection/MutableObjectList;->_size:I

    invoke-virtual {v5, v3, v4}, Landroidx/compose/ui/node/HitTestResult;->removeNodesInRange(II)V

    iget v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    add-int/2addr v3, v10

    iput v3, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    invoke-virtual {v2, v0}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V

    invoke-static {v11, v7, v10}, Landroidx/compose/ui/node/HitTestResultKt;->DistanceAndFlags(FZZ)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Landroidx/collection/MutableLongList;->add(J)V

    invoke-virtual/range {p2 .. p2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    move-object/from16 v0, p0

    move-object/from16 v2, p2

    move-wide/from16 v3, p3

    move/from16 v6, p6

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    iput v12, v5, Landroidx/compose/ui/node/HitTestResult;->hitDepth:I

    :cond_9
    return-void

    :cond_a
    const/16 v18, 0x10

    iget v1, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_10

    instance-of v1, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v1, :cond_10

    move-object v1, v8

    check-cast v1, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v1, v1, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v3, v2

    :goto_6
    if-eqz v1, :cond_f

    iget v6, v1, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/lit8 v6, v6, 0x10

    if-eqz v6, :cond_e

    add-int/lit8 v3, v3, 0x1

    if-ne v3, v10, :cond_b

    move-object v8, v1

    goto :goto_7

    :cond_b
    if-nez v9, :cond_c

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    move/from16 v6, v18

    new-array v7, v6, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v7}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_c
    if-eqz v8, :cond_d

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v8, 0x0

    :cond_d
    invoke-virtual {v9, v1}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_e
    :goto_7
    iget-object v1, v1, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    const/16 v18, 0x10

    goto :goto_6

    :cond_f
    if-ne v3, v10, :cond_10

    :goto_8
    move/from16 v6, p6

    move/from16 v7, p7

    goto/16 :goto_1

    :cond_10
    invoke-static {v9}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_8

    :cond_11
    if-eqz p9, :cond_12

    invoke-virtual/range {p0 .. p8}, Landroidx/compose/ui/node/NodeCoordinator;->hitNear-Fh5PU_I(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZF)V

    return-void

    :cond_12
    move v1, v2

    move-object/from16 v2, p2

    iget v3, v2, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    goto :goto_d

    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x0

    :goto_9
    if-eqz v3, :cond_1a

    instance-of v6, v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    if-eqz v6, :cond_13

    check-cast v3, Landroidx/compose/ui/node/PointerInputModifierNode;

    invoke-interface {v3}, Landroidx/compose/ui/node/PointerInputModifierNode;->interceptOutOfBoundsChildEvents()V

    const/16 v7, 0x10

    goto :goto_c

    :cond_13
    iget v6, v3, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    const/16 v7, 0x10

    and-int/2addr v6, v7

    if-eqz v6, :cond_19

    instance-of v6, v3, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v6, :cond_19

    move-object v6, v3

    check-cast v6, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v6, v6, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v8, v1

    :goto_a
    if-eqz v6, :cond_18

    iget v9, v6, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v9, v7

    if-eqz v9, :cond_17

    add-int/lit8 v8, v8, 0x1

    if-ne v8, v10, :cond_14

    move-object v3, v6

    goto :goto_b

    :cond_14
    if-nez v4, :cond_15

    new-instance v4, Landroidx/compose/runtime/collection/MutableVector;

    new-array v9, v7, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v4, v9}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_15
    if-eqz v3, :cond_16

    invoke-virtual {v4, v3}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    const/4 v3, 0x0

    :cond_16
    invoke-virtual {v4, v6}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_17
    :goto_b
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_a

    :cond_18
    if-ne v8, v10, :cond_19

    goto :goto_9

    :cond_19
    :goto_c
    invoke-static {v4}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v3

    goto :goto_9

    :cond_1a
    :goto_d
    invoke-virtual {v2}, Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;->entityType-OLwlOKw()I

    move-result v1

    invoke-static {v0, v1}, Landroidx/compose/ui/node/HitTestResultKt;->access$nextUntil-hw7D004(Landroidx/compose/ui/node/DelegatableNode;I)Landroidx/compose/ui/Modifier$Node;

    move-result-object v1

    const/4 v9, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v3, p3

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-virtual/range {v0 .. v9}, Landroidx/compose/ui/node/NodeCoordinator;->outOfBoundsHit-8NAm7pk(Landroidx/compose/ui/Modifier$Node;Landroidx/compose/ui/node/TouchBoundsExpansion$Companion;JLandroidx/compose/ui/node/HitTestResult;IZFZ)V

    return-void

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public abstract performDraw(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method

.method public abstract placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V
.end method

.method public final placeSelf-MLgxB_4(JFLkotlin/jvm/functions/Function1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 8

    const/4 v0, 0x0

    iget-object v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v2, 0x0

    if-eqz p5, :cond_2

    if-nez p4, :cond_0

    goto :goto_0

    :cond_0
    const-string p4, "both ways to create layers shouldn\'t be used together"

    invoke-static {p4}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :goto_0
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eq p4, p5, :cond_1

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    iput-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    :cond_1
    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez p4, :cond_4

    invoke-static {v1}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v2

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDrawBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v3

    const/4 v6, 0x0

    const/16 v7, 0x8

    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    move-object v5, p5

    invoke-static/range {v2 .. v7}, Landroidx/compose/ui/node/Owner;->createLayer$default(Landroidx/compose/ui/node/Owner;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ZI)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object p4

    iget-wide v2, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-interface {p4, v2, v3}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    iput-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    const/4 p4, 0x1

    iput-boolean p4, v1, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    invoke-virtual {v4}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->invoke()Ljava/lang/Object;

    goto :goto_1

    :cond_2
    iget-object p5, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz p5, :cond_3

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    invoke-virtual {p0, v2, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    :cond_3
    invoke-virtual {p0, p4, v0}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V

    :cond_4
    :goto_1
    iget-wide p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-static {p4, p5, p1, p2}, Landroidx/compose/ui/unit/IntOffset;->equals-impl0(JJ)Z

    move-result p4

    if-nez p4, :cond_7

    iput-wide p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    iget-object p4, v1, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object p4, p4, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    invoke-virtual {p4}, Landroidx/compose/ui/node/MeasurePassDelegate;->notifyChildrenUsingCoordinatesWhilePlacing()V

    iget-object p4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p4, :cond_5

    invoke-interface {p4, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    goto :goto_2

    :cond_5
    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_6
    :goto_2
    invoke-static {p0}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->invalidateAlignmentLinesFromPositionChange(Landroidx/compose/ui/node/NodeCoordinator;)V

    iget-object p1, v1, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p1, :cond_7

    check-cast p1, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/AndroidComposeView;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_7
    iput p3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-boolean p1, p0, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->isPlacingForAlignment:Z

    if-nez p1, :cond_8

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p1

    new-instance p2, Landroidx/compose/ui/node/PlaceableResult;

    invoke-direct {p2, p1, p0}, Landroidx/compose/ui/node/PlaceableResult;-><init>(Landroidx/compose/ui/layout/MeasureResult;Landroidx/compose/ui/node/LookaheadCapablePlaceable;)V

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->captureRulers(Landroidx/compose/ui/node/PlaceableResult;)V

    :cond_8
    return-void
.end method

.method public final rectInParent$ui_release(Landroidx/compose/ui/geometry/MutableRect;ZZ)V
    .locals 10

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    const-wide v1, 0xffffffffL

    const/16 v3, 0x20

    if-eqz v0, :cond_3

    iget-boolean v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz v4, :cond_2

    if-eqz p3, :cond_0

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getMinimumTouchTargetSize-NH-jbRc()J

    move-result-wide p2

    shr-long v4, p2, v3

    long-to-int v4, v4

    invoke-static {v4}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    and-long/2addr p2, v1

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    div-float/2addr p2, v5

    neg-float p3, v4

    neg-float v5, p2

    iget-wide v6, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    shr-long v8, v6, v3

    long-to-int v8, v8

    int-to-float v8, v8

    add-float/2addr v8, v4

    and-long/2addr v6, v1

    long-to-int v4, v6

    int-to-float v4, v4

    add-float/2addr v4, p2

    invoke-virtual {p1, p3, v5, v8, v4}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    goto :goto_0

    :cond_0
    if-eqz p2, :cond_1

    iget-wide p2, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    shr-long v4, p2, v3

    long-to-int v4, v4

    int-to-float v4, v4

    and-long/2addr p2, v1

    long-to-int p2, p2

    int-to-float p2, p2

    const/4 p3, 0x0

    invoke-virtual {p1, p3, p3, v4, p2}, Landroidx/compose/ui/geometry/MutableRect;->intersect(FFFF)V

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/compose/ui/geometry/MutableRect;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_2

    return-void

    :cond_2
    const/4 p2, 0x0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V

    :cond_3
    iget-wide p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    shr-long v3, p2, v3

    long-to-int p0, v3

    iget v0, p1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    int-to-float p0, p0

    add-float/2addr v0, p0

    iput v0, p1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iget v0, p1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    add-float/2addr v0, p0

    iput v0, p1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    and-long/2addr p2, v1

    long-to-int p0, p2

    iget p2, p1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    int-to-float p0, p0

    add-float/2addr p2, p0

    iput p2, p1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iget p2, p1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    add-float/2addr p2, p0

    iput p2, p1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void
.end method

.method public final replace$ui_release()V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_0

    iget-wide v1, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    iget v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    invoke-virtual {p0, v1, v2, v3, v0}, Landroidx/compose/ui/node/NodeCoordinator;->placeAt-f8xVGno(JFLandroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    return-void

    :cond_0
    iget-wide v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    iget v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->zIndex:F

    iget-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public final setMeasureResult$ui_release(Landroidx/compose/ui/layout/MeasureResult;)V
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    if-eq v1, v2, :cond_18

    iput-object v1, v0, Landroidx/compose/ui/node/NodeCoordinator;->_measureResult:Landroidx/compose/ui/layout/MeasureResult;

    iget-object v3, v0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    const/4 v4, 0x0

    if-eqz v2, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v5

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v6

    if-ne v5, v6, :cond_0

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v5

    invoke-interface {v2}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v2

    if-eq v5, v2, :cond_f

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getWidth()I

    move-result v2

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getHeight()I

    move-result v5

    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    const-wide v7, 0xffffffffL

    const/16 v9, 0x20

    if-eqz v6, :cond_1

    int-to-long v10, v2

    shl-long/2addr v10, v9

    int-to-long v12, v5

    and-long/2addr v12, v7

    or-long/2addr v10, v12

    invoke-interface {v6, v10, v11}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result v6

    if-eqz v6, :cond_2

    iget-object v6, v0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator;->invalidateLayer()V

    :cond_2
    :goto_0
    int-to-long v10, v2

    shl-long v9, v10, v9

    int-to-long v5, v5

    and-long/2addr v5, v7

    or-long/2addr v5, v9

    invoke-virtual {v0, v5, v6}, Landroidx/compose/ui/layout/Placeable;->setMeasuredSize-ozmzZPI(J)V

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_3

    invoke-virtual {v0, v4}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)Z

    :cond_3
    const/4 v2, 0x4

    invoke-static {v2}, Landroidx/compose/ui/node/NodeKindKt;->getIncludeSelfInTraversal-H91voCI(I)Z

    move-result v5

    invoke-virtual {v0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object v6

    if-eqz v5, :cond_4

    goto :goto_1

    :cond_4
    iget-object v6, v6, Landroidx/compose/ui/Modifier$Node;->parent:Landroidx/compose/ui/Modifier$Node;

    if-nez v6, :cond_5

    goto/16 :goto_7

    :cond_5
    :goto_1
    invoke-virtual {v0, v5}, Landroidx/compose/ui/node/NodeCoordinator;->headNode(Z)Landroidx/compose/ui/Modifier$Node;

    move-result-object v5

    :goto_2
    if-eqz v5, :cond_e

    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->aggregateChildKindSet:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_e

    iget v7, v5, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v7, v2

    if-eqz v7, :cond_d

    const/4 v7, 0x0

    move-object v8, v5

    move-object v9, v7

    :goto_3
    if-eqz v8, :cond_d

    instance-of v10, v8, Landroidx/compose/ui/node/DrawModifierNode;

    if-eqz v10, :cond_6

    check-cast v8, Landroidx/compose/ui/node/DrawModifierNode;

    invoke-interface {v8}, Landroidx/compose/ui/node/DrawModifierNode;->onMeasureResultChanged()V

    goto :goto_6

    :cond_6
    iget v10, v8, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v10, v2

    if-eqz v10, :cond_c

    instance-of v10, v8, Landroidx/compose/ui/node/DelegatingNode;

    if-eqz v10, :cond_c

    move-object v10, v8

    check-cast v10, Landroidx/compose/ui/node/DelegatingNode;

    iget-object v10, v10, Landroidx/compose/ui/node/DelegatingNode;->delegate:Landroidx/compose/ui/Modifier$Node;

    move v11, v4

    :goto_4
    const/4 v12, 0x1

    if-eqz v10, :cond_b

    iget v13, v10, Landroidx/compose/ui/Modifier$Node;->kindSet:I

    and-int/2addr v13, v2

    if-eqz v13, :cond_a

    add-int/lit8 v11, v11, 0x1

    if-ne v11, v12, :cond_7

    move-object v8, v10

    goto :goto_5

    :cond_7
    if-nez v9, :cond_8

    new-instance v9, Landroidx/compose/runtime/collection/MutableVector;

    const/16 v12, 0x10

    new-array v12, v12, [Landroidx/compose/ui/Modifier$Node;

    invoke-direct {v9, v12}, Landroidx/compose/runtime/collection/MutableVector;-><init>([Ljava/lang/Object;)V

    :cond_8
    if-eqz v8, :cond_9

    invoke-virtual {v9, v8}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    move-object v8, v7

    :cond_9
    invoke-virtual {v9, v10}, Landroidx/compose/runtime/collection/MutableVector;->add(Ljava/lang/Object;)V

    :cond_a
    :goto_5
    iget-object v10, v10, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_4

    :cond_b
    if-ne v11, v12, :cond_c

    goto :goto_3

    :cond_c
    :goto_6
    invoke-static {v9}, Landroidx/compose/ui/node/HitTestResultKt;->access$pop(Landroidx/compose/runtime/collection/MutableVector;)Landroidx/compose/ui/Modifier$Node;

    move-result-object v8

    goto :goto_3

    :cond_d
    if-eq v5, v6, :cond_e

    iget-object v5, v5, Landroidx/compose/ui/Modifier$Node;->child:Landroidx/compose/ui/Modifier$Node;

    goto :goto_2

    :cond_e
    :goto_7
    iget-object v2, v3, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz v2, :cond_f

    check-cast v2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v2, v3}, Landroidx/compose/ui/platform/AndroidComposeView;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_f
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    if-eqz v2, :cond_10

    iget v2, v2, Landroidx/collection/MutableObjectIntMap;->_size:I

    if-eqz v2, :cond_10

    goto :goto_8

    :cond_10
    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_18

    :goto_8
    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v5

    if-nez v2, :cond_11

    goto :goto_b

    :cond_11
    iget v6, v2, Landroidx/collection/MutableObjectIntMap;->_size:I

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v7

    if-eq v6, v7, :cond_12

    goto :goto_b

    :cond_12
    iget-object v6, v2, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v7, v2, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v2, v2, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v8, v2

    add-int/lit8 v8, v8, -0x2

    if-ltz v8, :cond_18

    move v9, v4

    :goto_9
    aget-wide v10, v2, v9

    not-long v12, v10

    const/4 v14, 0x7

    shl-long/2addr v12, v14

    and-long/2addr v12, v10

    const-wide v14, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long/2addr v12, v14

    cmp-long v12, v12, v14

    if-eqz v12, :cond_17

    sub-int v12, v9, v8

    not-int v12, v12

    ushr-int/lit8 v12, v12, 0x1f

    const/16 v13, 0x8

    rsub-int/lit8 v12, v12, 0x8

    move v14, v4

    :goto_a
    if-ge v14, v12, :cond_16

    const-wide/16 v15, 0xff

    and-long/2addr v15, v10

    const-wide/16 v17, 0x80

    cmp-long v15, v15, v17

    if-gez v15, :cond_15

    shl-int/lit8 v15, v9, 0x3

    add-int/2addr v15, v14

    aget-object v16, v6, v15

    aget v15, v7, v15

    move-object/from16 v4, v16

    check-cast v4, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-nez v4, :cond_13

    goto :goto_b

    :cond_13
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-eq v4, v15, :cond_15

    :goto_b
    iget-object v2, v3, Landroidx/compose/ui/node/LayoutNode;->layoutDelegate:Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;

    iget-object v2, v2, Landroidx/compose/ui/node/LayoutNodeLayoutDelegate;->measurePassDelegate:Landroidx/compose/ui/node/MeasurePassDelegate;

    iget-object v2, v2, Landroidx/compose/ui/node/MeasurePassDelegate;->alignmentLines:Landroidx/compose/ui/node/LookaheadAlignmentLines;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->onAlignmentsChanged()V

    iget-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    if-nez v2, :cond_14

    sget-object v2, Landroidx/collection/ObjectIntMapKt;->EmptyObjectIntMap:Landroidx/collection/MutableObjectIntMap;

    new-instance v2, Landroidx/collection/MutableObjectIntMap;

    invoke-direct {v2}, Landroidx/collection/MutableObjectIntMap;-><init>()V

    iput-object v2, v0, Landroidx/compose/ui/node/NodeCoordinator;->oldAlignmentLines:Landroidx/collection/MutableObjectIntMap;

    :cond_14
    invoke-virtual {v2}, Landroidx/collection/MutableObjectIntMap;->clear()V

    invoke-interface {v1}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_18

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    invoke-virtual {v2, v1, v3}, Landroidx/collection/MutableObjectIntMap;->set(ILjava/lang/Object;)V

    goto :goto_c

    :cond_15
    shr-long/2addr v10, v13

    add-int/lit8 v14, v14, 0x1

    const/4 v4, 0x0

    goto :goto_a

    :cond_16
    if-ne v12, v13, :cond_18

    :cond_17
    if-eq v9, v8, :cond_18

    add-int/lit8 v9, v9, 0x1

    const/4 v4, 0x0

    goto/16 :goto_9

    :cond_18
    return-void
.end method

.method public final updateLayerBlock(Lkotlin/jvm/functions/Function1;Z)V
    .locals 10

    if-eqz p1, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "layerBlock can\'t be provided when explicitLayer is provided"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    if-nez p2, :cond_3

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-ne p2, p1, :cond_3

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    if-eq p2, v3, :cond_2

    goto :goto_1

    :cond_2
    move p2, v0

    goto :goto_2

    :cond_3
    :goto_1
    move p2, v1

    :goto_2
    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerDensity:Landroidx/compose/ui/unit/Density;

    iget-object v3, v2, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerLayoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isAttached()Z

    move-result v3

    iget-object v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->invalidateParentLayer:Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;

    if-eqz v3, :cond_6

    if-eqz p1, :cond_6

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    iget-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-nez p1, :cond_4

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v4

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getDrawBlock()Lkotlin/jvm/functions/Function2;

    move-result-object v5

    iget-boolean v8, v2, Landroidx/compose/ui/node/LayoutNode;->forceUseOldLayers:Z

    const/4 v9, 0x4

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Landroidx/compose/ui/node/Owner;->createLayer$default(Landroidx/compose/ui/node/Owner;Lkotlin/jvm/functions/Function2;Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;Landroidx/compose/ui/graphics/layer/GraphicsLayer;ZI)Landroidx/compose/ui/node/OwnedLayer;

    move-result-object p1

    iget-wide v3, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/node/OwnedLayer;->resize-ozmzZPI(J)V

    iget-wide v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-interface {p1, v3, v4}, Landroidx/compose/ui/node/OwnedLayer;->move--gyyYBs(J)V

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)Z

    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->invoke()Ljava/lang/Object;

    return-void

    :cond_4
    if-eqz p2, :cond_5

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->updateLayerParameters(Z)Z

    move-result p0

    if-eqz p0, :cond_5

    invoke-static {v2}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object p0

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getRectManager()Landroidx/compose/ui/spatial/RectManager;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroidx/compose/ui/spatial/RectManager;->onLayoutLayerPositionalPropertiesChanged(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_5
    return-void

    :cond_6
    const/4 p1, 0x0

    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    iget-object p2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz p2, :cond_7

    invoke-interface {p2}, Landroidx/compose/ui/node/OwnedLayer;->destroy()V

    iput-boolean v1, v2, Landroidx/compose/ui/node/LayoutNode;->innerLayerCoordinatorIsDirty:Z

    invoke-virtual {v6}, Landroidx/compose/ui/node/NodeCoordinator$invalidateParentLayer$1;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p2

    iget-boolean p2, p2, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p2, :cond_7

    invoke-virtual {v2}, Landroidx/compose/ui/node/LayoutNode;->isPlaced()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, v2, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p2, :cond_7

    check-cast p2, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p2, v2}, Landroidx/compose/ui/platform/AndroidComposeView;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_7
    iput-object p1, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    iput-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerDrawingWasSkipped:Z

    return-void
.end method

.method public final updateLayerParameters(Z)Z
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->explicitLayer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_7

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-eqz v2, :cond_6

    sget-object v3, Landroidx/compose/ui/node/NodeCoordinator;->graphicsLayerScope:Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleX(F)V

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setScaleY(F)V

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAlpha(F)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShadowElevation(F)V

    sget-wide v5, Landroidx/compose/ui/graphics/GraphicsLayerScopeKt;->DefaultShadowColor:J

    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setAmbientShadowColor-8_81llA(J)V

    invoke-virtual {v3, v5, v6}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setSpotShadowColor-8_81llA(J)V

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRotationZ(F)V

    iget v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    const/high16 v5, 0x41000000    # 8.0f

    cmpg-float v4, v4, v5

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    iget v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    or-int/lit16 v4, v4, 0x800

    iput v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iput v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    :goto_0
    sget-wide v4, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    invoke-virtual {v3, v4, v5}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setTransformOrigin-__ExYCQ(J)V

    sget-object v4, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setShape(Landroidx/compose/ui/graphics/Shape;)V

    invoke-virtual {v3, v1}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setClip(Z)V

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->setRenderEffect(Landroidx/compose/ui/graphics/BlurEffect;)V

    const-wide v5, 0x7fc000007fc00000L    # 2.247117487993712E307

    iput-wide v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    iput-object v4, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Brush;

    iput v1, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iget-object v4, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNode;->density:Landroidx/compose/ui/unit/Density;

    iput-object v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->graphicsDensity:Landroidx/compose/ui/unit/Density;

    iget-object v5, v4, Landroidx/compose/ui/node/LayoutNode;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iput-object v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->layoutDirection:Landroidx/compose/ui/unit/LayoutDirection;

    iget-wide v5, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    invoke-static {v5, v6}, Landroidx/compose/ui/unit/IntSizeKt;->toSize-ozmzZPI(J)J

    move-result-wide v5

    iput-wide v5, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    invoke-static {v4}, Landroidx/compose/ui/node/LayoutNodeKt;->requireOwner(Landroidx/compose/ui/node/LayoutNode;)Landroidx/compose/ui/node/Owner;

    move-result-object v5

    check-cast v5, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v5}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v5

    sget-object v6, Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;->INSTANCE$4:Landroidx/compose/ui/node/OwnerSnapshotObserver$onCommitAffectingLayout$1;

    new-instance v7, Landroidx/compose/runtime/Pending$keyMap$2;

    const/16 v8, 0x19

    invoke-direct {v7, v8, v2}, Landroidx/compose/runtime/Pending$keyMap$2;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v5, p0, v6, v7}, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observeReads$ui_release(Landroidx/compose/ui/node/OwnerScope;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;)V

    iget-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    if-nez v2, :cond_2

    new-instance v2, Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-direct {v2}, Landroidx/compose/ui/node/LayerPositionalProperties;-><init>()V

    iput-object v2, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    :cond_2
    sget-object v5, Landroidx/compose/ui/node/NodeCoordinator;->tmpLayerPositionalProperties:Landroidx/compose/ui/node/LayerPositionalProperties;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iput v6, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iput v6, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iput v6, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iput v6, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iget-wide v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iput-wide v6, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iget v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    iput v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iget v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    iput v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iget v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    iput v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iget v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    iput v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iget-wide v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    iput-wide v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    invoke-interface {v0, v3}, Landroidx/compose/ui/node/OwnedLayer;->updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V

    iget-boolean v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    iget-boolean v6, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    iput-boolean v6, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    iget v3, v3, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    iput v3, p0, Landroidx/compose/ui/node/NodeCoordinator;->lastLayerAlpha:F

    iget v3, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleX:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_3

    iget v3, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->scaleY:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_3

    iget v3, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->rotationZ:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_3

    iget v3, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    iget v6, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->cameraDistance:F

    cmpg-float v3, v3, v6

    if-nez v3, :cond_3

    iget-wide v5, v5, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    iget-wide v2, v2, Landroidx/compose/ui/node/LayerPositionalProperties;->transformOrigin:J

    invoke-static {v5, v6, v2, v3}, Landroidx/compose/ui/graphics/TransformOrigin;->equals-impl0(JJ)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x1

    :cond_3
    xor-int/lit8 v2, v1, 0x1

    if-eqz p1, :cond_5

    if-eqz v1, :cond_4

    iget-boolean p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eq v0, p0, :cond_5

    :cond_4
    iget-object p0, v4, Landroidx/compose/ui/node/LayoutNode;->owner:Landroidx/compose/ui/node/Owner;

    if-eqz p0, :cond_5

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0, v4}, Landroidx/compose/ui/platform/AndroidComposeView;->onLayoutChange(Landroidx/compose/ui/node/LayoutNode;)V

    :cond_5
    return v2

    :cond_6
    const-string/jumbo p0, "updateLayerParameters requires a non-null layerBlock"

    invoke-static {p0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Lcom/google/gson/JsonParseException;

    move-result-object p0

    throw p0

    :cond_7
    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layerBlock:Lkotlin/jvm/functions/Function1;

    if-nez p0, :cond_8

    :goto_1
    return v1

    :cond_8
    const-string p0, "null layer with a non-null layerBlock"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    return v1
.end method

.method public final withinLayerBounds-k-4lQ0M(J)Z
    .locals 4

    const-wide v0, 0x7f8000007f800000L    # 1.404448428688076E306

    and-long v2, p1, v0

    xor-long/2addr v0, v2

    const-wide v2, 0x100000001L

    sub-long/2addr v0, v2

    const-wide v2, -0x7fffffff80000000L    # -1.0609978955E-314

    and-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->isClipping:Z

    if-eqz p0, :cond_0

    invoke-interface {v0, p1, p2}, Landroidx/compose/ui/node/OwnedLayer;->isInLayer-k-4lQ0M(J)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method
