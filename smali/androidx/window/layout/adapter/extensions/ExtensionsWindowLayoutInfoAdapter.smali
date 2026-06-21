.class public abstract Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getType()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto/16 :goto_2

    .line 2
    :cond_0
    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->HINGE:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_0

    .line 3
    :cond_1
    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->FOLD:Landroidx/window/layout/FoldingFeature$State;

    .line 4
    :goto_0
    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getState()I

    move-result v3

    if-eq v3, v2, :cond_3

    if-eq v3, v1, :cond_2

    goto :goto_2

    .line 5
    :cond_2
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_1

    .line 6
    :cond_3
    sget-object v1, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    .line 7
    :goto_1
    new-instance v2, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const-string v4, "getBounds(...)"

    invoke-static {v3, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    .line 8
    iget-object p0, p0, Landroidx/window/layout/WindowMetrics;->_bounds:Landroidx/window/core/Bounds;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    new-instance v3, Landroid/graphics/Rect;

    iget v5, p0, Landroidx/window/core/Bounds;->left:I

    iget v6, p0, Landroidx/window/core/Bounds;->top:I

    iget v7, p0, Landroidx/window/core/Bounds;->right:I

    iget p0, p0, Landroidx/window/core/Bounds;->bottom:I

    invoke-direct {v3, v5, v6, v7, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 11
    iget p0, v2, Landroidx/window/core/Bounds;->bottom:I

    iget v5, v2, Landroidx/window/core/Bounds;->top:I

    sub-int v6, p0, v5

    .line 12
    iget v7, v2, Landroidx/window/core/Bounds;->left:I

    iget v2, v2, Landroidx/window/core/Bounds;->right:I

    if-nez v6, :cond_4

    sub-int v6, v2, v7

    if-nez v6, :cond_4

    goto :goto_2

    :cond_4
    sub-int v6, v2, v7

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-eq v6, v8, :cond_5

    sub-int v6, p0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-eq v6, v8, :cond_5

    goto :goto_2

    :cond_5
    sub-int v6, v2, v7

    .line 14
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v8

    if-ge v6, v8, :cond_6

    sub-int v6, p0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v8

    if-ge v6, v8, :cond_6

    goto :goto_2

    :cond_6
    sub-int/2addr v2, v7

    .line 15
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-ne v2, v6, :cond_7

    sub-int/2addr p0, v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v2

    if-ne p0, v2, :cond_7

    :goto_2
    const/4 p0, 0x0

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance v2, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/extensions/layout/FoldingFeature;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p1, v4}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, p1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v2, v0, v1}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/FoldingFeature$State;Landroidx/window/layout/FoldingFeature$State;)V

    return-object p0
.end method

.method public static translate$window_release(Landroid/content/Context;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 9

    const-string v0, "context"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 17
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v0, 0x2

    .line 18
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v0, 0x4

    .line 19
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v0, 0x8

    .line 20
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/16 v0, 0x10

    .line 21
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/16 v0, 0x20

    .line 22
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x40

    .line 23
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const/16 v0, 0x80

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    filled-new-array/range {v1 .. v8}, [Ljava/lang/Integer;

    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 26
    const-class v0, Landroid/view/WindowManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 27
    new-instance v0, Landroidx/window/layout/WindowMetrics;

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    const-string v2, "getBounds(...)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getDensity()F

    move-result p0

    invoke-direct {v0, p0, v1}, Landroidx/window/layout/WindowMetrics;-><init>(FLandroid/graphics/Rect;)V

    .line 28
    invoke-static {v0, p1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;

    move-result-object p0

    return-object p0
.end method

.method public static translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/WindowLayoutInfo;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 3

    const-string v0, "info"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    invoke-virtual {p1}, Landroidx/window/extensions/layout/WindowLayoutInfo;->getDisplayFeatures()Ljava/util/List;

    move-result-object p1

    const-string v0, "getDisplayFeatures(...)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 30
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 32
    check-cast v1, Landroidx/window/extensions/layout/DisplayFeature;

    .line 33
    instance-of v2, v1, Landroidx/window/extensions/layout/FoldingFeature;

    if-eqz v2, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast v1, Landroidx/window/extensions/layout/FoldingFeature;

    invoke-static {p0, v1}, Landroidx/window/layout/adapter/extensions/ExtensionsWindowLayoutInfoAdapter;->translate$window_release(Landroidx/window/layout/WindowMetrics;Landroidx/window/extensions/layout/FoldingFeature;)Landroidx/window/layout/HardwareFoldingFeature;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_0

    .line 34
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 35
    :cond_2
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p0, v0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0
.end method
