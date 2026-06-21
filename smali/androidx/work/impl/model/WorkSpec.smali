.class public final Landroidx/work/impl/model/WorkSpec;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final WORK_INFO_MAPPER:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;


# instance fields
.field public backoffDelayDuration:J

.field public backoffPolicy:I

.field public constraints:Landroidx/work/Constraints;

.field public expedited:Z

.field public flexDuration:J

.field public final generation:I

.field public final id:Ljava/lang/String;

.field public initialDelay:J

.field public input:Landroidx/work/Data;

.field public inputMergerClassName:Ljava/lang/String;

.field public intervalDuration:J

.field public lastEnqueueTime:J

.field public minimumRetentionDuration:J

.field public nextScheduleTimeOverride:J

.field public nextScheduleTimeOverrideGeneration:I

.field public outOfQuotaPolicy:I

.field public output:Landroidx/work/Data;

.field public final periodCount:I

.field public runAttemptCount:I

.field public scheduleRequestedAt:J

.field public state:Landroidx/work/WorkInfo$State;

.field public final stopReason:I

.field public traceTag:Ljava/lang/String;

.field public final workerClassName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string v0, "WorkSpec"

    invoke-static {v0}, Landroidx/work/Logger$LogcatLogger;->tagWithPrefix(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "tagWithPrefix(\"WorkSpec\")"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;-><init>(I)V

    sput-object v0, Landroidx/work/impl/model/WorkSpec;->WORK_INFO_MAPPER:Lcom/motorola/camera/fsm/camera/states/CameraFsmFactory$$ExternalSyntheticLambda0;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIIJIILjava/lang/String;)V
    .locals 4

    move-object/from16 v0, p13

    move/from16 v1, p15

    move/from16 v2, p25

    const-string v3, "id"

    invoke-static {p1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "state"

    invoke-static {p2, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v3, "workerClassName"

    invoke-static {p3, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "inputMergerClassName"

    invoke-static {p4, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "input"

    invoke-static {p5, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "output"

    invoke-static {p6, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "constraints"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v3, "backoffPolicy"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string v3, "outOfQuotaPolicy"

    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    .line 4
    iput-object p3, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    .line 7
    iput-object p6, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    .line 8
    iput-wide p7, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    .line 9
    iput-wide p9, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide p1, p11

    .line 10
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    .line 11
    iput-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    move/from16 p1, p14

    .line 12
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    .line 13
    iput v1, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    move-wide/from16 p1, p16

    .line 14
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 p1, p18

    .line 15
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 p1, p20

    .line 16
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 p1, p22

    .line 17
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    move/from16 p1, p24

    .line 18
    iput-boolean p1, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    .line 19
    iput v2, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    move/from16 p1, p26

    .line 20
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 p1, p27

    .line 21
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    move-wide/from16 p1, p28

    .line 22
    iput-wide p1, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    move/from16 p1, p30

    .line 23
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    move/from16 p1, p31

    .line 24
    iput p1, p0, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    move-object/from16 p1, p32

    .line 25
    iput-object p1, p0, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIJIILjava/lang/String;I)V
    .locals 35

    move/from16 v0, p32

    and-int/lit8 v1, v0, 0x2

    if-eqz v1, :cond_0

    .line 26
    sget-object v1, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    move-object v4, v1

    goto :goto_0

    :cond_0
    move-object/from16 v4, p2

    :goto_0
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_1

    .line 27
    const-class v1, Landroidx/work/OverwritingInputMerger;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    move-object v6, v1

    goto :goto_1

    :cond_1
    move-object/from16 v6, p4

    :goto_1
    and-int/lit8 v1, v0, 0x10

    if-eqz v1, :cond_2

    .line 28
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    move-object v7, v1

    goto :goto_2

    :cond_2
    move-object/from16 v7, p5

    :goto_2
    and-int/lit8 v1, v0, 0x20

    if-eqz v1, :cond_3

    .line 29
    sget-object v1, Landroidx/work/Data;->EMPTY:Landroidx/work/Data;

    move-object v8, v1

    goto :goto_3

    :cond_3
    move-object/from16 v8, p6

    :goto_3
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_4

    const-wide/16 v9, 0x0

    goto :goto_4

    :cond_4
    move-wide/from16 v9, p7

    :goto_4
    and-int/lit16 v1, v0, 0x80

    if-eqz v1, :cond_5

    const-wide/16 v11, 0x0

    goto :goto_5

    :cond_5
    move-wide/from16 v11, p9

    :goto_5
    and-int/lit16 v1, v0, 0x100

    if-eqz v1, :cond_6

    const-wide/16 v13, 0x0

    goto :goto_6

    :cond_6
    move-wide/from16 v13, p11

    :goto_6
    and-int/lit16 v1, v0, 0x200

    if-eqz v1, :cond_7

    .line 30
    sget-object v1, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    move-object v15, v1

    goto :goto_7

    :cond_7
    move-object/from16 v15, p13

    :goto_7
    and-int/lit16 v1, v0, 0x400

    if-eqz v1, :cond_8

    const/16 v16, 0x0

    goto :goto_8

    :cond_8
    move/from16 v16, p14

    :goto_8
    and-int/lit16 v1, v0, 0x800

    const/16 v17, 0x1

    if-eqz v1, :cond_9

    move/from16 v1, v17

    goto :goto_9

    :cond_9
    move/from16 v1, p15

    :goto_9
    and-int/lit16 v2, v0, 0x1000

    if-eqz v2, :cond_a

    const-wide/16 v2, 0x7530

    move-wide/from16 v18, v2

    goto :goto_a

    :cond_a
    move-wide/from16 v18, p16

    :goto_a
    and-int/lit16 v2, v0, 0x2000

    const-wide/16 v20, -0x1

    if-eqz v2, :cond_b

    move-wide/from16 v2, v20

    goto :goto_b

    :cond_b
    move-wide/from16 v2, p18

    :goto_b
    and-int/lit16 v5, v0, 0x4000

    if-eqz v5, :cond_c

    const-wide/16 v22, 0x0

    goto :goto_c

    :cond_c
    move-wide/from16 v22, p20

    :goto_c
    const v5, 0x8000

    and-int/2addr v5, v0

    if-eqz v5, :cond_d

    move-wide/from16 v24, v20

    goto :goto_d

    :cond_d
    move-wide/from16 v24, p22

    :goto_d
    const/high16 v5, 0x10000

    and-int/2addr v5, v0

    if-eqz v5, :cond_e

    const/16 v26, 0x0

    goto :goto_e

    :cond_e
    move/from16 v26, p24

    :goto_e
    const/high16 v5, 0x20000

    and-int/2addr v5, v0

    if-eqz v5, :cond_f

    move/from16 v27, v17

    goto :goto_f

    :cond_f
    move/from16 v27, p25

    :goto_f
    const/high16 v5, 0x40000

    and-int/2addr v5, v0

    if-eqz v5, :cond_10

    const/16 v28, 0x0

    goto :goto_10

    :cond_10
    move/from16 v28, p26

    :goto_10
    const/high16 v5, 0x100000

    and-int/2addr v5, v0

    if-eqz v5, :cond_11

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v30, v20

    goto :goto_11

    :cond_11
    move-wide/from16 v30, p27

    :goto_11
    const/high16 v5, 0x200000

    and-int/2addr v5, v0

    if-eqz v5, :cond_12

    const/16 v32, 0x0

    goto :goto_12

    :cond_12
    move/from16 v32, p29

    :goto_12
    const/high16 v5, 0x400000

    and-int/2addr v5, v0

    if-eqz v5, :cond_13

    const/16 v5, -0x100

    move/from16 v33, v5

    goto :goto_13

    :cond_13
    move/from16 v33, p30

    :goto_13
    const/high16 v5, 0x800000

    and-int/2addr v0, v5

    if-eqz v0, :cond_14

    const/4 v0, 0x0

    move-object/from16 v34, v0

    goto :goto_14

    :cond_14
    move-object/from16 v34, p31

    :goto_14
    const/16 v29, 0x0

    move-object/from16 v5, p3

    move/from16 v17, v1

    move-wide/from16 v20, v2

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    .line 31
    invoke-direct/range {v2 .. v34}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIIJIILjava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 34

    const-string v0, "id"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerClassName_"

    move-object/from16 v4, p2

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v16, 0x0

    const/16 v26, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    const-wide/16 v21, 0x0

    const-wide/16 v23, 0x0

    const/16 v25, 0x0

    const/16 v27, 0x0

    const-wide/16 v28, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const v33, 0xfffffa

    move-object/from16 v1, p0

    .line 32
    invoke-direct/range {v1 .. v33}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIJIILjava/lang/String;I)V

    return-void
.end method

.method public static copy$default(Landroidx/work/impl/model/WorkSpec;Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Landroidx/work/Data;IJIIJII)Landroidx/work/impl/model/WorkSpec;
    .locals 36

    move-object/from16 v0, p0

    move/from16 v1, p13

    and-int/lit8 v2, v1, 0x1

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    move-object v4, v2

    goto :goto_0

    :cond_0
    move-object/from16 v4, p1

    :goto_0
    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_1

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    move-object v5, v2

    goto :goto_1

    :cond_1
    move-object/from16 v5, p2

    :goto_1
    and-int/lit8 v2, v1, 0x4

    if-eqz v2, :cond_2

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    move-object v6, v2

    goto :goto_2

    :cond_2
    move-object/from16 v6, p3

    :goto_2
    iget-object v7, v0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    and-int/lit8 v2, v1, 0x10

    if-eqz v2, :cond_3

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    move-object v8, v2

    goto :goto_3

    :cond_3
    move-object/from16 v8, p4

    :goto_3
    iget-object v9, v0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v12, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v14, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-object v2, v0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    and-int/lit16 v3, v1, 0x400

    if-eqz v3, :cond_4

    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    move/from16 v17, v3

    goto :goto_4

    :cond_4
    move/from16 v17, p5

    :goto_4
    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    move-wide/from16 v18, v10

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    move-wide/from16 v20, v10

    and-int/lit16 v10, v1, 0x2000

    if-eqz v10, :cond_5

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    move-wide/from16 p1, v10

    goto :goto_5

    :cond_5
    move-wide/from16 p1, p6

    :goto_5
    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    move-wide/from16 v23, v10

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-boolean v1, v0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    move/from16 v27, v1

    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    const/high16 v16, 0x40000

    and-int v16, p13, v16

    move-wide/from16 v25, v10

    if-eqz v16, :cond_6

    iget v10, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move/from16 v29, v10

    goto :goto_6

    :cond_6
    move/from16 v29, p8

    :goto_6
    const/high16 v10, 0x80000

    and-int v10, p13, v10

    if-eqz v10, :cond_7

    iget v10, v0, Landroidx/work/impl/model/WorkSpec;->generation:I

    move/from16 v30, v10

    goto :goto_7

    :cond_7
    move/from16 v30, p9

    :goto_7
    const/high16 v10, 0x100000

    and-int v10, p13, v10

    if-eqz v10, :cond_8

    iget-wide v10, v0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    move-wide/from16 v31, v10

    goto :goto_8

    :cond_8
    move-wide/from16 v31, p10

    :goto_8
    const/high16 v10, 0x200000

    and-int v10, p13, v10

    if-eqz v10, :cond_9

    iget v10, v0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    move/from16 v33, v10

    goto :goto_9

    :cond_9
    move/from16 v33, p12

    :goto_9
    iget v10, v0, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    iget-object v11, v0, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v0, "id"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "state"

    invoke-static {v5, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string/jumbo v0, "workerClassName"

    invoke-static {v6, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "inputMergerClassName"

    invoke-static {v7, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "input"

    invoke-static {v8, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "output"

    invoke-static {v9, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constraints"

    invoke-static {v2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backoffPolicy"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    const-string v0, "outOfQuotaPolicy"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/Intrinsics$$ExternalSyntheticCheckNotZero0;->m(ILjava/lang/String;)V

    move/from16 v34, v10

    move-object/from16 v35, v11

    move-wide/from16 v10, v18

    move/from16 v18, v3

    new-instance v3, Landroidx/work/impl/model/WorkSpec;

    move/from16 v28, v1

    move-object/from16 v16, v2

    move-wide/from16 v19, v20

    move-wide/from16 v21, p1

    invoke-direct/range {v3 .. v35}, Landroidx/work/impl/model/WorkSpec;-><init>(Ljava/lang/String;Landroidx/work/WorkInfo$State;Ljava/lang/String;Ljava/lang/String;Landroidx/work/Data;Landroidx/work/Data;JJJLandroidx/work/Constraints;IIJJJJZIIIJIILjava/lang/String;)V

    return-object v3
.end method


# virtual methods
.method public final calculateNextRunTime()J
    .locals 19

    move-object/from16 v0, p0

    iget-object v1, v0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    sget-object v2, Landroidx/work/WorkInfo$State;->ENQUEUED:Landroidx/work/WorkInfo$State;

    if-ne v1, v2, :cond_0

    iget v1, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v2, v1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :goto_1
    iget v3, v0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v4, v0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    iget-wide v5, v0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v7, v0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-virtual {v0}, Landroidx/work/impl/model/WorkSpec;->isPeriodic()Z

    move-result v10

    iget-wide v11, v0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v13, v0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    move v9, v2

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    move-wide v15, v1

    iget-wide v1, v0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    iget v0, v0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    move-wide/from16 v17, v1

    move v2, v9

    move v9, v0

    invoke-static/range {v2 .. v18}, Landroidx/work/impl/model/WorkSpec$Companion;->calculateNextRunTime(ZIIJJIZJJJJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    if-ne p0, p1, :cond_0

    goto/16 :goto_1

    :cond_0
    instance-of v0, p1, Landroidx/work/impl/model/WorkSpec;

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    check-cast p1, Landroidx/work/impl/model/WorkSpec;

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    if-eq v0, v1, :cond_3

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    goto/16 :goto_0

    :cond_8
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_9

    goto/16 :goto_0

    :cond_9
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    iget-object v1, p1, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    if-eq v0, v1, :cond_c

    goto/16 :goto_0

    :cond_c
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    if-eq v0, v1, :cond_d

    goto/16 :goto_0

    :cond_d
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_e

    goto :goto_0

    :cond_e
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_f

    goto :goto_0

    :cond_f
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    goto :goto_0

    :cond_10
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_11

    goto :goto_0

    :cond_11
    iget-boolean v0, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    iget-boolean v1, p1, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    if-eq v0, v1, :cond_12

    goto :goto_0

    :cond_12
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    if-eq v0, v1, :cond_13

    goto :goto_0

    :cond_13
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    if-eq v0, v1, :cond_14

    goto :goto_0

    :cond_14
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->generation:I

    if-eq v0, v1, :cond_15

    goto :goto_0

    :cond_15
    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    iget-wide v2, p1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_16

    goto :goto_0

    :cond_16
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    if-eq v0, v1, :cond_17

    goto :goto_0

    :cond_17
    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    iget v1, p1, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    if-eq v0, v1, :cond_18

    goto :goto_0

    :cond_18
    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    iget-object p1, p1, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_19

    :goto_0
    const/4 p0, 0x0

    return p0

    :cond_19
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public final hasConstraints()Z
    .locals 1

    sget-object v0, Landroidx/work/Constraints;->NONE:Landroidx/work/Constraints;

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public final hashCode()I
    .locals 5

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x1f

    mul-int/2addr v0, v1

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->state:Landroidx/work/WorkInfo$State;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->workerClassName:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->inputMergerClassName:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IILjava/lang/String;)I

    move-result v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->input:Landroidx/work/Data;

    invoke-virtual {v2}, Landroidx/work/Data;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-object v0, p0, Landroidx/work/impl/model/WorkSpec;->output:Landroidx/work/Data;

    invoke-virtual {v0}, Landroidx/work/Data;->hashCode()I

    move-result v0

    add-int/2addr v0, v2

    mul-int/2addr v0, v1

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->initialDelay:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->flexDuration:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-object v2, p0, Landroidx/work/impl/model/WorkSpec;->constraints:Landroidx/work/Constraints;

    invoke-virtual {v2}, Landroidx/work/Constraints;->hashCode()I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->runAttemptCount:I

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->backoffPolicy:I

    invoke-static {v2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget-wide v3, p0, Landroidx/work/impl/model/WorkSpec;->backoffDelayDuration:J

    invoke-static {v3, v4, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->lastEnqueueTime:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->minimumRetentionDuration:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->scheduleRequestedAt:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget-boolean v2, p0, Landroidx/work/impl/model/WorkSpec;->expedited:Z

    invoke-static {v0, v1, v2}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(IIZ)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->outOfQuotaPolicy:I

    invoke-static {v2}, Landroidx/compose/material3/tokens/ColorSchemeKeyTokens$EnumUnboxingSharedUtility;->ordinal(I)I

    move-result v2

    add-int/2addr v2, v0

    mul-int/2addr v2, v1

    iget v0, p0, Landroidx/work/impl/model/WorkSpec;->periodCount:I

    invoke-static {v0, v2, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->generation:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-wide v2, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverride:J

    invoke-static {v2, v3, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(JII)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->nextScheduleTimeOverrideGeneration:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget v2, p0, Landroidx/work/impl/model/WorkSpec;->stopReason:I

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(III)I

    move-result v0

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->traceTag:Ljava/lang/String;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public final isPeriodic()Z
    .locals 4

    iget-wide v0, p0, Landroidx/work/impl/model/WorkSpec;->intervalDuration:J

    const-wide/16 v2, 0x0

    cmp-long p0, v0, v2

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "{WorkSpec: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p0, p0, Landroidx/work/impl/model/WorkSpec;->id:Ljava/lang/String;

    const/16 v1, 0x7d

    invoke-static {v0, p0, v1}, Landroidx/compose/runtime/Anchor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
