.class public final Landroidx/compose/ui/platform/ViewLayer;
.super Landroid/view/View;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/node/OwnedLayer;


# static fields
.field public static final OutlineProvider:Landroidx/compose/ui/window/DialogWrapper$1$2;

.field public static hasRetrievedMethod:Z

.field public static recreateDisplayList:Ljava/lang/reflect/Field;

.field public static shouldUseDispatchDraw:Z

.field public static updateDisplayListIfDirtyMethod:Ljava/lang/reflect/Method;


# instance fields
.field public final canvasHolder:Lcom/google/android/gms/tasks/zzad;

.field public clipBoundsCache:Landroid/graphics/Rect;

.field public clipToBounds:Z

.field public final container:Landroidx/compose/ui/platform/DrawChildContainer;

.field public drawBlock:Lkotlin/jvm/functions/Function2;

.field public drawnWithZ:Z

.field public invalidateParentLayer:Lkotlin/jvm/functions/Function0;

.field public isInvalidated:Z

.field public final layerId:J

.field public mHasOverlappingRendering:Z

.field public mTransformOrigin:J

.field public final matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

.field public mutatedFields:I

.field public final outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

.field public final ownerView:Landroidx/compose/ui/platform/AndroidComposeView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/window/DialogWrapper$1$2;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/compose/ui/window/DialogWrapper$1$2;-><init>(I)V

    sput-object v0, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroidx/compose/ui/window/DialogWrapper$1$2;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/platform/AndroidComposeView;Landroidx/compose/ui/platform/DrawChildContainer;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    iput-object p3, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p4, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    new-instance p1, Landroidx/compose/ui/platform/OutlineResolver;

    invoke-direct {p1}, Landroidx/compose/ui/platform/OutlineResolver;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    new-instance p1, Lcom/google/android/gms/tasks/zzad;

    const/16 p3, 0x9

    invoke-direct {p1, p3}, Lcom/google/android/gms/tasks/zzad;-><init>(I)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    new-instance p1, Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-object p3, Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;->INSTANCE:Landroidx/compose/ui/platform/ViewLayer$Companion$getMatrix$1;

    invoke-direct {p1, p3}, Landroidx/compose/ui/platform/LayerMatrixCache;-><init>(Lkotlin/jvm/functions/Function2;)V

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    sget-wide p3, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide p3, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->mHasOverlappingRendering:Z

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/View;->setWillNotDraw(Z)V

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-static {}, Landroid/view/View;->generateViewId()I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Landroidx/compose/ui/platform/ViewLayer;->layerId:J

    return-void
.end method

.method private final getManualClipPath()Landroidx/compose/ui/graphics/Path;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    iget-boolean v0, p0, Landroidx/compose/ui/platform/OutlineResolver;->usePathForClip:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/platform/OutlineResolver;->updateCache()V

    iget-object p0, p0, Landroidx/compose/ui/platform/OutlineResolver;->outlinePath:Landroidx/compose/ui/graphics/Path;

    return-object p0

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private final setInvalidated(Z)V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    if-eq p1, v0, :cond_0

    iput-boolean p1, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {v0, p0, p1}, Landroidx/compose/ui/platform/AndroidComposeView;->notifyLayerIsDirty$ui_release(Landroidx/compose/ui/node/OwnedLayer;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    const/4 v0, 0x1

    iget-object v1, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    iput-boolean v0, v1, Landroidx/compose/ui/platform/AndroidComposeView;->observationClearRequested:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-virtual {v1, p0}, Landroidx/compose/ui/platform/AndroidComposeView;->recycle$ui_release(Landroidx/compose/ui/node/OwnedLayer;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeViewInLayout(Landroid/view/View;)V

    return-void
.end method

.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->canvasHolder:Lcom/google/android/gms/tasks/zzad;

    iget-object v1, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iget-object v2, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    iput-object p1, v1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    const/4 v4, 0x0

    if-nez v3, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v4

    goto :goto_1

    :cond_1
    :goto_0
    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->save()V

    iget-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p1, v1}, Landroidx/compose/ui/platform/OutlineResolver;->clipToOutline(Landroidx/compose/ui/graphics/Canvas;)V

    const/4 p1, 0x1

    :goto_1
    iget-object v3, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    if-eqz v3, :cond_2

    const/4 v5, 0x0

    invoke-interface {v3, v1, v5}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    if-eqz p1, :cond_3

    invoke-interface {v1}, Landroidx/compose/ui/graphics/Canvas;->restore()V

    :cond_3
    iget-object p1, v0, Lcom/google/android/gms/tasks/zzad;->zza:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/graphics/AndroidCanvas;

    iput-object v2, p1, Landroidx/compose/ui/graphics/AndroidCanvas;->internalCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0, v4}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    return-void
.end method

.method public final drawLayer(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V
    .locals 2

    invoke-virtual {p0}, Landroid/view/View;->getElevation()F

    move-result p2

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-lez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    if-eqz p2, :cond_1

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->enableZ()V

    :cond_1
    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {p0}, Landroid/view/View;->getDrawingTime()J

    move-result-wide v0

    invoke-virtual {p2, p1, p0, v0, v1}, Landroidx/compose/ui/platform/DrawChildContainer;->drawChild$ui_release(Landroidx/compose/ui/graphics/Canvas;Landroidx/compose/ui/platform/ViewLayer;J)V

    iget-boolean p0, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    if-eqz p0, :cond_2

    invoke-interface {p1}, Landroidx/compose/ui/graphics/Canvas;->disableZ()V

    :cond_2
    return-void
.end method

.method public final forceLayout()V
    .locals 0

    return-void
.end method

.method public final getCameraDistancePx()F
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getCameraDistance()F

    move-result v0

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    iget p0, p0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float p0, p0

    div-float/2addr v0, p0

    return v0
.end method

.method public final getContainer()Landroidx/compose/ui/platform/DrawChildContainer;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    return-object p0
.end method

.method public getLayerId()J
    .locals 2

    iget-wide v0, p0, Landroidx/compose/ui/platform/ViewLayer;->layerId:J

    return-wide v0
.end method

.method public final getOwnerView()Landroidx/compose/ui/platform/AndroidComposeView;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    return-object p0
.end method

.method public getOwnerViewId()J
    .locals 2

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->getUniqueDrawingId()J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnderlyingMatrix-sQKQjiQ()[F
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    return-object p0
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/compose/ui/platform/ViewLayer;->mHasOverlappingRendering:Z

    return p0
.end method

.method public final invalidate()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    invoke-super {p0}, Landroid/view/View;->invalidate()V

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->ownerView:Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public final isInLayer-k-4lQ0M(J)Z
    .locals 4

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    const-wide v1, 0xffffffffL

    and-long/2addr v1, p1

    long-to-int v1, v1

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    iget-boolean v2, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    const/4 p1, 0x0

    cmpg-float p2, p1, v0

    if-gtz p2, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    int-to-float p2, p2

    cmpg-float p2, v0, p2

    if-gez p2, :cond_0

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    int-to-float p0, p0

    cmpg-float p0, v1, p0

    if-gez p0, :cond_0

    return v3

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getClipToOutline()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/platform/OutlineResolver;->isInOutline-k-4lQ0M(J)Z

    move-result p0

    return p0

    :cond_2
    return v3
.end method

.method public final mapBounds(Landroidx/compose/ui/geometry/MutableRect;Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eqz p2, :cond_3

    iget-object p2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    check-cast p2, [F

    iget-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p0, p2}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    :cond_0
    iget-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    if-nez p2, :cond_2

    const/4 p0, 0x0

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->left:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->top:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->right:F

    iput p0, p1, Landroidx/compose/ui/geometry/MutableRect;->bottom:F

    return-void

    :cond_2
    iget-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_4

    invoke-static {p2, p1}, Landroidx/compose/ui/graphics/Brush;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    return-void

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    iget-boolean p2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p2, :cond_4

    invoke-static {p0, p1}, Landroidx/compose/ui/graphics/Brush;->map-impl([FLandroidx/compose/ui/geometry/MutableRect;)V

    :cond_4
    return-void
.end method

.method public final mapOffset-8S9VItk(JZ)J
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eqz p3, :cond_3

    iget-object p3, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    check-cast p3, [F

    iget-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    if-eqz v1, :cond_0

    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    invoke-static {p0, p3}, Landroidx/compose/ui/platform/InvertMatrixKt;->invertTo-JiSxe2E([F[F)Z

    move-result p0

    iput-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    const/4 p0, 0x0

    iput-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    :cond_0
    iget-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    if-nez p3, :cond_2

    const-wide p0, 0x7f8000007f800000L    # 1.404448428688076E306

    return-wide p0

    :cond_2
    iget-boolean p0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p0, :cond_4

    invoke-static {p1, p2, p3}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    return-wide p0

    :cond_3
    invoke-virtual {v0, p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->calculateMatrix-GrdbGEg(Ljava/lang/Object;)[F

    move-result-object p0

    iget-boolean p3, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    if-nez p3, :cond_4

    invoke-static {p1, p2, p0}, Landroidx/compose/ui/graphics/Brush;->map-MK-Hz9U(J[F)J

    move-result-wide p0

    return-wide p0

    :cond_4
    return-wide p1
.end method

.method public final move--gyyYBs(J)V
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    if-eq v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->offsetLeftAndRight(I)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_0
    const-wide v0, 0xffffffffL

    and-long/2addr p1, v0

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    if-eq p1, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result p2

    sub-int/2addr p1, p2

    invoke-virtual {p0, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    invoke-virtual {v2}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_1
    return-void
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public final resetClipBounds()V
    .locals 4

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    new-instance v0, Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-direct {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    goto :goto_0

    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v3

    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->clipBoundsCache:Landroid/graphics/Rect;

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0, v0}, Landroid/view/View;->setClipBounds(Landroid/graphics/Rect;)V

    return-void
.end method

.method public final resize-ozmzZPI(J)V
    .locals 3

    const/16 v0, 0x20

    shr-long v0, p1, v0

    long-to-int v0, v0

    const-wide v1, 0xffffffffL

    and-long/2addr p1, v1

    long-to-int p1, p1

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result p2

    if-ne v0, p2, :cond_1

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p2

    if-eq p1, p2, :cond_0

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    :goto_0
    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result p2

    int-to-float v1, v0

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotX(F)V

    iget-wide v1, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result p2

    int-to-float v1, p1

    mul-float/2addr p2, v1

    invoke-virtual {p0, p2}, Landroid/view/View;->setPivotY(F)V

    iget-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    invoke-virtual {p2}, Landroidx/compose/ui/platform/OutlineResolver;->getAndroidOutline()Landroid/graphics/Outline;

    move-result-object p2

    if-eqz p2, :cond_2

    sget-object p2, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroidx/compose/ui/window/DialogWrapper$1$2;

    goto :goto_1

    :cond_2
    const/4 p2, 0x0

    :goto_1
    invoke-virtual {p0, p2}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v1

    invoke-virtual {p0}, Landroid/view/View;->getLeft()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/view/View;->getTop()I

    move-result v0

    add-int/2addr v0, p1

    invoke-virtual {p0, p2, v1, v2, v0}, Landroid/view/View;->layout(IIII)V

    invoke-virtual {p0}, Landroidx/compose/ui/platform/ViewLayer;->resetClipBounds()V

    iget-object p0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    return-void
.end method

.method public final reuseLayer(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 4

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->container:Landroidx/compose/ui/platform/DrawChildContainer;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    iget-object v0, p0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    const/4 v1, 0x0

    iput-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isDirty:Z

    iput-boolean v1, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseDirty:Z

    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isIdentity:Z

    iput-boolean v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->isInverseValid:Z

    iget-object v2, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->matrixCache:Ljava/lang/Object;

    check-cast v2, [F

    invoke-static {v2}, Landroidx/compose/ui/graphics/Brush;->reset-impl([F)V

    iget-object v0, v0, Landroidx/compose/ui/platform/LayerMatrixCache;->inverseMatrixCache:Ljava/lang/Object;

    check-cast v0, [F

    invoke-static {v0}, Landroidx/compose/ui/graphics/Brush;->reset-impl([F)V

    iput-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    iput-boolean v1, p0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    sget-wide v2, Landroidx/compose/ui/graphics/TransformOrigin;->Center:J

    iput-wide v2, p0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    iput-object p1, p0, Landroidx/compose/ui/platform/ViewLayer;->drawBlock:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0, v1}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    return-void
.end method

.method public final setCameraDistancePx(F)V
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->densityDpi:I

    int-to-float v0, v0

    mul-float/2addr p1, v0

    invoke-virtual {p0, p1}, Landroid/view/View;->setCameraDistance(F)V

    return-void
.end method

.method public final updateDisplayList()V
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/platform/ViewLayer;->isInvalidated:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Landroidx/compose/ui/platform/ViewLayer;->shouldUseDispatchDraw:Z

    if-nez v0, :cond_0

    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->updateDisplayList(Landroid/view/View;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroidx/compose/ui/platform/ViewLayer;->setInvalidated(Z)V

    :cond_0
    return-void
.end method

.method public final updateLayerProperties(Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget v2, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iget v3, v0, Landroidx/compose/ui/platform/ViewLayer;->mutatedFields:I

    or-int/2addr v2, v3

    and-int/lit16 v3, v2, 0x1000

    if-eqz v3, :cond_0

    iget-wide v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->transformOrigin:J

    iput-wide v3, v0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionX-impl(J)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotX(F)V

    iget-wide v3, v0, Landroidx/compose/ui/platform/ViewLayer;->mTransformOrigin:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/TransformOrigin;->getPivotFractionY-impl(J)F

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-virtual {v0, v3}, Landroid/view/View;->setPivotY(F)V

    :cond_0
    and-int/lit8 v3, v2, 0x1

    if-eqz v3, :cond_1

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleX:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleX(F)V

    :cond_1
    and-int/lit8 v3, v2, 0x2

    if-eqz v3, :cond_2

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->scaleY:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setScaleY(F)V

    :cond_2
    and-int/lit8 v3, v2, 0x4

    if-eqz v3, :cond_3

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    :cond_3
    and-int/lit8 v3, v2, 0x8

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationX(F)V

    :cond_4
    and-int/lit8 v3, v2, 0x10

    if-eqz v3, :cond_5

    invoke-virtual {v0, v4}, Landroid/view/View;->setTranslationY(F)V

    :cond_5
    and-int/lit8 v3, v2, 0x20

    if-eqz v3, :cond_6

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setElevation(F)V

    :cond_6
    and-int/lit16 v3, v2, 0x400

    if-eqz v3, :cond_7

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->rotationZ:F

    invoke-virtual {v0, v3}, Landroid/view/View;->setRotation(F)V

    :cond_7
    and-int/lit16 v3, v2, 0x100

    if-eqz v3, :cond_8

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationX(F)V

    :cond_8
    and-int/lit16 v3, v2, 0x200

    if-eqz v3, :cond_9

    invoke-virtual {v0, v4}, Landroid/view/View;->setRotationY(F)V

    :cond_9
    and-int/lit16 v3, v2, 0x800

    if-eqz v3, :cond_a

    iget v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->cameraDistance:F

    invoke-virtual {v0, v3}, Landroidx/compose/ui/platform/ViewLayer;->setCameraDistancePx(F)V

    :cond_a
    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_b

    move v3, v6

    goto :goto_0

    :cond_b
    move v3, v5

    :goto_0
    iget-boolean v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->clip:Z

    sget-object v8, Landroidx/compose/ui/graphics/Brush;->RectangleShape:Lcom/google/mlkit/common/internal/zzc;

    if-eqz v7, :cond_c

    iget-object v9, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    if-eq v9, v8, :cond_c

    move v13, v6

    goto :goto_1

    :cond_c
    move v13, v5

    :goto_1
    and-int/lit16 v9, v2, 0x6000

    if-eqz v9, :cond_e

    if-eqz v7, :cond_d

    iget-object v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shape:Landroidx/compose/ui/graphics/Shape;

    if-ne v7, v8, :cond_d

    move v7, v6

    goto :goto_2

    :cond_d
    move v7, v5

    :goto_2
    iput-boolean v7, v0, Landroidx/compose/ui/platform/ViewLayer;->clipToBounds:Z

    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer;->resetClipBounds()V

    invoke-virtual {v0, v13}, Landroid/view/View;->setClipToOutline(Z)V

    :cond_e
    iget-object v11, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->outline:Landroidx/compose/ui/graphics/Brush;

    iget v12, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->alpha:F

    iget v14, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->shadowElevation:F

    iget-wide v7, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->size:J

    iget-object v10, v0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    move-wide v15, v7

    invoke-virtual/range {v10 .. v16}, Landroidx/compose/ui/platform/OutlineResolver;->update-S_szKao(Landroidx/compose/ui/graphics/Brush;FZFJ)Z

    move-result v7

    iget-object v8, v0, Landroidx/compose/ui/platform/ViewLayer;->outlineResolver:Landroidx/compose/ui/platform/OutlineResolver;

    iget-boolean v9, v8, Landroidx/compose/ui/platform/OutlineResolver;->cacheIsDirty:Z

    const/4 v10, 0x0

    if-eqz v9, :cond_10

    invoke-virtual {v8}, Landroidx/compose/ui/platform/OutlineResolver;->getAndroidOutline()Landroid/graphics/Outline;

    move-result-object v8

    if-eqz v8, :cond_f

    sget-object v8, Landroidx/compose/ui/platform/ViewLayer;->OutlineProvider:Landroidx/compose/ui/window/DialogWrapper$1$2;

    goto :goto_3

    :cond_f
    move-object v8, v10

    :goto_3
    invoke-virtual {v0, v8}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_10
    invoke-direct {v0}, Landroidx/compose/ui/platform/ViewLayer;->getManualClipPath()Landroidx/compose/ui/graphics/Path;

    move-result-object v8

    if-eqz v8, :cond_11

    move v8, v6

    goto :goto_4

    :cond_11
    move v8, v5

    :goto_4
    if-ne v3, v8, :cond_12

    if-eqz v8, :cond_13

    if-eqz v7, :cond_13

    :cond_12
    invoke-virtual {v0}, Landroidx/compose/ui/platform/ViewLayer;->invalidate()V

    :cond_13
    iget-boolean v3, v0, Landroidx/compose/ui/platform/ViewLayer;->drawnWithZ:Z

    if-nez v3, :cond_14

    invoke-virtual {v0}, Landroid/view/View;->getElevation()F

    move-result v3

    cmpl-float v3, v3, v4

    if-lez v3, :cond_14

    iget-object v3, v0, Landroidx/compose/ui/platform/ViewLayer;->invalidateParentLayer:Lkotlin/jvm/functions/Function0;

    if-eqz v3, :cond_14

    invoke-interface {v3}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_14
    and-int/lit16 v3, v2, 0x1f1b

    if-eqz v3, :cond_15

    iget-object v3, v0, Landroidx/compose/ui/platform/ViewLayer;->matrixCache:Landroidx/compose/ui/platform/LayerMatrixCache;

    invoke-virtual {v3}, Landroidx/compose/ui/platform/LayerMatrixCache;->invalidate()V

    :cond_15
    and-int/lit8 v3, v2, 0x40

    if-eqz v3, :cond_16

    iget-wide v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->ambientShadowColor:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineAmbientShadowColor(I)V

    :cond_16
    and-int/lit16 v3, v2, 0x80

    if-eqz v3, :cond_17

    iget-wide v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->spotShadowColor:J

    invoke-static {v3, v4}, Landroidx/compose/ui/graphics/Brush;->toArgb-8_81llA(J)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/view/View;->setOutlineSpotShadowColor(I)V

    :cond_17
    const/high16 v3, 0x20000

    and-int/2addr v3, v2

    if-eqz v3, :cond_19

    iget-object v3, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->renderEffect:Landroidx/compose/ui/graphics/BlurEffect;

    if-eqz v3, :cond_18

    invoke-virtual {v3}, Landroidx/compose/ui/graphics/BlurEffect;->asAndroidRenderEffect()Landroid/graphics/RenderEffect;

    move-result-object v3

    goto :goto_5

    :cond_18
    move-object v3, v10

    :goto_5
    invoke-virtual {v0, v3}, Landroid/view/View;->setRenderEffect(Landroid/graphics/RenderEffect;)V

    :cond_19
    const v3, 0x8000

    and-int/2addr v2, v3

    if-eqz v2, :cond_1a

    invoke-virtual {v0, v5, v10}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    iput-boolean v6, v0, Landroidx/compose/ui/platform/ViewLayer;->mHasOverlappingRendering:Z

    :cond_1a
    iget v1, v1, Landroidx/compose/ui/graphics/ReusableGraphicsLayerScope;->mutatedFields:I

    iput v1, v0, Landroidx/compose/ui/platform/ViewLayer;->mutatedFields:I

    return-void
.end method
