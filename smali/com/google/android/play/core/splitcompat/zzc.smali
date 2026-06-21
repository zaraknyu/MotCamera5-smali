.class public final Lcom/google/android/play/core/splitcompat/zzc;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    iput p1, p0, Lcom/google/android/play/core/splitcompat/zzc;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1

    iget p0, p0, Lcom/google/android/play/core/splitcompat/zzc;->$r8$classId:I

    packed-switch p0, :pswitch_data_0

    new-instance p0, Ljava/lang/Thread;

    sget-object v0, Lcom/motorola/camera/instrumentreport/MeasureKpi;->mKpiList:Ljava/util/List;

    const-string v0, "MeasureKpi"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_0
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "ReportFragment"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_1
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "CalibrationDataFragment"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    :pswitch_2
    new-instance p0, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;

    invoke-direct {p0, p1}, Landroidx/core/provider/RequestExecutor$DefaultThreadFactory$ProcessPriorityThread;-><init>(Ljava/lang/Runnable;)V

    return-object p0

    :pswitch_3
    new-instance p0, Ljava/lang/Thread;

    const-string v0, "SplitCompatBackgroundThread"

    invoke-direct {p0, p1, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
