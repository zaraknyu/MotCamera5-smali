.class public final Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final NotInitialized:J


# instance fields
.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public fadeInSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public finalOffset:J

.field public final graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

.field public final isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public isRunningMovingAwayAnimation:Z

.field public layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

.field public lookaheadOffset:J

.field public final onLayerPropertyChanged:Landroidx/compose/runtime/Pending$keyMap$2;

.field public final placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

.field public final placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

.field public placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

.field public rawOffset:J

.field public final visibilityAnimation:Landroidx/compose/animation/core/Animatable;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const v0, 0x7fffffff

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long v2, v0, v2

    const-wide v4, 0xffffffffL

    and-long/2addr v0, v4

    or-long/2addr v0, v2

    sput-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    return-void
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Landroidx/compose/ui/graphics/GraphicsContext;Landroidx/compose/runtime/Pending$keyMap$2;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->onLayerPropertyChanged:Landroidx/compose/runtime/Pending$keyMap$2;

    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p3

    iput-object p3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationFinished$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    iput-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->finalOffset:J

    const/4 p1, 0x0

    if-eqz p2, :cond_0

    invoke-interface {p2}, Landroidx/compose/ui/graphics/GraphicsContext;->createGraphicsLayer()Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    move-result-object p2

    goto :goto_0

    :cond_0
    move-object p2, p1

    :goto_0
    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    new-instance p2, Landroidx/compose/animation/core/Animatable;

    new-instance p3, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p3, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    sget-object v4, Landroidx/compose/animation/core/VectorConvertersKt;->IntOffsetToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    const/16 v5, 0xc

    invoke-direct {p2, p3, v4, p1, v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDeltaAnimation:Landroidx/compose/animation/core/Animatable;

    new-instance p2, Landroidx/compose/animation/core/Animatable;

    const/high16 p3, 0x3f800000    # 1.0f

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    sget-object v4, Landroidx/compose/animation/core/VectorConvertersKt;->FloatToVector:Landroidx/compose/animation/core/TwoWayConverterImpl;

    invoke-direct {p2, p3, v4, p1, v5}, Landroidx/compose/animation/core/Animatable;-><init>(Ljava/lang/Object;Landroidx/compose/animation/core/TwoWayConverterImpl;Ljava/lang/Object;I)V

    iput-object p2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->visibilityAnimation:Landroidx/compose/animation/core/Animatable;

    new-instance p1, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {p1, v2, v3}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    invoke-static {p1}, Landroidx/compose/runtime/AnchoredGroupPath;->mutableStateOf$default(Ljava/lang/Object;)Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    iput-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->lookaheadOffset:J

    return-void
.end method


# virtual methods
.method public final animateAppearance()V
    .locals 9

    iget-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iget-object v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeInSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v6, 0x3

    iget-object v7, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v8, 0x0

    if-nez v0, :cond_0

    if-eqz v3, :cond_0

    if-nez v4, :cond_1

    :cond_0
    move-object v2, p0

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setAppearanceAnimationInProgress(Z)V

    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v0

    xor-int/lit8 v1, v0, 0x1

    if-nez v0, :cond_2

    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    :cond_2
    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2;

    const/4 v5, 0x0

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$2;-><init>(ZLandroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Landroidx/compose/animation/core/FiniteAnimationSpec;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8, v8, v0, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return-void

    :goto_0
    invoke-virtual {v2}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    const/high16 p0, 0x3f800000    # 1.0f

    invoke-virtual {v4, p0}, Landroidx/compose/ui/graphics/layer/GraphicsLayer;->setAlpha(F)V

    :goto_1
    new-instance p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$1;

    invoke-direct {p0, v2, v8}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$animateAppearance$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    invoke-static {v7, v8, v8, p0, v6}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_4
    return-void
.end method

.method public final isDisappearanceAnimationInProgress()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public final release()V
    .locals 5

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x3

    iget-object v2, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    const/4 v3, 0x0

    const/4 v4, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementAnimationInProgress(Z)V

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$1;

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$1;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_0
    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setAppearanceAnimationInProgress(Z)V

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$2;

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$2;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_1
    invoke-virtual {p0}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setDisappearanceAnimationInProgress(Z)V

    new-instance v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$3;

    invoke-direct {v0, p0, v4}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation$release$3;-><init>(Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;Lkotlin/coroutines/Continuation;)V

    invoke-static {v2, v4, v4, v0, v1}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    :cond_2
    iput-boolean v3, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isRunningMovingAwayAnimation:Z

    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->setPlacementDelta--gyyYBs(J)V

    sget-wide v0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->NotInitialized:J

    iput-wide v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->rawOffset:J

    iget-object v0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    if-eqz v0, :cond_3

    iget-object v1, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->graphicsContext:Landroidx/compose/ui/graphics/GraphicsContext;

    if-eqz v1, :cond_3

    invoke-interface {v1, v0}, Landroidx/compose/ui/graphics/GraphicsContext;->releaseGraphicsLayer(Landroidx/compose/ui/graphics/layer/GraphicsLayer;)V

    :cond_3
    iput-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->layer:Landroidx/compose/ui/graphics/layer/GraphicsLayer;

    iput-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeInSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->fadeOutSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    iput-object v4, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementSpec:Landroidx/compose/animation/core/FiniteAnimationSpec;

    return-void
.end method

.method public final setAppearanceAnimationInProgress(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isAppearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setDisappearanceAnimationInProgress(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isDisappearanceAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlacementAnimationInProgress(Z)V
    .locals 0

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->isPlacementAnimationInProgress$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method

.method public final setPlacementDelta--gyyYBs(J)V
    .locals 1

    new-instance v0, Landroidx/compose/ui/unit/IntOffset;

    invoke-direct {v0, p1, p2}, Landroidx/compose/ui/unit/IntOffset;-><init>(J)V

    iget-object p0, p0, Landroidx/compose/foundation/lazy/layout/LazyLayoutItemAnimation;->placementDelta$delegate:Landroidx/compose/runtime/ParcelableSnapshotMutableState;

    invoke-virtual {p0, v0}, Landroidx/compose/runtime/ParcelableSnapshotMutableState;->setValue(Ljava/lang/Object;)V

    return-void
.end method
