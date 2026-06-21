.class public abstract Landroidx/compose/ui/viewinterop/AndroidViewHolder;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Landroidx/core/view/NestedScrollingParent3;
.implements Landroidx/compose/runtime/ComposeNodeLifecycleCallback;
.implements Landroidx/compose/ui/node/OwnerScope;
.implements Landroidx/core/view/OnApplyWindowInsetsListener;


# instance fields
.field public density:Landroidx/compose/ui/unit/Density;

.field public final dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

.field public hasUpdateBlock:Z

.field public insets:Landroidx/core/view/WindowInsetsCompat;

.field public isDrawing:Z

.field public lastHeightMeasureSpec:I

.field public lastWidthMeasureSpec:I

.field public final layoutNode:Landroidx/compose/ui/node/LayoutNode;

.field public lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field public final location:[I

.field public modifier:Landroidx/compose/ui/Modifier;

.field public final nestedScrollingParentHelper:Lcom/google/zxing/qrcode/decoder/Version$ECB;

.field public onDensityChanged:Lkotlin/jvm/functions/Function1;

.field public onModifierChanged:Lkotlin/jvm/functions/Function1;

.field public onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

.field public final owner:Landroidx/compose/ui/node/Owner;

.field public final position:[I

.field public release:Lkotlin/jvm/functions/Function0;

.field public reset:Lkotlin/jvm/functions/Function0;

.field public final runInvalidate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

.field public final runUpdate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

.field public savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

.field public size:J

.field public update:Lkotlin/jvm/functions/Function0;

.field public final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/compose/runtime/ComposerImpl$CompositionContextImpl;ILandroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;Landroid/view/View;Landroidx/compose/ui/node/Owner;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p5

    invoke-direct/range {p0 .. p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    move-object/from16 v3, p6

    iput-object v3, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    sget-object v3, Landroidx/compose/ui/platform/WindowRecomposer_androidKt;->animationScale:Ljava/util/LinkedHashMap;

    const v3, 0x7f0a0067

    move-object/from16 v4, p2

    invoke-virtual {v0, v3, v4}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/view/View;->setSaveFromParentEnabled(Z)V

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    new-instance v2, Landroidx/compose/ui/window/DialogLayout$1;

    move-object v4, v0

    check-cast v4, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    const/4 v5, 0x1

    invoke-direct {v2, v4, v5}, Landroidx/compose/ui/window/DialogLayout$1;-><init>(Landroid/view/ViewGroup;I)V

    invoke-static {v0, v2}, Landroidx/core/view/ViewCompat;->setWindowInsetsAnimationCallback(Landroid/view/View;Landroidx/media3/decoder/Buffer;)V

    invoke-static {v0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;->INSTANCE$2:Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;->INSTANCE:Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;->INSTANCE$1:Landroidx/compose/ui/viewinterop/AndroidViewHolder$reset$1;

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    sget-object v2, Landroidx/compose/ui/Modifier$Companion;->$$INSTANCE:Landroidx/compose/ui/Modifier$Companion;

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    invoke-static {}, Landroidx/compose/ui/unit/DensityKt;->Density$default()Landroidx/compose/ui/unit/DensityImpl;

    move-result-object v6

    iput-object v6, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    const/4 v6, 0x2

    new-array v7, v6, [I

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->position:[I

    const-wide/16 v7, 0x0

    iput-wide v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->size:J

    new-instance v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {v7, v4, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    new-instance v7, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {v7, v4, v5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runInvalidate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    new-array v7, v6, [I

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    const/high16 v7, -0x80000000

    iput v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    iput v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    new-instance v7, Lcom/google/zxing/qrcode/decoder/Version$ECB;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    new-instance v7, Landroidx/compose/ui/node/LayoutNode;

    const/4 v8, 0x3

    invoke-direct {v7, v8}, Landroidx/compose/ui/node/LayoutNode;-><init>(I)V

    iput-boolean v5, v7, Landroidx/compose/ui/node/LayoutNode;->forceUseOldLayers:Z

    iput-object v4, v7, Landroidx/compose/ui/node/LayoutNode;->interopViewFactoryHolder:Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    sget-object v8, Landroidx/compose/ui/viewinterop/AndroidView_androidKt;->NoOpScrollConnection:Lcom/google/mlkit/common/internal/zze;

    invoke-static {v2, v8, v1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierKt;->nestedScroll(Landroidx/compose/ui/Modifier;Landroidx/compose/ui/input/nestedscroll/NestedScrollConnection;Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;->INSTANCE$3:Landroidx/compose/ui/viewinterop/AndroidView_androidKt$NoOpUpdate$1;

    new-instance v8, Landroidx/compose/ui/semantics/AppendedSemanticsElement;

    invoke-direct {v8, v2, v5}, Landroidx/compose/ui/semantics/AppendedSemanticsElement;-><init>(Lkotlin/jvm/functions/Function1;Z)V

    invoke-interface {v1, v8}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter;

    invoke-direct {v2}, Landroidx/compose/ui/input/pointer/PointerInteropFilter;-><init>()V

    new-instance v8, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-direct {v8, v4, v5}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V

    iput-object v8, v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->onTouchEvent:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    new-instance v8, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    invoke-direct {v8}, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;-><init>()V

    iget-object v9, v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->requestDisallowInterceptTouchEvent:Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    if-nez v9, :cond_0

    goto :goto_0

    :cond_0
    const/4 v10, 0x0

    iput-object v10, v9, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    :goto_0
    iput-object v8, v2, Landroidx/compose/ui/input/pointer/PointerInteropFilter;->requestDisallowInterceptTouchEvent:Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ProduceKt$awaitClose$4$1;->$cont:Ljava/lang/Object;

    invoke-virtual {v0, v8}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->setOnRequestDisallowInterceptTouchEvent$ui_release(Lkotlin/jvm/functions/Function1;)V

    invoke-interface {v1, v2}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v11

    const/16 v18, 0x0

    const v19, 0x1ffff

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    invoke-static/range {v11 .. v19}, Landroidx/compose/ui/graphics/Brush;->graphicsLayer-Ap8cVGQ$default(Landroidx/compose/ui/Modifier;FFFFFLandroidx/compose/ui/graphics/Shape;ZI)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;

    const/16 v8, 0xd

    invoke-direct {v2, v4, v7, v4, v8}, Landroidx/compose/ui/focus/FocusOwnerImpl$focusSearch$1;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    invoke-static {v1, v2}, Landroidx/compose/ui/draw/BlurKt;->drawBehind(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    new-instance v2, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    invoke-direct {v2, v4, v7, v6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;I)V

    invoke-static {v1, v2}, Landroidx/compose/ui/layout/ScaleFactorKt;->onGloballyPositioned(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function1;)Landroidx/compose/ui/Modifier;

    move-result-object v1

    iget-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    invoke-interface {v2, v1}, Landroidx/compose/ui/Modifier;->then(Landroidx/compose/ui/Modifier;)Landroidx/compose/ui/Modifier;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroidx/compose/ui/node/LayoutNode;->setModifier(Landroidx/compose/ui/Modifier;)V

    new-instance v2, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;

    const/16 v6, 0x8

    invoke-direct {v2, v6, v7, v1}, Landroidx/work/impl/WorkerWrapperKt$awaitWithin$2$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    iget-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    invoke-virtual {v7, v1}, Landroidx/compose/ui/node/LayoutNode;->setDensity(Landroidx/compose/ui/unit/Density;)V

    new-instance v1, Lcom/tinder/StateMachine$Matcher$predicates$1;

    const/16 v2, 0x9

    invoke-direct {v1, v2, v7}, Lcom/tinder/StateMachine$Matcher$predicates$1;-><init>(ILjava/lang/Object;)V

    iput-object v1, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    invoke-direct {v1, v4, v7, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;Landroidx/compose/ui/node/LayoutNode;I)V

    iput-object v1, v7, Landroidx/compose/ui/node/LayoutNode;->onAttach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$3;

    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    invoke-direct {v1, v4, v3}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;-><init>(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;I)V

    iput-object v1, v7, Landroidx/compose/ui/node/LayoutNode;->onDetach:Landroidx/compose/ui/viewinterop/AndroidViewHolder$layoutNode$1$4;

    new-instance v1, Landroidx/compose/foundation/text/TextMeasurePolicy;

    invoke-direct {v1, v5, v4, v7}, Landroidx/compose/foundation/text/TextMeasurePolicy;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v7, v1}, Landroidx/compose/ui/node/LayoutNode;->setMeasurePolicy(Landroidx/compose/ui/layout/MeasurePolicy;)V

    iput-object v7, v0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-void
.end method

.method public static final synthetic access$getSnapshotObserver(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;)Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 0

    invoke-direct {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    return-object p0
.end method

.method public static final access$obtainMeasureSpec(Landroidx/compose/ui/viewinterop/ViewFactoryHolder;III)I
    .locals 1

    const/high16 p0, 0x40000000    # 2.0f

    if-gez p3, :cond_3

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    const v0, 0x7fffffff

    if-ne p3, p1, :cond_1

    if-eq p2, v0, :cond_1

    const/high16 p0, -0x80000000

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_1
    const/4 p1, -0x1

    if-ne p3, p1, :cond_2

    if-eq p2, v0, :cond_2

    invoke-static {p2, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0

    :cond_3
    :goto_0
    invoke-static {p3, p1, p2}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    move-result p1

    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p0

    return p0
.end method

.method private final getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;
    .locals 1

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Expected AndroidViewHolder to be attached when observing reads."

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->owner:Landroidx/compose/ui/node/Owner;

    check-cast p0, Landroidx/compose/ui/platform/AndroidComposeView;

    invoke-virtual {p0}, Landroidx/compose/ui/platform/AndroidComposeView;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object p0

    return-object p0
.end method

.method public static inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;
    .locals 2

    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    sub-int/2addr v0, p1

    const/4 p1, 0x0

    if-gez v0, :cond_0

    move v0, p1

    :cond_0
    iget v1, p0, Landroidx/core/graphics/Insets;->top:I

    sub-int/2addr v1, p2

    if-gez v1, :cond_1

    move v1, p1

    :cond_1
    iget p2, p0, Landroidx/core/graphics/Insets;->right:I

    sub-int/2addr p2, p3

    if-gez p2, :cond_2

    move p2, p1

    :cond_2
    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    sub-int/2addr p0, p4

    if-gez p0, :cond_3

    goto :goto_0

    :cond_3
    move p1, p0

    :goto_0
    invoke-static {v0, v1, p2, p1}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final gatherTransparentRegion(Landroid/graphics/Region;)Z
    .locals 9

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->location:[I

    invoke-virtual {p0, v1}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v2, 0x0

    aget v4, v1, v2

    aget v5, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int v6, v2, v4

    aget v1, v1, v0

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    add-int v7, p0, v1

    sget-object v8, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    move-object v3, p1

    invoke-virtual/range {v3 .. v8}, Landroid/graphics/Region;->op(IIIILandroid/graphics/Region$Op;)Z

    return v0
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public final getDensity()Landroidx/compose/ui/unit/Density;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    return-object p0
.end method

.method public final getInteropView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method public final getLayoutNode()Landroidx/compose/ui/node/LayoutNode;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    return-object p0
.end method

.method public getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p0

    if-nez p0, :cond_0

    new-instance p0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v0, -0x1

    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    :cond_0
    return-object p0
.end method

.method public final getLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    return-object p0
.end method

.method public final getModifier()Landroidx/compose/ui/Modifier;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    return-object p0
.end method

.method public getNestedScrollAxes()I
    .locals 1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    iget v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    iget p0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    or-int/2addr p0, v0

    return p0
.end method

.method public final getOnDensityChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnModifierChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getOnRequestDisallowInterceptTouchEvent$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getRelease()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getReset()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getSavedStateRegistryOwner()Landroidx/savedstate/SavedStateRegistryOwner;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    return-object p0
.end method

.method public final getUpdate()Lkotlin/jvm/functions/Function0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function0;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    return-object p0
.end method

.method public final getView()Landroid/view/View;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    return-object p0
.end method

.method public final insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 13

    iget-object v0, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    sget-object v2, Landroidx/core/graphics/Insets;->NONE:Landroidx/core/graphics/Insets;

    invoke-virtual {v1, v2}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, -0x9

    invoke-virtual {v0, v1}, Landroidx/core/view/WindowInsetsCompat$Impl;->getInsetsIgnoringVisibility(I)Landroidx/core/graphics/Insets;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroidx/core/graphics/Insets;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroidx/core/view/WindowInsetsCompat$Impl;->getDisplayCutout()Landroidx/core/view/DisplayCutoutCompat;

    move-result-object v0

    if-eqz v0, :cond_6

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    const/4 v4, 0x0

    if-gez v3, :cond_2

    move v3, v4

    :cond_2
    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    if-gez v0, :cond_3

    move v0, v4

    :cond_3
    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->findRootCoordinates(Landroidx/compose/ui/layout/LayoutCoordinates;)Landroidx/compose/ui/layout/LayoutCoordinates;

    move-result-object v1

    invoke-interface {v1}, Landroidx/compose/ui/layout/LayoutCoordinates;->getSize-YbymL2g()J

    move-result-wide v7

    shr-long v9, v7, v2

    long-to-int v1, v9

    and-long/2addr v7, v5

    long-to-int v7, v7

    iget-wide v8, p0, Landroidx/compose/ui/layout/Placeable;->measuredSize:J

    shr-long v10, v8, v2

    long-to-int v10, v10

    and-long/2addr v8, v5

    long-to-int v8, v8

    int-to-float v9, v10

    int-to-float v8, v8

    invoke-static {v9}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v8}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v8

    int-to-long v11, v8

    shl-long v8, v9, v2

    and-long v10, v11, v5

    or-long/2addr v8, v10

    invoke-virtual {p0, v8, v9}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v8

    invoke-static {v8, v9}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v8

    shr-long v10, v8, v2

    long-to-int p0, v10

    sub-int/2addr v1, p0

    if-gez v1, :cond_4

    move v1, v4

    :cond_4
    and-long/2addr v5, v8

    long-to-int p0, v5

    sub-int/2addr v7, p0

    if-gez v7, :cond_5

    goto :goto_0

    :cond_5
    move v4, v7

    :goto_0
    if-nez v3, :cond_7

    if-nez v0, :cond_7

    if-nez v1, :cond_7

    if-nez v4, :cond_7

    :cond_6
    :goto_1
    return-object p1

    :cond_7
    iget-object p0, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p0, v3, v0, v1, v4}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public final invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    iget-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runInvalidate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {p1, p2, v0}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public final isNestedScrollingEnabled()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p0

    return p0
.end method

.method public final isValidOwnerScope()Z
    .locals 0

    invoke-virtual {p0}, Landroid/view/View;->isAttachedToWindow()Z

    move-result p0

    return p0
.end method

.method public final onApplyWindowInsets(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    new-instance p1, Landroidx/core/view/WindowInsetsCompat;

    invoke-direct {p1, p2}, Landroidx/core/view/WindowInsetsCompat;-><init>(Landroidx/core/view/WindowInsetsCompat;)V

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insets:Landroidx/core/view/WindowInsetsCompat;

    invoke-virtual {p0, p2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public final onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onDeactivate()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    return-void
.end method

.method public final onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onDescendantInvalidated(Landroid/view/View;Landroid/view/View;)V

    iget-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->isDrawing:Z

    if-eqz p1, :cond_0

    new-instance p1, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;

    const/4 p2, 0x2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runInvalidate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-direct {p1, p2, v0}, Landroidx/compose/ui/Actual_androidKt$$ExternalSyntheticLambda0;-><init>(ILkotlin/jvm/functions/Function0;)V

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    invoke-virtual {p0}, Landroidx/compose/ui/node/LayoutNode;->invalidateLayer$ui_release()V

    return-void
.end method

.method public final onDetachedFromWindow()V
    .locals 22

    move-object/from16 v0, p0

    invoke-super {v0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    invoke-direct {v0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->getSnapshotObserver()Landroidx/compose/ui/node/OwnerSnapshotObserver;

    move-result-object v1

    iget-object v1, v1, Landroidx/compose/ui/node/OwnerSnapshotObserver;->observer:Landroidx/preference/PreferenceManager;

    iget-object v2, v1, Landroidx/preference/PreferenceManager;->mOnPreferenceTreeClickListener:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iget-object v1, v1, Landroidx/preference/PreferenceManager;->mPreferenceScreen:Ljava/lang/Object;

    check-cast v1, Landroidx/compose/runtime/collection/MutableVector;

    iget v3, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I

    const/4 v5, 0x0

    const/4 v6, 0x0

    :goto_0
    if-ge v5, v3, :cond_9

    iget-object v7, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    aget-object v7, v7, v5

    check-cast v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;

    iget-object v8, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    invoke-virtual {v8, v0}, Landroidx/collection/MutableScatterMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/collection/MutableObjectIntMap;

    if-nez v8, :cond_1

    :cond_0
    move/from16 v16, v5

    goto :goto_4

    :cond_1
    iget-object v9, v8, Landroidx/collection/MutableObjectIntMap;->keys:[Ljava/lang/Object;

    iget-object v10, v8, Landroidx/collection/MutableObjectIntMap;->values:[I

    iget-object v8, v8, Landroidx/collection/MutableObjectIntMap;->metadata:[J

    array-length v11, v8

    add-int/lit8 v11, v11, -0x2

    if-ltz v11, :cond_0

    const/4 v12, 0x0

    :goto_1
    aget-wide v13, v8, v12

    move/from16 v16, v5

    not-long v4, v13

    const/16 v17, 0x7

    shl-long v4, v4, v17

    and-long/2addr v4, v13

    const-wide v17, -0x7f7f7f7f7f7f7f80L    # -2.937446524422997E-306

    and-long v4, v4, v17

    cmp-long v4, v4, v17

    if-eqz v4, :cond_4

    sub-int v4, v12, v11

    not-int v4, v4

    ushr-int/lit8 v4, v4, 0x1f

    const/16 v5, 0x8

    rsub-int/lit8 v4, v4, 0x8

    const/4 v15, 0x0

    :goto_2
    if-ge v15, v4, :cond_3

    const-wide/16 v18, 0xff

    and-long v18, v13, v18

    const-wide/16 v20, 0x80

    cmp-long v18, v18, v20

    if-gez v18, :cond_2

    shl-int/lit8 v18, v12, 0x3

    add-int v18, v18, v15

    move/from16 v19, v5

    aget-object v5, v9, v18

    aget v18, v10, v18

    invoke-virtual {v7, v0, v5}, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->removeObservation(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_3

    :cond_2
    move/from16 v19, v5

    :goto_3
    shr-long v13, v13, v19

    add-int/lit8 v15, v15, 0x1

    move/from16 v5, v19

    goto :goto_2

    :cond_3
    if-ne v4, v5, :cond_5

    :cond_4
    if-eq v12, v11, :cond_5

    add-int/lit8 v12, v12, 0x1

    move/from16 v5, v16

    goto :goto_1

    :cond_5
    :goto_4
    iget-object v4, v7, Landroidx/compose/runtime/snapshots/SnapshotStateObserver$ObservedScopeMap;->scopeToValues:Landroidx/collection/MutableScatterMap;

    iget v4, v4, Landroidx/collection/MutableScatterMap;->_size:I

    if-eqz v4, :cond_6

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v4, 0x0

    :goto_5
    if-nez v4, :cond_7

    add-int/lit8 v6, v6, 0x1

    goto :goto_6

    :cond_7
    if-lez v6, :cond_8

    iget-object v4, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v5, v16, v6

    aget-object v7, v4, v16

    aput-object v7, v4, v5

    goto :goto_6

    :catchall_0
    move-exception v0

    goto :goto_7

    :cond_8
    :goto_6
    add-int/lit8 v5, v16, 0x1

    goto/16 :goto_0

    :cond_9
    iget-object v0, v1, Landroidx/compose/runtime/collection/MutableVector;->content:[Ljava/lang/Object;

    sub-int v4, v3, v6

    const/4 v5, 0x0

    invoke-static {v0, v4, v3, v5}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    iput v4, v1, Landroidx/compose/runtime/collection/MutableVector;->size:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    return-void

    :goto_7
    monitor-exit v2

    throw v0
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p4, p5}, Landroid/view/View;->layout(IIII)V

    return-void
.end method

.method public final onMeasure(II)V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_1

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void

    :cond_1
    invoke-virtual {v0, p1, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Landroid/view/View;->setMeasuredDimension(II)V

    iput p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastWidthMeasureSpec:I

    iput p2, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lastHeightMeasureSpec:I

    return-void
.end method

.method public final onNestedFling(Landroid/view/View;FFZ)Z
    .locals 7

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide v4

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p1}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p1

    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;

    const/4 v6, 0x0

    move-object v3, p0

    move v2, p4

    invoke-direct/range {v1 .. v6}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedFling$1;-><init>(ZLandroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    const/4 p2, 0x0

    invoke-static {p1, p2, p2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return v0
.end method

.method public final onNestedPreFling(Landroid/view/View;FF)Z
    .locals 3

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/high16 p1, -0x40800000    # -1.0f

    mul-float/2addr p2, p1

    mul-float/2addr p3, p1

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p1

    iget-object p3, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    invoke-virtual {p3}, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->getCoroutineScope()Lkotlinx/coroutines/CoroutineScope;

    move-result-object p3

    new-instance v1, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$onNestedPreFling$1;-><init>(Landroidx/compose/ui/viewinterop/AndroidViewHolder;JLkotlin/coroutines/Continuation;)V

    const/4 p0, 0x3

    invoke-static {p3, v2, v2, v1, p0}, Lkotlinx/coroutines/JobKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    return v0
.end method

.method public final onNestedPreScroll(Landroid/view/View;II[II)V
    .locals 5

    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v0, p3

    const/16 p3, 0x20

    shl-long/2addr p1, p3

    const-wide v2, 0xffffffffL

    and-long/2addr v0, v2

    or-long/2addr p1, v0

    const/4 v0, 0x1

    if-nez p5, :cond_1

    move p5, v0

    goto :goto_0

    :cond_1
    const/4 p5, 0x2

    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->nestedScrollNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    iget-boolean v4, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v4, :cond_2

    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    move-object v1, p0

    check-cast v1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    :cond_2
    if-eqz v1, :cond_3

    invoke-virtual {v1, p5, p1, p2}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->onPreScroll-OzD1aCk(IJ)J

    move-result-wide p0

    goto :goto_1

    :cond_3
    const-wide/16 p0, 0x0

    :goto_1
    shr-long p2, p0, p3

    long-to-int p2, p2

    invoke-static {p2}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p2

    invoke-static {p2}, Landroidx/compose/ui/platform/InvertMatrixKt;->composeToViewOffset(F)I

    move-result p2

    const/4 p3, 0x0

    aput p2, p4, p3

    and-long/2addr p0, v2

    long-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->composeToViewOffset(F)I

    move-result p0

    aput p0, p4, v0

    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII)V
    .locals 12

    .line 1
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    .line 2
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    .line 3
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long v8, v0, v2

    move/from16 p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p2

    move/from16 v0, p5

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 4
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    .line 5
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long p1, p2, p1

    and-long/2addr v0, v4

    or-long v10, p1, v0

    if-nez p6, :cond_1

    const/4 p1, 0x1

    :goto_0
    move v7, p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x2

    goto :goto_0

    .line 6
    :goto_1
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->nestedScrollNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    const/4 p1, 0x0

    if-eqz p0, :cond_2

    .line 7
    iget-boolean p2, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz p2, :cond_2

    .line 8
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    move-object p1, p0

    check-cast p1, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    :cond_2
    move-object v6, p1

    if-eqz v6, :cond_3

    .line 9
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->onPostScroll-DzOQY0M(IJJ)J

    :cond_3
    return-void
.end method

.method public final onNestedScroll(Landroid/view/View;IIIII[I)V
    .locals 12

    .line 10
    iget-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->isNestedScrollingEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    int-to-float p1, p2

    const/4 p2, -0x1

    int-to-float p2, p2

    mul-float/2addr p1, p2

    int-to-float p3, p3

    mul-float/2addr p3, p2

    .line 11
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v0, p1

    .line 12
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long v2, p1

    const/16 p1, 0x20

    shl-long/2addr v0, p1

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long v8, v0, v2

    move/from16 p3, p4

    int-to-float p3, p3

    mul-float/2addr p3, p2

    move/from16 v0, p5

    int-to-float v0, v0

    mul-float/2addr v0, p2

    .line 13
    invoke-static {p3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    .line 14
    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    int-to-long v0, v0

    shl-long/2addr p2, p1

    and-long/2addr v0, v4

    or-long v10, p2, v0

    const/4 p2, 0x1

    if-nez p6, :cond_1

    move v7, p2

    goto :goto_0

    :cond_1
    const/4 p3, 0x2

    move v7, p3

    .line 15
    :goto_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->dispatcher:Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;

    iget-object p0, p0, Landroidx/compose/ui/input/nestedscroll/NestedScrollDispatcher;->nestedScrollNode:Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    const/4 p3, 0x0

    if-eqz p0, :cond_2

    .line 16
    iget-boolean v0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-eqz v0, :cond_2

    .line 17
    invoke-static {p0}, Landroidx/compose/ui/node/HitTestResultKt;->findNearestAncestor(Landroidx/compose/ui/node/TraversableNode;)Landroidx/compose/ui/node/TraversableNode;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;

    :cond_2
    move-object v6, p3

    if-eqz v6, :cond_3

    .line 18
    invoke-virtual/range {v6 .. v11}, Landroidx/compose/ui/input/nestedscroll/NestedScrollNode;->onPostScroll-DzOQY0M(IJJ)J

    move-result-wide v0

    goto :goto_1

    :cond_3
    const-wide/16 v0, 0x0

    :goto_1
    shr-long p0, v0, p1

    long-to-int p0, p0

    .line 19
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 20
    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->composeToViewOffset(F)I

    move-result p0

    const/4 p1, 0x0

    aput p0, p7, p1

    and-long p0, v0, v4

    long-to-int p0, p0

    .line 21
    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    .line 22
    invoke-static {p0}, Landroidx/compose/ui/platform/InvertMatrixKt;->composeToViewOffset(F)I

    move-result p0

    aput p0, p7, p2

    return-void
.end method

.method public final onNestedScrollAccepted(Landroid/view/View;Landroid/view/View;II)V
    .locals 0

    const/4 p1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    if-ne p4, p1, :cond_0

    iput p3, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return-void

    :cond_0
    iput p3, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    return-void
.end method

.method public final onRelease()V
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onReuse()V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eq v1, p0, :cond_0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final onStartNestedScroll(Landroid/view/View;Landroid/view/View;II)Z
    .locals 0

    and-int/lit8 p0, p3, 0x2

    const/4 p1, 0x1

    if-nez p0, :cond_1

    and-int/lit8 p0, p3, 0x1

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    return p1
.end method

.method public final onStopNestedScroll(Landroid/view/View;I)V
    .locals 1

    const/4 p1, 0x1

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->nestedScrollingParentHelper:Lcom/google/zxing/qrcode/decoder/Version$ECB;

    const/4 v0, 0x0

    if-ne p2, p1, :cond_0

    iput v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->dataCodewords:I

    return-void

    :cond_0
    iput v0, p0, Lcom/google/zxing/qrcode/decoder/Version$ECB;->count:I

    return-void
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 0

    invoke-super {p0, p1}, Landroid/view/View;->onWindowVisibilityChanged(I)V

    return-void
.end method

.method public final requestDisallowInterceptTouchEvent(Z)V
    .locals 2

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    if-eqz v0, :cond_0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-interface {v0, v1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->requestDisallowInterceptTouchEvent(Z)V

    return-void
.end method

.method public final setDensity(Landroidx/compose/ui/unit/Density;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->density:Landroidx/compose/ui/unit/Density;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setLifecycleOwner(Landroidx/lifecycle/LifecycleOwner;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->lifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    invoke-static {p0, p1}, Landroidx/lifecycle/LifecycleKt;->set(Landroid/view/View;Landroidx/lifecycle/LifecycleOwner;)V

    :cond_0
    return-void
.end method

.method public final setModifier(Landroidx/compose/ui/Modifier;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->modifier:Landroidx/compose/ui/Modifier;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setOnDensityChanged$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onDensityChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnModifierChanged$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onModifierChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setOnRequestDisallowInterceptTouchEvent$ui_release(Lkotlin/jvm/functions/Function1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->onRequestDisallowInterceptTouchEvent:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public final setRelease(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->release:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setReset(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->reset:Lkotlin/jvm/functions/Function0;

    return-void
.end method

.method public final setSavedStateRegistryOwner(Landroidx/savedstate/SavedStateRegistryOwner;)V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    if-eq p1, v0, :cond_0

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->savedStateRegistryOwner:Landroidx/savedstate/SavedStateRegistryOwner;

    invoke-static {p0, p1}, Landroidx/savedstate/ViewTreeSavedStateRegistryOwner;->set(Landroid/view/View;Landroidx/savedstate/SavedStateRegistryOwner;)V

    :cond_0
    return-void
.end method

.method public final setUpdate(Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->update:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->hasUpdateBlock:Z

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->runUpdate:Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;

    invoke-virtual {p0}, Landroidx/compose/ui/viewinterop/AndroidViewHolder$runUpdate$1;->invoke()Ljava/lang/Object;

    return-void
.end method

.method public final shouldDelayChildPressedState()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method
