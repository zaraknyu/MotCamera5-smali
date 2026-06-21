.class public final Landroidx/compose/ui/window/DialogLayout$1;
.super Landroidx/media3/decoder/Buffer;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroid/view/ViewGroup;


# direct methods
.method public synthetic constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    iput-object p1, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    const/4 p1, 0x1

    const/4 p2, 0x1

    invoke-direct {p0, p1, p2}, Landroidx/media3/decoder/Buffer;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final onProgress(Landroidx/core/view/WindowInsetsCompat;Ljava/util/List;)Landroidx/core/view/WindowInsetsCompat;
    .locals 5

    iget p2, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    invoke-virtual {p0, p1}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->insetToLayoutPosition(Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    iget-boolean p2, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v2

    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-static {p2, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    sub-int/2addr p0, v0

    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez v1, :cond_1

    if-nez v2, :cond_1

    if-nez v3, :cond_1

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    iget-object p1, p1, Landroidx/core/view/WindowInsetsCompat;->mImpl:Landroidx/core/view/WindowInsetsCompat$Impl;

    invoke-virtual {p1, v1, v2, v3, p0}, Landroidx/core/view/WindowInsetsCompat$Impl;->inset(IIII)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p1

    :goto_0
    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final onStart(Lcom/motorola/camera/CameraKpi;)Lcom/motorola/camera/CameraKpi;
    .locals 13

    iget v0, p0, Landroidx/compose/ui/window/DialogLayout$1;->$r8$classId:I

    packed-switch v0, :pswitch_data_0

    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/compose/ui/viewinterop/ViewFactoryHolder;

    iget-object p0, p0, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->innerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/InnerNodeCoordinator;

    iget-object v0, p0, Landroidx/compose/ui/node/InnerNodeCoordinator;->tail:Landroidx/compose/ui/node/TailModifierNode;

    iget-boolean v0, v0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v3, v0, v2

    long-to-int v3, v3

    const/4 v4, 0x0

    if-gez v3, :cond_1

    move v3, v4

    :cond_1
    const-wide v5, 0xffffffffL

    and-long/2addr v0, v5

    long-to-int v0, v0

    if-gez v0, :cond_2

    move v0, v4

    :cond_2
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

    if-gez v1, :cond_3

    move v1, v4

    :cond_3
    and-long/2addr v5, v8

    long-to-int p0, v5

    sub-int/2addr v7, p0

    if-gez v7, :cond_4

    goto :goto_0

    :cond_4
    move v4, v7

    :goto_0
    if-nez v3, :cond_5

    if-nez v0, :cond_5

    if-nez v1, :cond_5

    if-nez v4, :cond_5

    goto :goto_1

    :cond_5
    new-instance p0, Lcom/motorola/camera/CameraKpi;

    iget-object v2, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Landroidx/core/graphics/Insets;

    invoke-static {v2, v3, v0, v1, v4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/core/graphics/Insets;

    invoke-static {p1, v3, v0, v1, v4}, Landroidx/compose/ui/viewinterop/AndroidViewHolder;->inset(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object p1

    const/4 v0, 0x7

    const/4 v1, 0x0

    invoke-direct {p0, v2, p1, v0, v1}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object p1, p0

    :goto_1
    return-object p1

    :pswitch_0
    iget-object p0, p0, Landroidx/compose/ui/window/DialogLayout$1;->this$0:Landroid/view/ViewGroup;

    check-cast p0, Landroidx/compose/ui/window/DialogLayout;

    iget-boolean v0, p0, Landroidx/compose/ui/window/DialogLayout;->decorFitsSystemWindows:Z

    if-eqz v0, :cond_6

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result p0

    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v1

    sub-int/2addr p0, v1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    if-nez v2, :cond_7

    if-nez v3, :cond_7

    if-nez v4, :cond_7

    if-nez p0, :cond_7

    goto :goto_2

    :cond_7
    invoke-static {v2, v3, v4, p0}, Landroidx/core/graphics/Insets;->of(IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    iget v0, p0, Landroidx/core/graphics/Insets;->left:I

    new-instance v1, Lcom/motorola/camera/CameraKpi;

    iget-object v2, p1, Lcom/motorola/camera/CameraKpi;->mCameraKpis:Ljava/lang/Object;

    check-cast v2, Landroidx/core/graphics/Insets;

    iget v3, p0, Landroidx/core/graphics/Insets;->top:I

    iget v4, p0, Landroidx/core/graphics/Insets;->right:I

    iget p0, p0, Landroidx/core/graphics/Insets;->bottom:I

    invoke-static {v2, v0, v3, v4, p0}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object v2

    iget-object p1, p1, Lcom/motorola/camera/CameraKpi;->mListener:Ljava/lang/Object;

    check-cast p1, Landroidx/core/graphics/Insets;

    invoke-static {p1, v0, v3, v4, p0}, Landroidx/core/view/WindowInsetsCompat;->insetInsets(Landroidx/core/graphics/Insets;IIII)Landroidx/core/graphics/Insets;

    move-result-object p0

    const/4 p1, 0x7

    const/4 v0, 0x0

    invoke-direct {v1, v2, p0, p1, v0}, Lcom/motorola/camera/CameraKpi;-><init>(Ljava/lang/Object;Ljava/lang/Object;IZ)V

    move-object p1, v1

    :goto_2
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
