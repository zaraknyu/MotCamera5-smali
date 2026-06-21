.class public final Landroidx/work/WorkInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final constraints:Landroidx/work/Constraints;

.field public final generation:I

.field public final id:Ljava/util/UUID;

.field public final initialDelayMillis:J

.field public final nextScheduleTimeMillis:J

.field public final outputData:Landroidx/work/Data;

.field public final periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

.field public final progress:Landroidx/work/Data;

.field public final runAttemptCount:I

.field public final state:Landroidx/work/WorkInfo$State;

.field public final stopReason:I

.field public final tags:Ljava/util/HashSet;


# direct methods
.method public constructor <init>(Ljava/util/UUID;Landroidx/work/WorkInfo$State;Ljava/util/HashSet;Landroidx/work/Data;Landroidx/work/Data;IILandroidx/work/Constraints;JLandroidx/work/WorkInfo$PeriodicityInfo;JI)V
    .locals 1

    const-string/jumbo v0, "state"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "outputData"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "progress"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {p8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/work/WorkInfo;->id:Ljava/util/UUID;

    iput-object p2, p0, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    iput-object p3, p0, Landroidx/work/WorkInfo;->tags:Ljava/util/HashSet;

    iput-object p4, p0, Landroidx/work/WorkInfo;->outputData:Landroidx/work/Data;

    iput-object p5, p0, Landroidx/work/WorkInfo;->progress:Landroidx/work/Data;

    iput p6, p0, Landroidx/work/WorkInfo;->runAttemptCount:I

    iput p7, p0, Landroidx/work/WorkInfo;->generation:I

    iput-object p8, p0, Landroidx/work/WorkInfo;->constraints:Landroidx/work/Constraints;

    iput-wide p9, p0, Landroidx/work/WorkInfo;->initialDelayMillis:J

    iput-object p11, p0, Landroidx/work/WorkInfo;->periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

    iput-wide p12, p0, Landroidx/work/WorkInfo;->nextScheduleTimeMillis:J

    iput p14, p0, Landroidx/work/WorkInfo;->stopReason:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    if-eqz p1, :cond_d

    const-class v0, Landroidx/work/WorkInfo;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/work/WorkInfo;

    iget v0, p0, Landroidx/work/WorkInfo;->runAttemptCount:I

    iget v1, p1, Landroidx/work/WorkInfo;->runAttemptCount:I

    if-eq v0, v1, :cond_2

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Landroidx/work/WorkInfo;->generation:I

    iget v1, p1, Landroidx/work/WorkInfo;->generation:I

    if-eq v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/work/WorkInfo;->id:Ljava/util/UUID;

    iget-object v1, p1, Landroidx/work/WorkInfo;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    iget-object v1, p1, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    if-eq v0, v1, :cond_5

    goto :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/work/WorkInfo;->outputData:Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/WorkInfo;->outputData:Landroidx/work/Data;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/work/WorkInfo;->constraints:Landroidx/work/Constraints;

    iget-object v1, p1, Landroidx/work/WorkInfo;->constraints:Landroidx/work/Constraints;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    iget-wide v0, p0, Landroidx/work/WorkInfo;->initialDelayMillis:J

    iget-wide v2, p1, Landroidx/work/WorkInfo;->initialDelayMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    goto :goto_0

    :cond_8
    iget-object v0, p0, Landroidx/work/WorkInfo;->periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

    iget-object v1, p1, Landroidx/work/WorkInfo;->periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    iget-wide v0, p0, Landroidx/work/WorkInfo;->nextScheduleTimeMillis:J

    iget-wide v2, p1, Landroidx/work/WorkInfo;->nextScheduleTimeMillis:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto :goto_0

    :cond_a
    iget v0, p0, Landroidx/work/WorkInfo;->stopReason:I

    iget v1, p1, Landroidx/work/WorkInfo;->stopReason:I

    if-eq v0, v1, :cond_b

    goto :goto_0

    :cond_b
    iget-object v0, p0, Landroidx/work/WorkInfo;->tags:Ljava/util/HashSet;

    iget-object v1, p1, Landroidx/work/WorkInfo;->tags:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    iget-object p0, p0, Landroidx/work/WorkInfo;->progress:Landroidx/work/Data;

    iget-object p1, p1, Landroidx/work/WorkInfo;->progress:Landroidx/work/Data;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_d
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/work/WorkInfo;->id:Ljava/util/UUID;

    invoke-virtual {v0}, Ljava/util/UUID;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/work/WorkInfo;->outputData:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/WorkInfo;->tags:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/work/WorkInfo;->progress:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/work/WorkInfo;->runAttemptCount:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget v2, p0, Landroidx/work/WorkInfo;->generation:I

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/WorkInfo;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v2}, Landroidx/work/Constraints;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/work/WorkInfo;->initialDelayMillis:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object v2, p0, Landroidx/work/WorkInfo;->periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroidx/work/WorkInfo$PeriodicityInfo;->hashCode()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/work/WorkInfo;->nextScheduleTimeMillis:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget p0, p0, Landroidx/work/WorkInfo;->stopReason:I

    invoke-static {p0}, Ljava/lang/Integer;->hashCode(I)I

    move-result p0

    add-int/2addr p0, v0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "WorkInfo{id=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Landroidx/work/WorkInfo;->id:Ljava/util/UUID;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", outputData="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->outputData:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", tags="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->tags:Ljava/util/HashSet;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", progress="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->progress:Landroidx/work/Data;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", runAttemptCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/WorkInfo;->runAttemptCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", generation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/work/WorkInfo;->generation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", constraints="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", initialDelayMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/WorkInfo;->initialDelayMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", periodicityInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/WorkInfo;->periodicityInfo:Landroidx/work/WorkInfo$PeriodicityInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", nextScheduleTimeMillis="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/work/WorkInfo;->nextScheduleTimeMillis:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "}, stopReason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/work/WorkInfo;->stopReason:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
