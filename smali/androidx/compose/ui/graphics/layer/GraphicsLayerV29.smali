.class public final Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public alpha:F

.field public ambientShadowColor:J

.field public final blendMode:I

.field public cameraDistance:F

.field public final canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

.field public final canvasHolder:Lcom/google/android/gms/tasks/zzad;

.field public clip:Z

.field public clipToBounds:Z

.field public clipToOutline:Z

.field public compositingStrategy:I

.field public matrix:Landroid/graphics/Matrix;

.field public outlineIsProvided:Z

.field public renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

.field public final renderNode:Landroid/graphics/RenderNode;

.field public rotationZ:F

.field public scaleX:F

.field public scaleY:F

.field public shadowElevation:F

.field public size:J

.field public spotShadowColor:J


# direct methods
.method public constructor <init>()V
    .locals 4

    new-instance v0, Lcom/google/android/gms/tasks/zzad;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/google/android/gms/tasks/zzad;-><init>(I)V

    new-instance v1, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    invoke-direct {v1}, Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;-><init>()V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    iput-object v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->canvasDrawScope:Landroidx/compose/ui/graphics/drawscope/CanvasDrawScope;

    new-instance v0, Landroid/graphics/RenderNode;

    const-string v1, "graphicsLayer"

    invoke-direct {v0, v1}, Landroid/graphics/RenderNode;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->size:J

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->alpha:F

    const/4 v2, 0x3

    iput v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->blendMode:I

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleX:F

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->scaleY:F

    sget-wide v2, Landroidx/compose/ui/graphics/Color;->Black:J

    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->ambientShadowColor:J

    iput-wide v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->spotShadowColor:J

    const/high16 v0, 0x41000000    # 8.0f

    iput v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->cameraDistance:F

    iput v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->compositingStrategy:I

    return-void
.end method

.method public static applyCompositingStrategy-Z1X6vPc(Landroid/graphics/RenderNode;I)V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    invoke-virtual {p0, v1, v0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    return-void

    :cond_0
    const/4 v2, 0x2

    const/4 v3, 0x0

    if-ne p1, v2, :cond_1

    invoke-virtual {p0, v3, v0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    invoke-virtual {p0, v3}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    return-void

    :cond_1
    invoke-virtual {p0, v3, v0}, Landroid/graphics/RenderNode;->setUseCompositingLayer(ZLandroid/graphics/Paint;)Z

    invoke-virtual {p0, v1}, Landroid/graphics/RenderNode;->setHasOverlappingRendering(Z)Z

    return-void
.end method


# virtual methods
.method public final applyClip$1()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    if-nez v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->outlineIsProvided:Z

    if-eqz v0, :cond_1

    move v1, v2

    :cond_1
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToBounds:Z

    iget-object v2, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->renderNode:Landroid/graphics/RenderNode;

    if-eq v3, v0, :cond_2

    iput-boolean v3, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToBounds:Z

    invoke-virtual {v2, v3}, Landroid/graphics/RenderNode;->setClipToBounds(Z)Z

    :cond_2
    iget-boolean v0, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToOutline:Z

    if-eq v1, v0, :cond_3

    iput-boolean v1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clipToOutline:Z

    invoke-virtual {v2, v1}, Landroid/graphics/RenderNode;->setClipToOutline(Z)Z

    :cond_3
    return-void
.end method

.method public final setClip(Z)V
    .locals 0

    iput-boolean p1, p0, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->clip:Z

    invoke-virtual {p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayerV29;->applyClip$1()V

    return-void
.end method
