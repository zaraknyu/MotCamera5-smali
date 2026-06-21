.class public final Landroidx/compose/ui/input/pointer/util/VelocityTracker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public lastMoveEventTimeStamp:J

.field public final xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

.field public final yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;->Lsq2:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D$Strategy;

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    new-instance v0, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-direct {v0}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;-><init>()V

    iput-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    return-void
.end method


# virtual methods
.method public final addPosition-Uv8p0NA(JJ)V
    .locals 2

    const/16 v0, 0x20

    shr-long v0, p3, v0

    long-to-int v0, v0

    invoke-static {v0}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v0

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-virtual {v1, v0, p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    const-wide v0, 0xffffffffL

    and-long/2addr p3, v0

    long-to-int p3, p3

    invoke-static {p3}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result p3

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-virtual {p0, p3, p1, p2}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->addDataPoint(FJ)V

    return-void
.end method

.method public final calculateVelocity-AH228Gc(J)J
    .locals 2

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "maximumVelocity should be a positive value. You specified="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroidx/compose/ui/internal/InlineClassHelperKt;->throwIllegalStateException(Ljava/lang/String;)V

    :goto_0
    iget-object v0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->xVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getX-impl(J)F

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity(F)F

    move-result v0

    iget-object p0, p0, Landroidx/compose/ui/input/pointer/util/VelocityTracker;->yVelocityTracker:Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;

    invoke-static {p1, p2}, Landroidx/compose/ui/unit/Velocity;->getY-impl(J)F

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/compose/ui/input/pointer/util/VelocityTracker1D;->calculateVelocity(F)F

    move-result p0

    invoke-static {v0, p0}, Landroidx/compose/ui/unit/VelocityKt;->Velocity(FF)J

    move-result-wide p0

    return-wide p0
.end method
