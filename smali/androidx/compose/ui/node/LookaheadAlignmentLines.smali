.class public final Landroidx/compose/ui/node/LookaheadAlignmentLines;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final synthetic $r8$classId:I

.field public final alignmentLineMap:Ljava/util/HashMap;

.field public final alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

.field public dirty:Z

.field public previousUsedDuringParentLayout:Z

.field public queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

.field public usedByModifierLayout:Z

.field public usedByModifierMeasurement:Z


# direct methods
.method public constructor <init>(Landroidx/compose/ui/node/AlignmentLinesOwner;I)V
    .locals 0

    iput p2, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    check-cast p1, Landroidx/compose/ui/layout/Placeable;

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    return-void
.end method

.method public static final access$addAlignmentLine(Landroidx/compose/ui/node/LookaheadAlignmentLines;Landroidx/compose/ui/layout/HorizontalAlignmentLine;ILandroidx/compose/ui/node/NodeCoordinator;)V
    .locals 9

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    int-to-float p2, p2

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v1, v1

    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result p2

    int-to-long v3, p2

    const/16 p2, 0x20

    shl-long/2addr v1, p2

    const-wide v5, 0xffffffffL

    and-long/2addr v3, v5

    :goto_0
    or-long/2addr v1, v3

    :cond_0
    iget v3, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->$r8$classId:I

    packed-switch v3, :pswitch_data_0

    iget-object v3, p3, Landroidx/compose/ui/node/NodeCoordinator;->layer:Landroidx/compose/ui/node/OwnedLayer;

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    invoke-interface {v3, v1, v2, v4}, Landroidx/compose/ui/node/OwnedLayer;->mapOffset-8S9VItk(JZ)J

    move-result-wide v1

    :cond_1
    iget-wide v3, p3, Landroidx/compose/ui/node/NodeCoordinator;->position:J

    invoke-static {v1, v2, v3, v4}, Landroidx/compose/ui/unit/IntOffsetKt;->plus-Nv-tHpc(JJ)J

    move-result-wide v1

    goto :goto_1

    :pswitch_0
    invoke-virtual {p3}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object v3

    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-wide v3, v3, Landroidx/compose/ui/node/LookaheadDelegate;->position:J

    shr-long v7, v3, p2

    long-to-int v7, v7

    int-to-float v7, v7

    and-long/2addr v3, v5

    long-to-int v3, v3

    int-to-float v3, v3

    invoke-static {v7}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v4

    int-to-long v7, v4

    invoke-static {v3}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v3

    int-to-long v3, v3

    shl-long/2addr v7, p2

    and-long/2addr v3, v5

    or-long/2addr v3, v7

    invoke-static {v3, v4, v1, v2}, Landroidx/compose/ui/geometry/Offset;->plus-MK-Hz9U(JJ)J

    move-result-wide v1

    :goto_1
    iget-object p3, p3, Landroidx/compose/ui/node/NodeCoordinator;->wrappedBy:Landroidx/compose/ui/node/NodeCoordinator;

    invoke-static {p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iget-object v3, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v3}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0, p3}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {p0, p3, p1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result v1

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v1

    int-to-long v7, v1

    shl-long v1, v2, p2

    and-long v3, v7, v5

    goto :goto_0

    :cond_2
    instance-of p0, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    if-eqz p0, :cond_3

    and-long p2, v1, v5

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    goto :goto_2

    :cond_3
    shr-long p2, v1, p2

    long-to-int p0, p2

    invoke-static {p0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p0

    :goto_2
    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {p1, v0}, Lkotlin/collections/MapsKt;->getValue(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    sget-object p3, Landroidx/compose/ui/layout/AlignmentLineKt;->FirstBaseline:Landroidx/compose/ui/layout/HorizontalAlignmentLine;

    iget-object p3, p1, Landroidx/compose/ui/layout/HorizontalAlignmentLine;->merger:Lkotlin/jvm/internal/FunctionReferenceImpl;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {p3, p2, p0}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Number;

    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    move-result p0

    :cond_4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadDelegate;->getMeasureResult$ui_release()Landroidx/compose/ui/layout/MeasureResult;

    move-result-object p0

    invoke-interface {p0}, Landroidx/compose/ui/layout/MeasureResult;->getAlignmentLines()Ljava/util/Map;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getPositionFor(Landroidx/compose/ui/node/NodeCoordinator;Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I
    .locals 0

    iget p0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    invoke-virtual {p1, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->get(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p1}, Landroidx/compose/ui/node/NodeCoordinator;->getLookaheadDelegate()Landroidx/compose/ui/node/LookaheadDelegate;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0, p2}, Landroidx/compose/ui/node/LookaheadCapablePlaceable;->get(Landroidx/compose/ui/layout/HorizontalAlignmentLine;)I

    move-result p0

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public final getQueried$ui_release()Z
    .locals 1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final getRequired$ui_release()Z
    .locals 0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculateQueryOwner()V

    iget-object p0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final onAlignmentsChanged()V
    .locals 3

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v1

    if-nez v1, :cond_0

    return-void

    :cond_0
    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->previousUsedDuringParentLayout:Z

    if-nez v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    :goto_0
    iget-boolean v2, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierMeasurement:Z

    if-eqz v2, :cond_2

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestMeasure()V

    :cond_2
    iget-boolean p0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->usedByModifierLayout:Z

    if-eqz p0, :cond_3

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->requestLayout()V

    :cond_3
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->onAlignmentsChanged()V

    return-void
.end method

.method public final recalculate()V
    .locals 3

    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLineMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    new-instance v1, Landroidx/compose/runtime/Recomposer$effectJob$1$1;

    const/16 v2, 0x1d

    invoke-direct {v1, v2, p0}, Landroidx/compose/runtime/Recomposer$effectJob$1$1;-><init>(ILjava/lang/Object;)V

    iget-object v2, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    invoke-interface {v2, v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->forEachChildAlignmentLinesOwner(Landroidx/compose/runtime/Recomposer$effectJob$1$1;)V

    invoke-interface {v2}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getInnerCoordinator()Landroidx/compose/ui/node/InnerNodeCoordinator;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getAlignmentLinesMap(Landroidx/compose/ui/node/NodeCoordinator;)Ljava/util/Map;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->dirty:Z

    return-void
.end method

.method public final recalculateQueryOwner()V
    .locals 2

    invoke-virtual {p0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getQueried$ui_release()Z

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->alignmentLinesOwner:Landroidx/compose/ui/layout/Placeable;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v0

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getQueried$ui_release()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    if-eqz v0, :cond_6

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->getQueried$ui_release()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v1}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroidx/compose/ui/node/LookaheadAlignmentLines;->recalculateQueryOwner()V

    :cond_4
    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getParentAlignmentLinesOwner()Landroidx/compose/ui/node/AlignmentLinesOwner;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroidx/compose/ui/node/AlignmentLinesOwner;->getAlignmentLines()Landroidx/compose/ui/node/LookaheadAlignmentLines;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v1, v0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    goto :goto_0

    :cond_5
    const/4 v1, 0x0

    :goto_0
    iput-object v1, p0, Landroidx/compose/ui/node/LookaheadAlignmentLines;->queryOwner:Landroidx/compose/ui/node/AlignmentLinesOwner;

    :cond_6
    :goto_1
    return-void
.end method
