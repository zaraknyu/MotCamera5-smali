.class public final Landroidx/window/layout/adapter/sidecar/SidecarAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final verificationMode:Landroidx/window/core/VerificationMode;


# direct methods
.method public constructor <init>()V
    .locals 1

    sget-object v0, Landroidx/window/core/VerificationMode;->QUIET:Landroidx/window/core/VerificationMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->verificationMode:Landroidx/window/core/VerificationMode;

    return-void
.end method

.method public static isEqualSidecarDisplayFeature(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z
    .locals 2

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v0

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result v1

    if-eq v0, v1, :cond_3

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_3
    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static isEqualSidecarDisplayFeatures(Ljava/util/List;Ljava/util/List;)Z
    .locals 5

    if-ne p0, p1, :cond_0

    goto :goto_2

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    move v1, v2

    :goto_0
    if-ge v1, v0, :cond_3

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/window/sidecar/SidecarDisplayFeature;

    invoke-static {v3, v4}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->isEqualSidecarDisplayFeature(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDisplayFeature;)Z

    move-result v3

    if-nez v3, :cond_2

    :goto_1
    return v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public final translate(Landroidx/window/sidecar/SidecarWindowLayoutInfo;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/WindowLayoutInfo;
    .locals 1

    if-nez p1, :cond_0

    .line 1
    new-instance p0, Landroidx/window/layout/WindowLayoutInfo;

    sget-object p1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    invoke-direct {p0, p1}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Landroidx/window/sidecar/SidecarDeviceState;

    invoke-direct {v0}, Landroidx/window/sidecar/SidecarDeviceState;-><init>()V

    .line 3
    invoke-static {p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p2

    .line 4
    invoke-static {v0, p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->setSidecarDevicePosture(Landroidx/window/sidecar/SidecarDeviceState;I)V

    .line 5
    invoke-static {p1}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->getSidecarDisplayFeatures(Landroidx/window/sidecar/SidecarWindowLayoutInfo;)Ljava/util/List;

    move-result-object p1

    .line 6
    invoke-virtual {p0, p1, v0}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->translate(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/ArrayList;

    move-result-object p0

    .line 7
    new-instance p1, Landroidx/window/layout/WindowLayoutInfo;

    invoke-direct {p1, p0}, Landroidx/window/layout/WindowLayoutInfo;-><init>(Ljava/util/List;)V

    return-object p1
.end method

.method public final translate(Ljava/util/List;Landroidx/window/sidecar/SidecarDeviceState;)Ljava/util/ArrayList;
    .locals 2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 10
    check-cast v1, Landroidx/window/sidecar/SidecarDisplayFeature;

    .line 11
    invoke-virtual {p0, v1, p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->translate$window_release(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/HardwareFoldingFeature;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public final translate$window_release(Landroidx/window/sidecar/SidecarDisplayFeature;Landroidx/window/sidecar/SidecarDeviceState;)Landroidx/window/layout/HardwareFoldingFeature;
    .locals 3

    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->FLAT:Landroidx/window/layout/FoldingFeature$State;

    const-string v1, "feature"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v1, "verificationMode"

    iget-object p0, p0, Landroidx/window/layout/adapter/sidecar/SidecarAdapter;->verificationMode:Landroidx/window/core/VerificationMode;

    invoke-static {p0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroidx/window/core/ValidSpecification;

    sget-object v2, Landroidx/window/core/AndroidLogger;->INSTANCE:Landroidx/window/core/AndroidLogger;

    invoke-direct {v1, p1, p0, v2}, Landroidx/window/core/ValidSpecification;-><init>(Ljava/lang/Object;Landroidx/window/core/VerificationMode;Landroidx/window/core/AndroidLogger;)V

    const-string p0, "Type must be either TYPE_FOLD or TYPE_HINGE"

    sget-object v2, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;->INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$1;

    invoke-virtual {v1, p0, v2}, Landroidx/window/core/ValidSpecification;->require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;

    move-result-object p0

    const-string v1, "Feature bounds must not be 0"

    sget-object v2, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$2;->INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$2;

    invoke-virtual {p0, v1, v2}, Landroidx/window/core/SpecificationComputer;->require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;

    move-result-object p0

    const-string v1, "TYPE_FOLD must have 0 area"

    sget-object v2, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$3;->INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$3;

    invoke-virtual {p0, v1, v2}, Landroidx/window/core/SpecificationComputer;->require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;

    move-result-object p0

    const-string v1, "Feature be pinned to either left or top"

    sget-object v2, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$4;->INSTANCE:Landroidx/window/layout/adapter/sidecar/SidecarAdapter$translate$checkedFeature$4;

    invoke-virtual {p0, v1, v2}, Landroidx/window/core/SpecificationComputer;->require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/window/core/SpecificationComputer;->compute()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/window/sidecar/SidecarDisplayFeature;

    if-nez p0, :cond_0

    goto :goto_2

    :cond_0
    invoke-virtual {p0}, Landroidx/window/sidecar/SidecarDisplayFeature;->getType()I

    move-result p0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eq p0, v2, :cond_2

    if-eq p0, v1, :cond_1

    goto :goto_2

    :cond_1
    sget-object p0, Landroidx/window/layout/FoldingFeature$State;->HINGE:Landroidx/window/layout/FoldingFeature$State;

    goto :goto_0

    :cond_2
    sget-object p0, Landroidx/window/layout/FoldingFeature$State;->FOLD:Landroidx/window/layout/FoldingFeature$State;

    :goto_0
    invoke-static {p2}, Landroidx/window/layout/adapter/sidecar/SidecarAdapter$Companion;->getSidecarDevicePosture$window_release(Landroidx/window/sidecar/SidecarDeviceState;)I

    move-result p2

    if-eqz p2, :cond_5

    if-eq p2, v2, :cond_5

    if-eq p2, v1, :cond_3

    const/4 v1, 0x3

    if-eq p2, v1, :cond_4

    const/4 v1, 0x4

    if-eq p2, v1, :cond_5

    goto :goto_1

    :cond_3
    sget-object v0, Landroidx/window/layout/FoldingFeature$State;->HALF_OPENED:Landroidx/window/layout/FoldingFeature$State;

    :cond_4
    :goto_1
    new-instance p2, Landroidx/window/layout/HardwareFoldingFeature;

    new-instance v1, Landroidx/window/core/Bounds;

    invoke-virtual {p1}, Landroidx/window/sidecar/SidecarDisplayFeature;->getRect()Landroid/graphics/Rect;

    move-result-object p1

    const-string v2, "getRect(...)"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, p1}, Landroidx/window/core/Bounds;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p2, v1, p0, v0}, Landroidx/window/layout/HardwareFoldingFeature;-><init>(Landroidx/window/core/Bounds;Landroidx/window/layout/FoldingFeature$State;Landroidx/window/layout/FoldingFeature$State;)V

    return-object p2

    :cond_5
    :goto_2
    const/4 p0, 0x0

    return-object p0
.end method
