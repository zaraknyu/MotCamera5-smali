.class public abstract Landroidx/compose/ui/layout/Placeable$PlacementScope;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public motionFrameOfReferencePlacement:Z


# direct methods
.method public static final access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V
    .locals 1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    instance-of v0, p1, Landroidx/compose/ui/node/MotionReferencePlacementDelegate;

    if-eqz v0, :cond_0

    check-cast p1, Landroidx/compose/ui/node/MotionReferencePlacementDelegate;

    iget-boolean p0, p0, Landroidx/compose/ui/layout/Placeable$PlacementScope;->motionFrameOfReferencePlacement:Z

    invoke-interface {p1, p0}, Landroidx/compose/ui/node/MotionReferencePlacementDelegate;->updatePlacedUnderMotionFrameOfReference(Z)V

    :cond_0
    return-void
.end method

.method public static place$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p2, p3

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    or-long/2addr p2, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v0, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, v0, p0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static place-70tqf50$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v0, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    const/4 p0, 0x0

    const/4 v0, 0x0

    invoke-virtual {p1, p2, p3, p0, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static placeRelative$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 9

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long v2, p3

    const-wide v4, 0xffffffffL

    and-long/2addr v2, v4

    or-long/2addr v0, v2

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p3

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v3, 0x0

    const/4 v6, 0x0

    if-eq p3, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result p3

    iget v2, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr p3, v2

    shr-long v7, v0, p2

    long-to-int v2, v7

    sub-int/2addr p3, v2

    and-long/2addr v0, v4

    long-to-int v0, v0

    int-to-long v1, p3

    shl-long p2, v1, p2

    int-to-long v0, v0

    and-long/2addr v0, v4

    or-long/2addr p2, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v0, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v3, v6}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide p2, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v0, v1, p2, p3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v3, v6}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static placeRelativeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;II)V
    .locals 9

    sget v0, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    sget-object v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    int-to-long v1, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    int-to-long v3, p3

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    or-long/2addr v1, v3

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object p3

    sget-object v3, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v4, 0x0

    if-eq p3, v3, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result p3

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result p3

    iget v3, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr p3, v3

    shr-long v7, v1, p2

    long-to-int v3, v7

    sub-int/2addr p3, v3

    and-long/2addr v1, v5

    long-to-int v1, v1

    int-to-long v2, p3

    shl-long p2, v2, p2

    int-to-long v1, v1

    and-long/2addr v1, v5

    or-long/2addr p2, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v1, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v4, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide p2, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {v1, v2, p2, p3}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v4, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static placeRelativeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 8

    sget v0, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    sget-object v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;

    move-result-object v1

    sget-object v2, Landroidx/compose/ui/unit/LayoutDirection;->Ltr:Landroidx/compose/ui/unit/LayoutDirection;

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->getParentWidth()I

    move-result v1

    iget v2, p1, Landroidx/compose/ui/layout/Placeable;->width:I

    sub-int/2addr v1, v2

    const/16 v2, 0x20

    shr-long v4, p2, v2

    long-to-int v4, v4

    sub-int/2addr v1, v4

    const-wide v4, 0xffffffffL

    and-long/2addr p2, v4

    long-to-int p2, p2

    int-to-long v6, v1

    shl-long v1, v6, v2

    int-to-long p2, p2

    and-long/2addr p2, v4

    or-long/2addr p2, v1

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v1, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v3, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void

    :cond_1
    :goto_0
    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v1, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    invoke-virtual {p1, p2, p3, v3, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static placeWithLayer$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;IILkotlin/jvm/functions/Function1;I)V
    .locals 4

    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_0

    sget p4, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    sget-object p4, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    int-to-long v0, p2

    const/16 p2, 0x20

    shl-long/2addr v0, p2

    int-to-long p2, p3

    const-wide v2, 0xffffffffL

    and-long/2addr p2, v2

    or-long/2addr p2, v0

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v0, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v0, v1}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, p4}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method

.method public static placeWithLayer-aW-9-wM$default(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;J)V
    .locals 3

    sget v0, Landroidx/compose/ui/layout/PlaceableKt;->$r8$clinit:I

    sget-object v0, Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;->INSTANCE$1:Landroidx/compose/ui/layout/RootMeasurePolicy$measure$1;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-static {p0, p1}, Landroidx/compose/ui/layout/Placeable$PlacementScope;->access$handleMotionFrameOfReferencePlacement(Landroidx/compose/ui/layout/Placeable$PlacementScope;Landroidx/compose/ui/layout/Placeable;)V

    iget-wide v1, p1, Landroidx/compose/ui/layout/Placeable;->apparentToRealOffset:J

    invoke-static {p2, p3, v1, v2}, Landroidx/compose/ui/unit/IntOffset;->plus-qkQi6aY(JJ)J

    move-result-wide p2

    const/4 p0, 0x0

    invoke-virtual {p1, p2, p3, p0, v0}, Landroidx/compose/ui/layout/Placeable;->placeAt-f8xVGno(JFLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public abstract getParentLayoutDirection()Landroidx/compose/ui/unit/LayoutDirection;
.end method

.method public abstract getParentWidth()I
.end method
