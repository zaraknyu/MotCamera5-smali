.class public final Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/compose/ui/layout/LayoutCoordinates;


# instance fields
.field public final lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/LookaheadDelegate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    return-void
.end method


# virtual methods
.method public final getParentLayoutCoordinates()Landroidx/compose/ui/layout/LayoutCoordinates;
    .locals 1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->isAttached()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_0
    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->layoutNode:Landroidx/compose/ui/node/LayoutNode;

    iget-object p0, p0, Landroidx/compose/ui/node/LayoutNode;->nodes:Landroidx/compose/ui/node/NodeChain;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeChain;->outerCoordinator:Ljava/lang/Object;

    check-cast p0, Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    if-eqz p0, :cond_1

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->lookaheadLayoutCoordinates:Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public final getSize-YbymL2g()J
    .locals 6

    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget v0, p0, Landroidx/compose/ui/layout/Placeable;->width:I

    iget p0, p0, Landroidx/compose/ui/layout/Placeable;->height:I

    int-to-long v0, v0

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    int-to-long v2, p0

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    return-wide v0
.end method

.method public final isAttached()Z
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    return p0
.end method

.method public final localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;
    .locals 0

    iget-object p0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1, p2}, Landroidx/compose/ui/node/NodeCoordinator;->localBoundingBoxOf(Landroidx/compose/ui/layout/LayoutCoordinates;Z)Landroidx/compose/ui/geometry/Rect;

    move-result-object p0

    return-object p0
.end method

.method public final localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J
    .locals 9

    instance-of v0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    iget-object v1, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    const-wide v2, 0xffffffffL

    const/16 v4, 0x20

    if-eqz v0, :cond_1

    check-cast p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    iget-object p0, p1, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object p1, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    iget-object v0, v1, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {v0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->findCommonAncestor$ui_release(Landroidx/compose/ui/node/NodeCoordinator;)Landroidx/compose/ui/node/NodeCoordinator;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v5

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p2

    invoke-static {v5, v6, p2, p3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {v1, p1, v0}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide p0

    shr-long p2, p0, v4

    long-to-int p2, p2

    int-to-float p2, p2

    and-long/2addr p0, v2

    long-to-int p0, p0

    int-to-float p0, p0

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p1

    int-to-long p1, p1

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v0, p0

    shl-long p0, p1, v4

    and-long p2, v0, v2

    or-long/2addr p0, p2

    return-wide p0

    :cond_0
    invoke-static {p0}, Landroidx/compose/ui/layout/ScaleFactorKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p1

    invoke-virtual {p0, p1, v0}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v5

    iget-wide v7, p1, Landroidx/compose/ui/node/LookaheadDelegate;->position:J

    invoke-static {v5, v6, v7, v8}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v5

    invoke-static {p2, p3}, Landroidx/compose/ui/unit/IntOffsetKt;->round-k-4lQ0M(J)J

    move-result-wide p2

    invoke-static {v5, v6, p2, p3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-static {v1}, Landroidx/compose/ui/layout/ScaleFactorKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Landroidx/compose/ui/node/LookaheadDelegate;->positionIn-iSbpLlY$ui_release(Landroidx/compose/ui/node/LookaheadDelegate;Z)J

    move-result-wide v0

    iget-wide v5, p0, Landroidx/compose/ui/node/LookaheadDelegate;->position:J

    invoke-static {v0, v1, v5, v6}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide v0

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->minus-qkQi6aY(JJ)J

    move-result-wide p2

    shr-long v0, p2, v4

    long-to-int v0, v0

    int-to-float v0, v0

    and-long/2addr p2, v2

    long-to-int p2, p2

    int-to-float p2, p2

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p3

    int-to-long v0, p3

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long p2, p2

    shl-long/2addr v0, v4

    and-long/2addr p2, v2

    or-long/2addr p2, v0

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p0, p0, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object p1, p1, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p1, p1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p1, p2, p3}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    return-wide p0

    :cond_1
    invoke-static {v1}, Landroidx/compose/ui/layout/ScaleFactorKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v5, v0, Landroidx/compose/ui/node/LookaheadDelegate;->lookaheadLayoutCoordinates:Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    invoke-virtual {p0, v5, p2, p3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p2

    iget-wide v5, v0, Landroidx/compose/ui/node/LookaheadDelegate;->position:J

    shr-long v7, v5, v4

    long-to-int p0, v7

    int-to-float p0, p0

    and-long/2addr v5, v2

    long-to-int v0, v5

    int-to-float v0, v0

    invoke-static {p0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v5, p0

    invoke-static {v0}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p0

    int-to-long v7, p0

    shl-long v4, v5, v4

    and-long/2addr v2, v7

    or-long/2addr v2, v4

    invoke-static {p2, p3, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p2

    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->getTail()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    iget-boolean p0, p0, Landroidx/compose/ui/Modifier$Node;->isAttached:Z

    if-nez p0, :cond_2

    const-string p0, "LayoutCoordinate operations are only valid when isAttached is true"

    invoke-static {p0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :cond_2
    invoke-virtual {v1}, Landroidx/compose/ui/node/NodeCoordinator;->onCoordinatesUsed$ui_release()V

    iget-object p0, v1, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    move-object v1, p0

    :goto_0
    const-wide/16 v2, 0x0

    invoke-virtual {v1, p1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    invoke-static {p2, p3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    return-wide p0
.end method

.method public final localToRoot-MK-Hz9U(J)J
    .locals 6

    iget-object p1, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object p2, p1, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p1}, Landroidx/compose/ui/layout/ScaleFactorKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadDelegate;->lookaheadLayoutCoordinates:Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    const-wide/16 v2, 0x0

    invoke-virtual {p0, v1, v2, v3}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v4

    iget-object p0, p1, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object p1, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, p1, v2, v3}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide p0

    invoke-static {v4, v5, p0, p1}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-static {v2, v3, p0, p1}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {p2, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->localToRoot-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method

.method public final localToWindow-MK-Hz9U(J)J
    .locals 8

    iget-object v0, p0, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->lookaheadDelegate:Landroidx/compose/ui/node/LookaheadDelegate;

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {v0}, Landroidx/compose/ui/layout/ScaleFactorKt;->getRootLookaheadDelegate(Landroidx/compose/ui/node/LookaheadDelegate;)Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v2

    iget-object v3, v2, Landroidx/compose/ui/node/LookaheadDelegate;->lookaheadLayoutCoordinates:Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;

    const-wide/16 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Landroidx/compose/ui/layout/LookaheadLayoutCoordinates;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v6

    iget-object p0, v0, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    iget-object v0, v2, Landroidx/compose/ui/node/LookaheadDelegate;->coordinator:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-virtual {p0, v0, v4, v5}, Landroidx/compose/ui/node/NodeCoordinator;->localPositionOf-S_NoaFU(Landroidx/compose/ui/layout/LayoutCoordinates;J)J

    move-result-wide v2

    invoke-static {v6, v7, v2, v3}, Landroidx/compose/ui/geometry/Offset;->minus-MK-Hz9U(JJ)J

    move-result-wide v2

    invoke-static {p1, p2, v2, v3}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide p0

    invoke-virtual {v1, p0, p1}, Landroidx/compose/ui/node/NodeCoordinator;->localToWindow-MK-Hz9U(J)J

    move-result-wide p0

    return-wide p0
.end method
