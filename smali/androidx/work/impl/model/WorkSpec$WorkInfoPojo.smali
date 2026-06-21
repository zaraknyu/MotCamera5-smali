.class public final Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final backoffDelayDuration:J

.field public final backoffPolicy:I

.field public final constraints:Landroidx/work/Constraints;

.field public final flexDuration:J

.field public final generation:I

.field public final id:Ljava/lang/String;

.field public final initialDelay:J

.field public final intervalDuration:J

.field public final lastEnqueueTime:J

.field public final nextScheduleTimeOverride:J

.field public final output:Landroidx/work/Data;

.field public final periodCount:I

.field public final progress:Ljava/util/List;

.field public final runAttemptCount:I

.field public final state:Landroidx/work/WorkInfo$State;

.field public final stopReason:I

.field public final tags:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJIIJILjava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 4

    move/from16 v0, p12

    move-object/from16 v1, p22

    move-object/from16 v2, p23

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "state"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backoffPolicy"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string/jumbo v3, "tags"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "progress"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    iput-object p2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    iput-object p3, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    iput-wide p4, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    iput-wide p6, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    iput-wide p8, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    iput-object p10, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    iput p11, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iput v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    move-wide/from16 p1, p13

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    move-wide/from16 p1, p15

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    move/from16 p1, p17

    iput p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    move/from16 p1, p18

    iput p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    move-wide/from16 p1, p19

    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    move/from16 p1, p21

    iput p1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    iput-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iput-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0, v1}, Landroidx/work/Constraints;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    if-eq v0, v1, :cond_9

    goto :goto_0

    :cond_9
    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    if-eq v0, v1, :cond_a

    goto :goto_0

    :cond_a
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    goto :goto_0

    :cond_b
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_c

    goto :goto_0

    :cond_c
    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    if-eq v0, v1, :cond_d

    goto :goto_0

    :cond_d
    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    if-eq v0, v1, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    if-eq v0, v1, :cond_10

    goto :goto_0

    :cond_10
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_12
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v2}, Landroidx/work/Constraints;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    invoke-static {v2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr p0, v2

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkInfoPojo(id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", output="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->output:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelay="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->initialDelay:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", intervalDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->intervalDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", flexDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->flexDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->runAttemptCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", backoffPolicy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x1

    iget v2, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffPolicy:I

    if-eq v2, v1, :cond_1

    const/4 v1, 0x2

    if-eq v2, v1, :cond_0

    const-string v1, "null"

    goto :goto_0

    :cond_0
    const-string v1, "LINEAR"

    goto :goto_0

    :cond_1
    const-string v1, "EXPONENTIAL"

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", backoffDelayDuration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->backoffDelayDuration:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", lastEnqueueTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->lastEnqueueTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->periodCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeOverride="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->nextScheduleTimeOverride:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->stopReason:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->tags:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec$WorkInfoPojo;->progress:Ljava/util/List;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
