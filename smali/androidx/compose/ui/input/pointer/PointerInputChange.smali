.class public final Landroidx/compose/ui/input/pointer/PointerInputChange;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final _historical:Ljava/util/ArrayList;

.field public consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

.field public downChange:Z

.field public final id:J

.field public final originalEventPosition:J

.field public final position:J

.field public positionChange:Z

.field public final pressed:Z

.field public final pressure:F

.field public final previousPosition:J

.field public final previousPressed:Z

.field public final previousUptimeMillis:J

.field public final scrollDelta:J

.field public final type:I

.field public final uptimeMillis:J


# direct methods
.method public constructor <init>(JJJZFJJZILjava/util/ArrayList;JJ)V
    .locals 18

    const/4 v14, 0x0

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move/from16 v7, p7

    move/from16 v8, p8

    move-wide/from16 v9, p9

    move-wide/from16 v11, p11

    move/from16 v13, p13

    move/from16 v15, p14

    move-wide/from16 v16, p16

    .line 15
    invoke-direct/range {v0 .. v17}, Landroidx/compose/ui/input/pointer/PointerInputChange;-><init>(JJJZFJJZZIJ)V

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/ArrayList;

    move-wide/from16 v1, p18

    .line 17
    iput-wide v1, v0, Landroidx/compose/ui/input/pointer/PointerInputChange;->originalEventPosition:J

    return-void
.end method

.method public constructor <init>(JJJZFJJZZIJ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    .line 3
    iput-wide p3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    .line 4
    iput-wide p5, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    .line 5
    iput-boolean p7, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    .line 6
    iput p8, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressure:F

    .line 7
    iput-wide p9, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    .line 8
    iput-wide p11, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    .line 9
    iput-boolean p13, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    move p1, p15

    .line 10
    iput p1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    move-wide/from16 p1, p16

    .line 11
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    const-wide/16 p1, 0x0

    .line 12
    iput-wide p1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->originalEventPosition:J

    .line 13
    iput-boolean p14, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->downChange:Z

    .line 14
    iput-boolean p14, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->positionChange:Z

    return-void
.end method


# virtual methods
.method public final consume()V
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->downChange:Z

    iput-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->positionChange:Z

    return-void

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->consume()V

    :cond_1
    return-void
.end method

.method public final isConsumed()Z
    .locals 1

    iget-object v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->consumedDelegate:Landroidx/compose/ui/input/pointer/PointerInputChange;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result p0

    return p0

    :cond_0
    iget-boolean v0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->downChange:Z

    if-nez v0, :cond_2

    iget-boolean p0, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->positionChange:Z

    if-eqz p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return p0

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "PointerInputChange(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PointerId(value="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v2, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->id:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", uptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->uptimeMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", position="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->position:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", pressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", pressure="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->pressure:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v1, ", previousUptimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousUptimeMillis:J

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", previousPosition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPosition:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", previousPressed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->previousPressed:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isConsumed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/compose/ui/input/pointer/PointerInputChange;->isConsumed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->type:I

    if-eq v3, v1, :cond_3

    const/4 v1, 0x2

    if-eq v3, v1, :cond_2

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const/4 v1, 0x4

    if-eq v3, v1, :cond_0

    const-string v1, "Unknown"

    goto :goto_0

    :cond_0
    const-string v1, "Eraser"

    goto :goto_0

    :cond_1
    const-string v1, "Stylus"

    goto :goto_0

    :cond_2
    const-string v1, "Mouse"

    goto :goto_0

    :cond_3
    const-string v1, "Touch"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", historical="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->_historical:Ljava/util/ArrayList;

    if-nez v1, :cond_4

    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    :cond_4
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ",scrollDelta="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Landroidx/compose/ui/input/pointer/PointerInputChange;->scrollDelta:J

    invoke-static {v3, v4}, Landroidx/compose/ui/geometry/Offset;->toString-impl(J)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
