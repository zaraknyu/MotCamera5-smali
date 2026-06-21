.class public final Landroidx/core/app/JobIntentService$JobWorkEnqueuer;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public mHasJobId:Z

.field public mJobId:I

.field public final mJobInfo:Landroid/app/job/JobInfo;

.field public final mJobScheduler:Landroid/app/job/JobScheduler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->ensureJobId()V

    new-instance v0, Landroid/app/job/JobInfo$Builder;

    const/16 v1, 0x64

    invoke-direct {v0, v1, p2}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    iput-object p2, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobInfo:Landroid/app/job/JobInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "jobscheduler"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    iput-object p1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobScheduler:Landroid/app/job/JobScheduler;

    return-void
.end method


# virtual methods
.method public final ensureJobId()V
    .locals 3

    iget-boolean v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mHasJobId:Z

    const/16 v1, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mHasJobId:Z

    iput v1, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobId:I

    return-void

    :cond_0
    iget v0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobId:I

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Given job ID 100 is different than previous "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget p0, p0, Landroidx/core/app/JobIntentService$JobWorkEnqueuer;->mJobId:I

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
