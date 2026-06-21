.class public final Landroidx/compose/material/ripple/RippleContainer;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# instance fields
.field public final MaxRippleHosts:I

.field public nextHostIndex:I

.field public final rippleHostMap:Lcom/motorola/camera/CameraKpi;

.field public final rippleHosts:Ljava/util/ArrayList;

.field public final unusedRippleHosts:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x5

    iput v0, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/ArrayList;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/ArrayList;

    new-instance v2, Lcom/motorola/camera/CameraKpi;

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Lcom/motorola/camera/CameraKpi;-><init>(I)V

    iput-object v2, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Lcom/motorola/camera/CameraKpi;

    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    new-instance v2, Landroidx/compose/material/ripple/RippleHostView;

    invoke-direct {v2, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 p1, 0x1

    iput p1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    const p1, 0x7f0a0238

    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {p0, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final getRippleHostView(Landroidx/compose/material/ripple/RippleHostKey;)Landroidx/compose/material/ripple/RippleHostView;
    .locals 6

    iget-object v0, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHostMap:Lcom/motorola/camera/CameraKpi;

    iget-object v1, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v1, Ljava/util/LinkedHashMap;

    iget-object v2, v0, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Ljava/util/LinkedHashMap;

    iget-object v0, v0, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast v0, Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v1, :cond_0

    return-object v1

    :cond_0
    const-string v1, "<this>"

    iget-object v3, p0, Landroidx/compose/material/ripple/RippleContainer;->unusedRippleHosts:Ljava/util/ArrayList;

    invoke-static {v3, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    check-cast v1, Landroidx/compose/material/ripple/RippleHostView;

    if-nez v1, :cond_6

    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    iget-object v3, p0, Landroidx/compose/material/ripple/RippleContainer;->rippleHosts:Ljava/util/ArrayList;

    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->getLastIndex(Ljava/util/List;)I

    move-result v5

    if-le v1, v5, :cond_2

    new-instance v1, Landroidx/compose/material/ripple/RippleHostView;

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v1, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget v1, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/compose/material/ripple/RippleHostView;

    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/compose/material/ripple/RippleHostKey;

    if-eqz v3, :cond_4

    invoke-interface {v3}, Landroidx/compose/material/ripple/RippleHostKey;->onResetRippleHostView()V

    invoke-virtual {v2, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material/ripple/RippleHostView;

    if-eqz v5, :cond_3

    invoke-interface {v0, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/compose/material/ripple/RippleHostKey;

    :cond_3
    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {v1}, Landroidx/compose/material/ripple/RippleHostView;->disposeRipple()V

    :cond_4
    :goto_1
    iget v3, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    iget v5, p0, Landroidx/compose/material/ripple/RippleContainer;->MaxRippleHosts:I

    add-int/lit8 v5, v5, -0x1

    if-ge v3, v5, :cond_5

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    goto :goto_2

    :cond_5
    iput v4, p0, Landroidx/compose/material/ripple/RippleContainer;->nextHostIndex:I

    :cond_6
    :goto_2
    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v1
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    return-void
.end method

.method public final onMeasure(II)V
    .locals 0

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public final requestLayout()V
    .locals 0

    return-void
.end method
